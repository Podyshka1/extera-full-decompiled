package org.telegram.messenger;

import android.content.SharedPreferences;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.exteragram.messenger.ExteraConfig;
import java.io.File;
import java.io.FileDescriptor;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.util.ArrayList;
import okhttp3.internal.p025ws.RealWebSocket;
import okhttp3.internal.url._UrlKt;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.WriteToSocketDelegate;

/* JADX INFO: loaded from: classes.dex */
public class FileUploadOperation {
    private static final int initialRequestsBoostCount = 14;
    private static final int initialRequestsCount = 8;
    private static final int initialRequestsSlowNetworkCount = 1;
    private static final int maxUploadingKBytes = 2048;
    private static final int maxUploadingSlowNetworkKBytes = 32;
    private static final int minUploadChunkBoostSize = 512;
    private static final int minUploadChunkSize = 128;
    private static final int minUploadChunkSlowNetworkSize = 32;
    private long availableSize;
    public volatile boolean caughtPremiumFloodWait;
    private int currentAccount;
    private long currentFileId;
    private int currentPartNum;
    private int currentType;
    private int currentUploadRequetsCount;
    private FileUploadOperationDelegate delegate;
    private long estimatedSize;
    private String fileKey;
    private int fingerprint;
    private boolean forceSmallFile;
    private ArrayList<byte[]> freeRequestIvs;
    private boolean isBigFile;
    private boolean isEncrypted;
    private boolean isLastPart;

    /* JADX INFO: renamed from: iv */
    private byte[] f1589iv;
    private byte[] ivChange;
    private byte[] key;
    protected long lastProgressUpdateTime;
    private int lastSavedPartNum;
    private int maxRequestsCount;
    private boolean nextPartFirst;
    private int operationGuid;
    private SharedPreferences preferences;
    private byte[] readBuffer;
    private long readBytesCount;
    private int requestNum;
    private int saveInfoTimes;
    private boolean slowNetwork;
    private boolean started;
    private int state;
    private RandomAccessFile stream;
    private long totalFileSize;
    private int totalPartsCount;
    private boolean uploadFirstPartLater;
    private int uploadStartTime;
    private long uploadedBytesCount;
    private String uploadingFilePath;
    private int uploadChunkSize = 65536;
    public final SparseIntArray requestTokens = new SparseIntArray();
    public final ArrayList<Integer> uiRequestTokens = new ArrayList<>();
    private SparseArray<UploadCachedResult> cachedResults = new SparseArray<>();
    private boolean[] recalculatedEstimatedSize = {false, false};

    /* JADX INFO: loaded from: classes5.dex */
    public interface FileUploadOperationDelegate {
        void didChangedUploadProgress(FileUploadOperation fileUploadOperation, long j, long j2);

        void didFailedUploadingFile(FileUploadOperation fileUploadOperation);

        void didFinishUploadingFile(FileUploadOperation fileUploadOperation, TLRPC.InputFile inputFile, TLRPC.InputEncryptedFile inputEncryptedFile, byte[] bArr, byte[] bArr2);
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class UploadCachedResult {
        private long bytesOffset;

        /* JADX INFO: renamed from: iv */
        private byte[] f1590iv;

        private UploadCachedResult() {
        }
    }

    public FileUploadOperation(int i, String str, boolean z, long j, int i2) {
        this.currentAccount = i;
        this.uploadingFilePath = str;
        this.isEncrypted = z;
        this.estimatedSize = j;
        this.currentType = i2;
        this.uploadFirstPartLater = (j == 0 || z) ? false : true;
    }

    public long getTotalFileSize() {
        return this.totalFileSize;
    }

    public void setDelegate(FileUploadOperationDelegate fileUploadOperationDelegate) {
        this.delegate = fileUploadOperationDelegate;
    }

    public void start() {
        if (this.state != 0) {
            return;
        }
        this.state = 1;
        AutoDeleteMediaTask.lockFile(this.uploadingFilePath);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$start$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0() {
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("uploadinfo", 0);
        this.slowNetwork = ApplicationLoader.isConnectionSlow();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("start upload on slow network = " + this.slowNetwork);
        }
        int i = this.slowNetwork ? 1 : ExteraConfig.uploadSpeedBoost ? 14 : 8;
        for (int i2 = 0; i2 < i; i2++) {
            startUploadRequest();
        }
    }

