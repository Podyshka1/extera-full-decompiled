package org.telegram.messenger;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import j$.net.URLEncoder;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import org.telegram.tgnet.TLRPC;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes.dex */
public class FileStreamLoadOperation implements DataSource, FileLoadOperationStream {
    public static final ConcurrentHashMap<Long, FileStreamLoadOperation> allStreams = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<Long, Integer> priorityMap = new ConcurrentHashMap<>();
    private long bytesRemaining;
    private long bytesTransferred;
    private CountDownLatch countDownLatch;
    private int currentAccount;
    File currentFile;
    private long currentOffset;
    private DataSpec dataSpec;
    private TLRPC.Document document;
    private RandomAccessFile file;
    protected boolean isNetwork;
    private int listenerCount;
    private final ArrayList<TransferListener> listeners;
    private FileLoadOperation loadOperation;
    private boolean opened;
    private Object parentObject;
    private long requestedLength;
    private Uri uri;

    @Override // androidx.media3.datasource.DataSource
    public /* bridge */ /* synthetic */ Map getResponseHeaders() {
        return super.getResponseHeaders();
    }

    public FileStreamLoadOperation() {
        this.isNetwork = true;
        this.listeners = new ArrayList<>(1);
    }

    @Deprecated
    public FileStreamLoadOperation(TransferListener transferListener) {
        this();
        if (transferListener != null) {
            addTransferListener(transferListener);
        }
    }

    public static int getStreamPrioriy(TLRPC.Document document) {
        Integer num;
        if (document == null || (num = priorityMap.get(Long.valueOf(document.id))) == null) {
            return 3;
        }
        return num.intValue();
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) {
        this.uri = dataSpec.uri;
        transferInitializing(dataSpec);
        int i = Utilities.parseInt((CharSequence) this.uri.getQueryParameter("account"));
        this.currentAccount = i;
        this.parentObject = FileLoader.getInstance(i).getParentObject(Utilities.parseInt((CharSequence) this.uri.getQueryParameter("rid")));
        TLRPC.TL_document tL_document = new TLRPC.TL_document();
        this.document = tL_document;
        tL_document.access_hash = Utilities.parseLong(this.uri.getQueryParameter("hash")).longValue();
        this.document.id = Utilities.parseLong(this.uri.getQueryParameter("id")).longValue();
        this.document.size = Utilities.parseLong(this.uri.getQueryParameter("size")).longValue();
        this.document.dc_id = Utilities.parseInt((CharSequence) this.uri.getQueryParameter("dc"));
        this.document.mime_type = this.uri.getQueryParameter("mime");
        this.document.file_reference = Utilities.hexToBytes(this.uri.getQueryParameter("reference"));
        TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = new TLRPC.TL_documentAttributeFilename();
        tL_documentAttributeFilename.file_name = this.uri.getQueryParameter("name");
        this.document.attributes.add(tL_documentAttributeFilename);
        boolean zStartsWith = this.document.mime_type.startsWith(MediaStreamTrack.VIDEO_TRACK_KIND);
        TLRPC.Document document = this.document;
        if (zStartsWith) {
            document.attributes.add(new TLRPC.TL_documentAttributeVideo());
        } else if (document.mime_type.startsWith(MediaStreamTrack.AUDIO_TRACK_KIND)) {
            this.document.attributes.add(new TLRPC.TL_documentAttributeAudio());
        }
        allStreams.put(Long.valueOf(this.document.id), this);
        this.currentOffset = dataSpec.position;
        this.requestedLength = dataSpec.length;
        this.loadOperation = FileLoader.getInstance(this.currentAccount).loadStreamFile(this, this.document, null, this.parentObject, this.currentOffset, false, getCurrentPriority());
        this.bytesTransferred = 0L;
        long j = this.document.size - dataSpec.position;
        this.bytesRemaining = j;
        long j2 = this.requestedLength;
        if (j2 != -1) {
            this.bytesRemaining = Math.min(j, j2);
        }
        this.opened = true;
        transferStarted(dataSpec);
        FileLoadOperation fileLoadOperation = this.loadOperation;
        if (fileLoadOperation != null) {
            File currentFile = fileLoadOperation.getCurrentFile();
            this.currentFile = currentFile;
            if (currentFile != null) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.currentFile, "r");
                    this.file = randomAccessFile;
                    randomAccessFile.seek(this.currentOffset);
                    if (this.loadOperation.isFinished()) {
                        this.isNetwork = false;
                        long length = this.currentFile.length() - this.currentOffset;
                        this.bytesRemaining = length;
                        long j3 = this.requestedLength;
                        if (j3 != -1) {
                            this.bytesRemaining = Math.min(length, j3 - this.bytesTransferred);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        FileLog.m1038e("FileStreamLoadOperation " + this.document.id + " open operation=" + this.loadOperation + " currentFile=" + this.currentFile + " file=" + this.file + " bytesRemaining=" + this.bytesRemaining + " me=" + this);
        FileLog.m1038e("FileStreamLoadOperation " + this.document.id + " " + MessageObject.getVideoWidth(this.document) + "x" + MessageObject.getVideoWidth(this.document) + " mime_type=" + this.document.mime_type + " codec=" + MessageObject.getVideoCodec(this.document) + " size=" + this.document.size);
        return this.bytesRemaining;
    }

    private int getCurrentPriority() {
        Integer orDefault = priorityMap.getOrDefault(Long.valueOf(this.document.id), null);
        if (orDefault != null) {
            return orDefault.intValue();
        }
        return 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b A[Catch: Exception -> 0x0130, InterruptedException -> 0x0138, TryCatch #4 {InterruptedException -> 0x0138, Exception -> 0x0130, blocks: (B:14:0x0017, B:18:0x001f, B:20:0x002d, B:22:0x0051, B:23:0x0056, B:25:0x005a, B:27:0x0062, B:29:0x006c, B:31:0x0074, B:33:0x0078, B:34:0x008c, B:37:0x0093, B:45:0x00cf, B:47:0x00d7, B:49:0x00df, B:51:0x0108, B:16:0x001b, B:53:0x0110, B:56:0x0116, B:58:0x011c, B:39:0x0097, B:41:0x00b0, B:43:0x00c5), top: B:71:0x0017, inners: #3 }] */
    @Override // androidx.media3.common.DataReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] bArr, int i, int i2) throws IOException {
        FileStreamLoadOperation fileStreamLoadOperation;
        RandomAccessFile randomAccessFile;
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j < i2) {
            i2 = (int) j;
        }
        int i3 = 0;
        while (true) {
            if (i3 == 0) {
                try {
                    if (!this.opened) {
                        randomAccessFile = this.file;
                        if (randomAccessFile != null) {
                            break;
                        }
                    }
                } catch (InterruptedException e) {
                    FileLog.m1040e(e);
                    return -3;
                } catch (Exception e2) {
                    throw new IOException(e2);
                }
            }
            i3 = (int) this.loadOperation.getDownloadedLengthFromOffset(this.currentOffset, i2)[0];
            if (i3 == 0) {
                this.countDownLatch = new CountDownLatch(1);
                FileStreamLoadOperation fileStreamLoadOperation2 = this;
                FileLoadOperation fileLoadOperationLoadStreamFile = FileLoader.getInstance(this.currentAccount).loadStreamFile(fileStreamLoadOperation2, this.document, null, this.parentObject, this.currentOffset, false, this.getCurrentPriority());
                fileStreamLoadOperation = fileStreamLoadOperation2;
                FileLoadOperation fileLoadOperation = fileStreamLoadOperation.loadOperation;
                if (fileLoadOperation != fileLoadOperationLoadStreamFile) {
                    fileLoadOperation.removeStreamListener(fileStreamLoadOperation);
                    fileStreamLoadOperation.loadOperation = fileLoadOperationLoadStreamFile;
                }
                CountDownLatch countDownLatch = fileStreamLoadOperation.countDownLatch;
                if (countDownLatch != null) {
                    countDownLatch.await();
                    fileStreamLoadOperation.countDownLatch = null;
                }
            } else {
                fileStreamLoadOperation = this;
            }
            File currentFileFast = fileStreamLoadOperation.loadOperation.getCurrentFileFast();
            if (fileStreamLoadOperation.file == null || !Objects.equals(fileStreamLoadOperation.currentFile, currentFileFast)) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1037d("check stream file " + currentFileFast);
                }
                RandomAccessFile randomAccessFile2 = fileStreamLoadOperation.file;
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (Exception unused) {
                    }
                }
                fileStreamLoadOperation.currentFile = currentFileFast;
                if (currentFileFast != null) {
                    try {
                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(fileStreamLoadOperation.currentFile, "r");
                        fileStreamLoadOperation.file = randomAccessFile3;
                        randomAccessFile3.seek(fileStreamLoadOperation.currentOffset);
                        if (fileStreamLoadOperation.loadOperation.isFinished()) {
                            fileStreamLoadOperation.isNetwork = false;
                            long length = fileStreamLoadOperation.currentFile.length() - fileStreamLoadOperation.currentOffset;
                            fileStreamLoadOperation.bytesRemaining = length;
                            long j2 = fileStreamLoadOperation.requestedLength;
                            if (j2 != -1) {
                                fileStreamLoadOperation.bytesRemaining = Math.min(length, j2 - fileStreamLoadOperation.bytesTransferred);
                            }
                        }
                    } catch (Throwable unused2) {
                        if (fileStreamLoadOperation.loadOperation.isFinished() && !fileStreamLoadOperation.currentFile.exists()) {
                            FileLoader.getInstance(fileStreamLoadOperation.currentAccount).cancelLoadFile(fileStreamLoadOperation.loadOperation.getFileName());
                            FileLoadOperation fileLoadOperationLoadStreamFile2 = FileLoader.getInstance(fileStreamLoadOperation.currentAccount).loadStreamFile(fileStreamLoadOperation, fileStreamLoadOperation.document, null, fileStreamLoadOperation.parentObject, fileStreamLoadOperation.currentOffset, false, fileStreamLoadOperation.getCurrentPriority());
                            FileLoadOperation fileLoadOperation2 = fileStreamLoadOperation.loadOperation;
                            if (fileLoadOperation2 != fileLoadOperationLoadStreamFile2) {
                                fileLoadOperation2.removeStreamListener(fileStreamLoadOperation);
                                fileStreamLoadOperation.loadOperation = fileLoadOperationLoadStreamFile2;
                            }
                        }
                    }
                }
            }
            this = fileStreamLoadOperation;
        }
        FileStreamLoadOperation fileStreamLoadOperation3 = this;
        if (!fileStreamLoadOperation3.opened) {
            return 0;
        }
        int i4 = randomAccessFile.read(bArr, i, i3);
        if (i4 > 0) {
            long j3 = i4;
            fileStreamLoadOperation3.currentOffset += j3;
            fileStreamLoadOperation3.bytesRemaining -= j3;
            fileStreamLoadOperation3.bytesTransferred += j3;
            fileStreamLoadOperation3.bytesTransferred(i4);
        }
        return i4;
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        FileLog.m1038e("FileStreamLoadOperation " + this.document.id + " close me=" + this);
        FileLoadOperation fileLoadOperation = this.loadOperation;
        if (fileLoadOperation != null) {
            fileLoadOperation.removeStreamListener(this);
        }
        RandomAccessFile randomAccessFile = this.file;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            this.file = null;
        }
        this.uri = null;
        allStreams.remove(Long.valueOf(this.document.id));
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        CountDownLatch countDownLatch = this.countDownLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
            this.countDownLatch = null;
        }
    }

    @Override // org.telegram.messenger.FileLoadOperationStream
    public void newDataAvailable() {
        CountDownLatch countDownLatch = this.countDownLatch;
        this.countDownLatch = null;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public static void setPriorityForDocument(TLRPC.Document document, int i) {
        if (document != null) {
            priorityMap.put(Long.valueOf(document.id), Integer.valueOf(i));
        }
    }

    public static Uri prepareUri(int i, TLRPC.Document document, Object obj) {
        String attachFileName = FileLoader.getAttachFileName(document);
        File pathToAttach = FileLoader.getInstance(i).getPathToAttach(document);
        if (pathToAttach != null && pathToAttach.exists()) {
            return Uri.fromFile(pathToAttach);
        }
        try {
            StringBuilder sb = new StringBuilder("?account=");
            sb.append(i);
            sb.append("&id=");
            sb.append(document.id);
            sb.append("&hash=");
            sb.append(document.access_hash);
            sb.append("&dc=");
            sb.append(document.dc_id);
            sb.append("&size=");
            sb.append(document.size);
            sb.append("&mime=");
            sb.append(URLEncoder.encode(document.mime_type, "UTF-8"));
            sb.append("&rid=");
            sb.append(FileLoader.getInstance(i).getFileReference(obj));
            sb.append("&name=");
            sb.append(URLEncoder.encode(FileLoader.getDocumentFileName(document), "UTF-8"));
            sb.append("&reference=");
            byte[] bArr = document.file_reference;
            if (bArr == null) {
                bArr = new byte[0];
            }
            sb.append(Utilities.bytesToHex(bArr));
            return Uri.parse("tg://" + attachFileName + sb.toString());
        } catch (UnsupportedEncodingException e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        if (this.listeners.contains(transferListener)) {
            return;
        }
        this.listeners.add(transferListener);
        this.listenerCount++;
    }

    public final void transferInitializing(DataSpec dataSpec) {
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferInitializing(this, dataSpec, this.isNetwork);
        }
    }

    public final void transferStarted(DataSpec dataSpec) {
        this.dataSpec = dataSpec;
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferStart(this, dataSpec, this.isNetwork);
        }
    }

    public final void bytesTransferred(int i) {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.dataSpec);
        for (int i2 = 0; i2 < this.listenerCount; i2++) {
            this.listeners.get(i2).onBytesTransferred(this, dataSpec, this.isNetwork, i);
        }
    }

    public final void transferEnded() {
        DataSpec dataSpec = (DataSpec) Util.castNonNull(this.dataSpec);
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferEnd(this, dataSpec, this.isNetwork);
        }
        this.dataSpec = null;
    }
}