    protected void onNetworkChanged(final boolean z) {
        if (this.state != 1) {
            return;
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onNetworkChanged$1(z);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onNetworkChanged$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNetworkChanged$1(boolean z) {
        if (this.slowNetwork != z) {
            this.slowNetwork = z;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("network changed to slow = " + this.slowNetwork);
            }
            int i = 0;
            while (true) {
                if (i >= this.requestTokens.size()) {
                    break;
                }
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestTokens.valueAt(i), true);
                i++;
            }
            this.requestTokens.clear();
            cleanup();
            this.isLastPart = false;
            this.nextPartFirst = false;
            this.requestNum = 0;
            this.currentPartNum = 0;
            this.readBytesCount = 0L;
            this.uploadedBytesCount = 0L;
            this.saveInfoTimes = 0;
            this.key = null;
            this.f1589iv = null;
            this.ivChange = null;
            this.currentUploadRequetsCount = 0;
            this.lastSavedPartNum = 0;
            this.uploadFirstPartLater = false;
            this.cachedResults.clear();
            this.operationGuid++;
            int i2 = this.slowNetwork ? 1 : ExteraConfig.uploadSpeedBoost ? 14 : 8;
            for (int i3 = 0; i3 < i2; i3++) {
                startUploadRequest();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNetworkChanged$2() {
        this.uiRequestTokens.clear();
    }

    public void cancel() {
        if (this.state == 3) {
            return;
        }
        this.state = 2;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancel$3();
            }
        });
        AutoDeleteMediaTask.unlockFile(this.uploadingFilePath);
        this.delegate.didFailedUploadingFile(this);
        cleanup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$3() {
        for (int i = 0; i < this.requestTokens.size(); i++) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestTokens.valueAt(i), true);
        }
    }

    private void cleanup() {
        if (this.preferences == null) {
            this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("uploadinfo", 0);
        }
        this.preferences.edit().remove(this.fileKey + "_time").remove(this.fileKey + "_size").remove(this.fileKey + "_uploaded").remove(this.fileKey + "_id").remove(this.fileKey + "_iv").remove(this.fileKey + "_key").remove(this.fileKey + "_ivc").apply();
        try {
            RandomAccessFile randomAccessFile = this.stream;
            if (randomAccessFile != null) {
                randomAccessFile.close();
                this.stream = null;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AutoDeleteMediaTask.unlockFile(this.uploadingFilePath);
    }

    protected void checkNewDataAvailable(final long j, final long j2, final Float f) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkNewDataAvailable$4(f, j2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$checkNewDataAvailable$4(Float f, long j, long j2) {
        if (f != null && this.estimatedSize != 0 && j == 0) {
            boolean z = false;
            boolean z2 = true;
            if (f.floatValue() > 0.75f) {
                boolean[] zArr = this.recalculatedEstimatedSize;
                if (!zArr[0]) {
                    zArr[0] = true;
                    z = true;
                }
            }
            if (f.floatValue() > 0.95f) {
                boolean[] zArr2 = this.recalculatedEstimatedSize;
                if (zArr2[1]) {
                    z2 = z;
                } else {
                    zArr2[1] = true;
                }
                if (z2) {
                    this.estimatedSize = (long) (j2 / f.floatValue());
                }
            }
        }
        if (this.estimatedSize != 0 && j != 0) {
            this.estimatedSize = 0L;
            this.totalFileSize = j;
            calcTotalPartsCount();
            if (!this.uploadFirstPartLater && this.started) {
                storeFileUploadInfo();
            }
        }
        if (j <= 0) {
            j = j2;
        }
        this.availableSize = j;
        if (this.currentUploadRequetsCount < this.maxRequestsCount) {
            startUploadRequest();
        }
    }

    private void storeFileUploadInfo() {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putInt(this.fileKey + "_time", this.uploadStartTime);
        editorEdit.putLong(this.fileKey + "_size", this.totalFileSize);
        editorEdit.putLong(this.fileKey + "_id", this.currentFileId);
        editorEdit.remove(this.fileKey + "_uploaded");
        if (this.isEncrypted) {
            editorEdit.putString(this.fileKey + "_iv", Utilities.bytesToHex(this.f1589iv));
            editorEdit.putString(this.fileKey + "_ivc", Utilities.bytesToHex(this.ivChange));
            editorEdit.putString(this.fileKey + "_key", Utilities.bytesToHex(this.key));
        }
        editorEdit.apply();
    }

    private void calcTotalPartsCount() {
        if (this.uploadFirstPartLater) {
            if (this.isBigFile) {
                long j = this.totalFileSize;
                int i = this.uploadChunkSize;
                this.totalPartsCount = ((int) ((((j - ((long) i)) + ((long) i)) - 1) / ((long) i))) + 1;
                return;
            } else {
                long j2 = this.totalFileSize - RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                int i2 = this.uploadChunkSize;
                this.totalPartsCount = ((int) (((j2 + ((long) i2)) - 1) / ((long) i2))) + 1;
                return;
            }
        }
        long j3 = this.totalFileSize;
        int i3 = this.uploadChunkSize;
        this.totalPartsCount = (int) (((j3 + ((long) i3)) - 1) / ((long) i3));
    }

    public void setForceSmallFile() {
        this.forceSmallFile = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0302 A[Catch: Exception -> 0x0054, TryCatch #2 {Exception -> 0x0054, blocks: (B:5:0x0009, B:7:0x0016, B:13:0x004b, B:15:0x0051, B:19:0x005d, B:21:0x0061, B:23:0x006a, B:24:0x006c, B:26:0x0085, B:28:0x008e, B:29:0x0097, B:36:0x00a7, B:39:0x00c0, B:41:0x00c4, B:42:0x00c7, B:43:0x00c9, B:47:0x00d1, B:49:0x00de, B:50:0x00e8, B:52:0x00ec, B:53:0x00f6, B:57:0x0117, B:59:0x014d, B:61:0x0151, B:63:0x0159, B:65:0x015f, B:67:0x01b5, B:70:0x01ed, B:73:0x01ff, B:75:0x0202, B:77:0x0205, B:82:0x0215, B:84:0x0219, B:94:0x023b, B:97:0x0248, B:99:0x0255, B:101:0x0261, B:103:0x0265, B:105:0x026b, B:107:0x0276, B:110:0x027f, B:114:0x028c, B:115:0x0293, B:116:0x02aa, B:109:0x027d, B:134:0x0302, B:136:0x0306, B:137:0x0326, B:139:0x0332, B:141:0x0336, B:143:0x033e, B:144:0x0341, B:153:0x0378, B:155:0x0384, B:157:0x0388, B:159:0x039d, B:158:0x0396, B:163:0x03aa, B:165:0x03b2, B:168:0x03bf, B:170:0x03c3, B:172:0x03ce, B:174:0x03e1, B:179:0x03f0, B:181:0x03f4, B:183:0x03f8, B:185:0x03fe, B:187:0x0409, B:189:0x040d, B:191:0x0415, B:197:0x0428, B:201:0x0435, B:202:0x043c, B:204:0x0468, B:206:0x046c, B:208:0x0481, B:210:0x0488, B:213:0x049e, B:215:0x04a2, B:217:0x04a6, B:218:0x04b5, B:209:0x0484, B:212:0x048e, B:193:0x041c, B:195:0x0420, B:196:0x0426, B:173:0x03d8, B:175:0x03e4, B:152:0x0375, B:118:0x02b4, B:120:0x02bf, B:122:0x02db, B:124:0x02e3, B:128:0x02ec, B:129:0x02f2, B:88:0x0225, B:32:0x009e, B:18:0x0057, B:160:0x03a0, B:161:0x03a8, B:11:0x0045, B:8:0x0027, B:146:0x0345, B:149:0x0360), top: B:238:0x0009, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0384 A[Catch: Exception -> 0x0054, TryCatch #2 {Exception -> 0x0054, blocks: (B:5:0x0009, B:7:0x0016, B:13:0x004b, B:15:0x0051, B:19:0x005d, B:21:0x0061, B:23:0x006a, B:24:0x006c, B:26:0x0085, B:28:0x008e, B:29:0x0097, B:36:0x00a7, B:39:0x00c0, B:41:0x00c4, B:42:0x00c7, B:43:0x00c9, B:47:0x00d1, B:49:0x00de, B:50:0x00e8, B:52:0x00ec, B:53:0x00f6, B:57:0x0117, B:59:0x014d, B:61:0x0151, B:63:0x0159, B:65:0x015f, B:67:0x01b5, B:70:0x01ed, B:73:0x01ff, B:75:0x0202, B:77:0x0205, B:82:0x0215, B:84:0x0219, B:94:0x023b, B:97:0x0248, B:99:0x0255, B:101:0x0261, B:103:0x0265, B:105:0x026b, B:107:0x0276, B:110:0x027f, B:114:0x028c, B:115:0x0293, B:116:0x02aa, B:109:0x027d, B:134:0x0302, B:136:0x0306, B:137:0x0326, B:139:0x0332, B:141:0x0336, B:143:0x033e, B:144:0x0341, B:153:0x0378, B:155:0x0384, B:157:0x0388, B:159:0x039d, B:158:0x0396, B:163:0x03aa, B:165:0x03b2, B:168:0x03bf, B:170:0x03c3, B:172:0x03ce, B:174:0x03e1, B:179:0x03f0, B:181:0x03f4, B:183:0x03f8, B:185:0x03fe, B:187:0x0409, B:189:0x040d, B:191:0x0415, B:197:0x0428, B:201:0x0435, B:202:0x043c, B:204:0x0468, B:206:0x046c, B:208:0x0481, B:210:0x0488, B:213:0x049e, B:215:0x04a2, B:217:0x04a6, B:218:0x04b5, B:209:0x0484, B:212:0x048e, B:193:0x041c, B:195:0x0420, B:196:0x0426, B:173:0x03d8, B:175:0x03e4, B:152:0x0375, B:118:0x02b4, B:120:0x02bf, B:122:0x02db, B:124:0x02e3, B:128:0x02ec, B:129:0x02f2, B:88:0x0225, B:32:0x009e, B:18:0x0057, B:160:0x03a0, B:161:0x03a8, B:11:0x0045, B:8:0x0027, B:146:0x0345, B:149:0x0360), top: B:238:0x0009, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0345 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0213 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void startUploadRequest() {
        byte[] bArr;
        int i;
        byte[] bArr2;
        int i2;
        TLObject tLObject;
        int i3;
        boolean zIsInternalUri;
        boolean z;
        boolean z2;
        boolean z3;
        if (this.state != 1) {
            return;
        }
        try {
            this.started = true;
            if (this.stream == null) {
                File file = new File(this.uploadingFilePath);
                this.stream = new RandomAccessFile(file, "r");
                try {
                    zIsInternalUri = AndroidUtilities.isInternalUri(((Integer) FileDescriptor.class.getDeclaredMethod("getInt$", null).invoke(this.stream.getFD(), null)).intValue());
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                    zIsInternalUri = false;
                }
                if (zIsInternalUri) {
                    throw new Exception("trying to upload internal file");
                }
                long j = this.estimatedSize;
                if (j != 0) {
                    this.totalFileSize = j;
                } else {
                    this.totalFileSize = file.length();
                }
                if (!this.forceSmallFile && this.totalFileSize > 10485760) {
                    this.isBigFile = true;
                }
                long j2 = MessagesController.getInstance(this.currentAccount).uploadMaxFileParts;
                if (AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium() && this.totalFileSize > FileLoader.DEFAULT_MAX_FILE_SIZE) {
                    j2 = MessagesController.getInstance(this.currentAccount).uploadMaxFilePartsPremium;
                }
                long j3 = this.slowNetwork ? 32L : ExteraConfig.uploadSpeedBoost ? 512L : 128L;
                long j4 = this.totalFileSize;
                long j5 = j2 * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                int iMax = (int) Math.max(j3, ((j4 + j5) - 1) / j5);
                this.uploadChunkSize = iMax;
                if (1024 % iMax != 0) {
                    int i4 = 64;
                    while (this.uploadChunkSize > i4) {
                        i4 *= 2;
                    }
                    this.uploadChunkSize = i4;
                }
                this.maxRequestsCount = Math.max(1, (this.slowNetwork ? 32 : 2048) / this.uploadChunkSize);
                if (this.isEncrypted) {
                    this.freeRequestIvs = new ArrayList<>(this.maxRequestsCount);
                    for (int i5 = 0; i5 < this.maxRequestsCount; i5++) {
                        this.freeRequestIvs.add(new byte[32]);
                    }
                }
                this.uploadChunkSize *= 1024;
                calcTotalPartsCount();
                this.readBuffer = new byte[this.uploadChunkSize];
                StringBuilder sb = new StringBuilder();
                sb.append(this.uploadingFilePath);
                sb.append(this.isEncrypted ? "enc" : _UrlKt.FRAGMENT_ENCODE_SET);
                this.fileKey = Utilities.MD5(sb.toString());
                long j6 = this.preferences.getLong(this.fileKey + "_size", 0L);
                this.uploadStartTime = (int) (System.currentTimeMillis() / 1000);
                if (!this.uploadFirstPartLater && !this.nextPartFirst && this.estimatedSize == 0 && j6 == this.totalFileSize) {
                    this.currentFileId = this.preferences.getLong(this.fileKey + "_id", 0L);
                    int i6 = this.preferences.getInt(this.fileKey + "_time", 0);
                    long j7 = this.preferences.getLong(this.fileKey + "_uploaded", 0L);
                    if (this.isEncrypted) {
                        String string = this.preferences.getString(this.fileKey + "_iv", null);
                        String string2 = this.preferences.getString(this.fileKey + "_key", null);
                        if (string != null && string2 != null) {
                            this.key = Utilities.hexToBytes(string2);
                            byte[] bArrHexToBytes = Utilities.hexToBytes(string);
                            this.f1589iv = bArrHexToBytes;
                            byte[] bArr3 = this.key;
                            if (bArr3 != null && bArrHexToBytes != null && bArr3.length == 32 && bArrHexToBytes.length == 32) {
                                byte[] bArr4 = new byte[32];
                                this.ivChange = bArr4;
                                System.arraycopy(bArrHexToBytes, 0, bArr4, 0, 32);
                                z2 = false;
                                if (!z2 && i6 != 0) {
                                    boolean z4 = this.isBigFile;
                                    if ((z4 && i6 < this.uploadStartTime - 86400) || (!z4 && i6 < this.uploadStartTime - 5400.0f)) {
                                        i6 = 0;
                                    }
                                    if (i6 != 0) {
                                        if (j7 > 0) {
                                            this.readBytesCount = j7;
                                            this.currentPartNum = (int) (j7 / ((long) this.uploadChunkSize));
                                            if (!z4) {
                                                int i7 = 0;
                                                while (true) {
                                                    z3 = z2;
                                                    if (i7 >= this.readBytesCount / ((long) this.uploadChunkSize)) {
                                                        break;
                                                    }
                                                    int i8 = this.stream.read(this.readBuffer);
                                                    int i9 = (!this.isEncrypted || i8 % 16 == 0) ? 0 : 16 - (i8 % 16);
                                                    int i10 = i8 + i9;
                                                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i10);
                                                    if (i8 != this.uploadChunkSize || this.totalPartsCount == this.currentPartNum + 1) {
                                                        this.isLastPart = true;
                                                    }
                                                    int i11 = 0;
                                                    nativeByteBuffer.writeBytes(this.readBuffer, 0, i8);
                                                    if (this.isEncrypted) {
                                                        int i12 = 0;
                                                        while (i12 < i9) {
                                                            nativeByteBuffer.writeByte(i11);
                                                            i12++;
                                                            i11 = 0;
                                                        }
                                                        Utilities.aesIgeEncryption(nativeByteBuffer.buffer, this.key, this.ivChange, true, true, 0, i10);
                                                    }
                                                    nativeByteBuffer.reuse();
                                                    i7++;
                                                    z2 = z3;
                                                }
                                            } else {
                                                z3 = z2;
                                                this.stream.seek(j7);
                                                if (this.isEncrypted) {
                                                    bArr = null;
                                                    String string3 = this.preferences.getString(this.fileKey + "_ivc", null);
                                                    if (string3 != null) {
                                                        byte[] bArrHexToBytes2 = Utilities.hexToBytes(string3);
                                                        this.ivChange = bArrHexToBytes2;
                                                        if (bArrHexToBytes2 == null || bArrHexToBytes2.length != 32) {
                                                            this.readBytesCount = 0L;
                                                            this.currentPartNum = 0;
                                                        }
                                                    } else {
                                                        this.readBytesCount = 0L;
                                                        this.currentPartNum = 0;
                                                    }
                                                }
                                                z = z3;
                                                if (z) {
                                                }
                                                if (this.isEncrypted) {
                                                }
                                                this.uploadedBytesCount = this.readBytesCount;
                                                this.lastSavedPartNum = this.currentPartNum;
                                                if (this.uploadFirstPartLater) {
                                                }
                                            }
                                        }
                                        z = true;
                                        if (z) {
                                        }
                                        if (this.isEncrypted) {
                                        }
                                        this.uploadedBytesCount = this.readBytesCount;
                                        this.lastSavedPartNum = this.currentPartNum;
                                        if (this.uploadFirstPartLater) {
                                        }
                                    } else {
                                        z3 = z2;
                                    }
                                    bArr = null;
                                    z = z3;
                                    if (z) {
                                    }
                                    if (this.isEncrypted) {
                                    }
                                    this.uploadedBytesCount = this.readBytesCount;
                                    this.lastSavedPartNum = this.currentPartNum;
                                    if (this.uploadFirstPartLater) {
                                    }
                                }
                            }
                        }
                        z2 = true;
                        if (!z2) {
                            bArr = null;
                            z = true;
                            if (z) {
                            }
                            if (this.isEncrypted) {
                            }
                            this.uploadedBytesCount = this.readBytesCount;
                            this.lastSavedPartNum = this.currentPartNum;
                            if (this.uploadFirstPartLater) {
                            }
                        }
                    } else {
                        z2 = false;
                        if (!z2) {
                        }
                    }
                } else {
                    bArr = null;
                    z = true;
                    if (z) {
                        if (this.isEncrypted) {
                            byte[] bArr5 = new byte[32];
                            this.f1589iv = bArr5;
                            this.key = new byte[32];
                            this.ivChange = new byte[32];
                            Utilities.random.nextBytes(bArr5);
                            Utilities.random.nextBytes(this.key);
                            System.arraycopy(this.f1589iv, 0, this.ivChange, 0, 32);
                        }
                        this.currentFileId = Utilities.random.nextLong();
                        if (!this.nextPartFirst && !this.uploadFirstPartLater && this.estimatedSize == 0) {
                            storeFileUploadInfo();
                        }
                    }
                    if (this.isEncrypted) {
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            byte[] bArr6 = new byte[64];
                            System.arraycopy(this.key, 0, bArr6, 0, 32);
                            System.arraycopy(this.f1589iv, 0, bArr6, 32, 32);
                            byte[] bArrDigest = messageDigest.digest(bArr6);
                            for (int i13 = 0; i13 < 4; i13++) {
                                this.fingerprint |= ((bArrDigest[i13] ^ bArrDigest[i13 + 4]) & 255) << (i13 * 8);
                            }
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                    this.uploadedBytesCount = this.readBytesCount;
                    this.lastSavedPartNum = this.currentPartNum;
                    if (this.uploadFirstPartLater) {
                        if (this.isBigFile) {
                            this.stream.seek(this.uploadChunkSize);
                            this.readBytesCount = this.uploadChunkSize;
                        } else {
                            this.stream.seek(RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE);
                            this.readBytesCount = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                        }
                        this.currentPartNum = 1;
                    }
                }
            } else {
                bArr = null;
            }
            if (this.estimatedSize == 0 || this.readBytesCount + ((long) this.uploadChunkSize) <= this.availableSize) {
                if (this.nextPartFirst) {
                    this.stream.seek(0L);
                    if (this.isBigFile) {
                        i = this.stream.read(this.readBuffer);
                        i3 = 0;
                    } else {
                        i3 = 0;
                        i = this.stream.read(this.readBuffer, 0, 1024);
                    }
                    this.currentPartNum = i3;
                } else {
                    i = this.stream.read(this.readBuffer);
                }
                if (i == -1) {
                    return;
                }
                int i14 = (!this.isEncrypted || i % 16 == 0) ? 0 : 16 - (i % 16);
                int i15 = i + i14;
                NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(i15);
                if (this.nextPartFirst || i != this.uploadChunkSize || (this.estimatedSize == 0 && this.totalPartsCount == this.currentPartNum + 1)) {
                    if (this.uploadFirstPartLater) {
                        this.nextPartFirst = true;
                        this.uploadFirstPartLater = false;
                    } else {
                        this.isLastPart = true;
                    }
                }
                int i16 = 0;
                nativeByteBuffer2.writeBytes(this.readBuffer, 0, i);
                if (this.isEncrypted) {
                    int i17 = 0;
                    while (i17 < i14) {
                        nativeByteBuffer2.writeByte(i16);
                        i17++;
                        i16 = 0;
                    }
                    Utilities.aesIgeEncryption(nativeByteBuffer2.buffer, this.key, this.ivChange, true, true, 0, i15);
                    bArr2 = this.freeRequestIvs.get(0);
                    System.arraycopy(this.ivChange, 0, bArr2, 0, 32);
                    this.freeRequestIvs.remove(0);
                } else {
                    bArr2 = bArr;
                }
                if (this.isBigFile) {
                    TLRPC.TL_upload_saveBigFilePart tL_upload_saveBigFilePart = new TLRPC.TL_upload_saveBigFilePart();
                    i2 = this.currentPartNum;
                    tL_upload_saveBigFilePart.file_part = i2;
                    tL_upload_saveBigFilePart.file_id = this.currentFileId;
                    if (this.estimatedSize != 0) {
                        tL_upload_saveBigFilePart.file_total_parts = -1;
                    } else {
                        tL_upload_saveBigFilePart.file_total_parts = this.totalPartsCount;
                    }
                    tL_upload_saveBigFilePart.bytes = nativeByteBuffer2;
                    tLObject = tL_upload_saveBigFilePart;
                } else {
                    TLRPC.TL_upload_saveFilePart tL_upload_saveFilePart = new TLRPC.TL_upload_saveFilePart();
                    i2 = this.currentPartNum;
                    tL_upload_saveFilePart.file_part = i2;
                    tL_upload_saveFilePart.file_id = this.currentFileId;
                    tL_upload_saveFilePart.bytes = nativeByteBuffer2;
                    tLObject = tL_upload_saveFilePart;
                }
                TLObject tLObject2 = tLObject;
                final int i18 = i2;
                if (this.isLastPart && this.nextPartFirst) {
                    this.nextPartFirst = false;
                    this.currentPartNum = this.totalPartsCount - 1;
                    this.stream.seek(this.totalFileSize);
                }
                this.readBytesCount += (long) i;
                this.currentPartNum++;
                this.currentUploadRequetsCount++;
                final int i19 = this.requestNum;
                this.requestNum = i19 + 1;
                final long j8 = i18 + i;
                final int objectSize = tLObject2.getObjectSize() + 4;
                final int i20 = this.operationGuid;
                int i21 = this.slowNetwork ? 4 : ((i19 % 4) << 16) | 4;
                System.currentTimeMillis();
                final int[] iArr = new int[1];
                final byte[] bArr7 = bArr2;
                final int i22 = i;
                iArr[0] = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject2, new RequestDelegate() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda5
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject3, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$startUploadRequest$6(i20, iArr, objectSize, bArr7, i19, i22, i18, j8, tLObject3, tL_error);
                    }
                }, null, new WriteToSocketDelegate() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda6
                    @Override // org.telegram.tgnet.WriteToSocketDelegate
                    public final void run() {
                        this.f$0.lambda$startUploadRequest$8();
                    }
                }, this.forceSmallFile ? 4 : 0, Integer.MAX_VALUE, i21, true);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("debug_uploading:  send reqId " + iArr[0] + " " + this.uploadingFilePath + " file_part=" + i18 + " isBig=" + this.isBigFile + " file_id=" + this.currentFileId);
                }
                this.requestTokens.put(i19, iArr[0]);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startUploadRequest$9(iArr);
                    }
                });
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            this.state = 4;
            this.delegate.didFailedUploadingFile(this);
            cleanup();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$6(int i, final int[] iArr, int i2, byte[] bArr, int i3, int i4, int i5, long j, TLObject tLObject, TLRPC.TL_error tL_error) {
        long jMax;
        TLRPC.InputEncryptedFile tL_inputEncryptedFileUploaded;
        TLRPC.InputFile tL_inputFile;
        byte[] bArr2 = bArr;
        if (i != this.operationGuid) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("debug_uploading:  response reqId " + iArr[0] + " time" + this.uploadingFilePath);
        }
        int currentNetworkType = tLObject != null ? tLObject.networkType : ApplicationLoader.getCurrentNetworkType();
        int i6 = this.currentType;
        if (i6 == 50331648) {
            StatsController.getInstance(this.currentAccount).incrementSentBytesCount(currentNetworkType, 3, i2);
        } else if (i6 == 33554432) {
            StatsController.getInstance(this.currentAccount).incrementSentBytesCount(currentNetworkType, 2, i2);
        } else if (i6 == 16777216) {
            StatsController.getInstance(this.currentAccount).incrementSentBytesCount(currentNetworkType, 4, i2);
        } else if (i6 == 67108864) {
            String str = this.uploadingFilePath;
            if (str != null && (str.toLowerCase().endsWith("mp3") || this.uploadingFilePath.toLowerCase().endsWith("m4a"))) {
                StatsController.getInstance(this.currentAccount).incrementSentBytesCount(currentNetworkType, 7, i2);
            } else {
                StatsController.getInstance(this.currentAccount).incrementSentBytesCount(currentNetworkType, 5, i2);
            }
        }
        if (bArr2 != null) {
            this.freeRequestIvs.add(bArr2);
        }
        this.requestTokens.delete(i3);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startUploadRequest$5(iArr);
            }
        });
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            if (this.state != 1) {
                return;
            }
            this.uploadedBytesCount += (long) i4;
            long j2 = this.estimatedSize;
            if (j2 != 0) {
                jMax = Math.max(this.availableSize, j2);
            } else {
                jMax = this.totalFileSize;
            }
            this.delegate.didChangedUploadProgress(this, this.uploadedBytesCount, jMax);
            int i7 = this.currentUploadRequetsCount - 1;
            this.currentUploadRequetsCount = i7;
            if (this.isLastPart && i7 == 0 && this.state == 1) {
                this.state = 3;
                if (this.key == null) {
                    if (this.isBigFile) {
                        tL_inputFile = new TLRPC.TL_inputFileBig();
                    } else {
                        tL_inputFile = new TLRPC.TL_inputFile();
                        tL_inputFile.md5_checksum = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    tL_inputFile.parts = this.currentPartNum;
                    tL_inputFile.f1679id = this.currentFileId;
                    String str2 = this.uploadingFilePath;
                    tL_inputFile.name = str2.substring(str2.lastIndexOf("/") + 1);
                    this.delegate.didFinishUploadingFile(this, tL_inputFile, null, null, null);
                    cleanup();
                } else {
                    if (this.isBigFile) {
                        tL_inputEncryptedFileUploaded = new TLRPC.TL_inputEncryptedFileBigUploaded();
                    } else {
                        tL_inputEncryptedFileUploaded = new TLRPC.TL_inputEncryptedFileUploaded();
                        tL_inputEncryptedFileUploaded.md5_checksum = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    tL_inputEncryptedFileUploaded.parts = this.currentPartNum;
                    tL_inputEncryptedFileUploaded.f1678id = this.currentFileId;
                    tL_inputEncryptedFileUploaded.key_fingerprint = this.fingerprint;
                    this.delegate.didFinishUploadingFile(this, null, tL_inputEncryptedFileUploaded, this.key, this.f1589iv);
                    cleanup();
                }
                int i8 = this.currentType;
                if (i8 == 50331648) {
                    StatsController.getInstance(this.currentAccount).incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 3, 1);
                    return;
                }
                if (i8 == 33554432) {
                    StatsController.getInstance(this.currentAccount).incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 2, 1);
                    return;
                }
                if (i8 == 16777216) {
                    StatsController.getInstance(this.currentAccount).incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 4, 1);
                    return;
                }
                if (i8 == 67108864) {
                    String str3 = this.uploadingFilePath;
                    if (str3 != null && (str3.toLowerCase().endsWith("mp3") || this.uploadingFilePath.toLowerCase().endsWith("m4a"))) {
                        StatsController.getInstance(this.currentAccount).incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 7, 1);
                        return;
                    } else {
                        StatsController.getInstance(this.currentAccount).incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 5, 1);
                        return;
                    }
                }
                return;
            }
            if (i7 < this.maxRequestsCount) {
                if (this.estimatedSize == 0 && !this.uploadFirstPartLater && !this.nextPartFirst) {
                    if (this.saveInfoTimes >= 4) {
                        this.saveInfoTimes = 0;
                    }
                    int i9 = this.lastSavedPartNum;
                    if (i5 == i9) {
                        this.lastSavedPartNum = i9 + 1;
                        long j3 = j;
                        while (true) {
                            UploadCachedResult uploadCachedResult = this.cachedResults.get(this.lastSavedPartNum);
                            if (uploadCachedResult == null) {
                                break;
                            }
                            j3 = uploadCachedResult.bytesOffset;
                            bArr2 = uploadCachedResult.f1590iv;
                            this.cachedResults.remove(this.lastSavedPartNum);
                            this.lastSavedPartNum++;
                        }
                        boolean z = this.isBigFile;
                        if ((z && j3 % 1048576 == 0) || (!z && this.saveInfoTimes == 0)) {
                            SharedPreferences.Editor editorEdit = this.preferences.edit();
                            editorEdit.putLong(this.fileKey + "_uploaded", j3);
                            if (this.isEncrypted) {
                                editorEdit.putString(this.fileKey + "_ivc", Utilities.bytesToHex(bArr2));
                            }
                            editorEdit.apply();
                        }
                    } else {
                        UploadCachedResult uploadCachedResult2 = new UploadCachedResult();
                        uploadCachedResult2.bytesOffset = j;
                        if (bArr2 != null) {
                            uploadCachedResult2.f1590iv = new byte[32];
                            System.arraycopy(bArr2, 0, uploadCachedResult2.f1590iv, 0, 32);
                        }
                        this.cachedResults.put(i5, uploadCachedResult2);
                    }
                    this.saveInfoTimes++;
                }
                startUploadRequest();
                return;
            }
            return;
        }
        this.state = 4;
        this.delegate.didFailedUploadingFile(this);
        cleanup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$5(int[] iArr) {
        this.uiRequestTokens.remove(Integer.valueOf(iArr[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$8() {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileUploadOperation$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startUploadRequest$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$7() {
        if (this.currentUploadRequetsCount < this.maxRequestsCount) {
            startUploadRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startUploadRequest$9(int[] iArr) {
        this.uiRequestTokens.add(Integer.valueOf(iArr[0]));
    }
}
