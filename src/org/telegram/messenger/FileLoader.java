package org.telegram.messenger;

import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.FileUploadOperation;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
public class FileLoader extends BaseController {
    public static final long DEFAULT_MAX_FILE_SIZE = 2098200576;
    public static final long DEFAULT_MAX_FILE_SIZE_PREMIUM = 4196401152L;
    public static final int IMAGE_TYPE_ANIMATION = 2;
    public static final int IMAGE_TYPE_LOTTIE = 1;
    public static final int IMAGE_TYPE_SVG = 3;
    public static final int IMAGE_TYPE_SVG_WHITE = 4;
    public static final int IMAGE_TYPE_THEME_PREVIEW = 5;
    public static final int MEDIA_DIR_AUDIO = 1;
    public static final int MEDIA_DIR_CACHE = 4;
    public static final int MEDIA_DIR_DOCUMENT = 3;
    public static final int MEDIA_DIR_FILES = 5;
    public static final int MEDIA_DIR_IMAGE = 0;
    public static final int MEDIA_DIR_IMAGE_PUBLIC = 100;
    public static final int MEDIA_DIR_STORIES = 6;
    public static final int MEDIA_DIR_VIDEO = 2;
    public static final int MEDIA_DIR_VIDEO_PUBLIC = 101;
    public static final int PRELOAD_CACHE_TYPE = 11;
    public static final int PRIORITY_HIGH = 3;
    public static final int PRIORITY_LOW = 0;
    public static final int PRIORITY_NORMAL = 1;
    public static final int PRIORITY_NORMAL_UP = 2;
    private static final int PRIORITY_STREAM = 4;
    private static Pattern sentPattern;
    private int currentUploadOperationsCount;
    private int currentUploadSmallOperationsCount;
    private FileLoaderDelegate delegate;
    Runnable dumpFilesQueueRunnable;
    private final FilePathDatabase filePathDatabase;
    private String forceLoadingFile;
    private final FileLoaderPriorityQueue[] largeFilesQueue;
    private int lastReferenceId;
    private final ConcurrentHashMap<String, FileLoadOperation> loadOperationPaths;
    private final ConcurrentHashMap<String, LoadOperationUIObject> loadOperationPathsUI;
    private final HashMap<String, Boolean> loadingVideos;
    private final ConcurrentHashMap<Integer, WeakReference<Object>> parentObjectReferences;
    private int priorityIncreasePointer;
    private final FileLoaderPriorityQueue[] smallFilesQueue;
    private final ConcurrentHashMap<String, FileUploadOperation> uploadOperationPaths;
    private final ConcurrentHashMap<String, FileUploadOperation> uploadOperationPathsEnc;
    private final LinkedList<FileUploadOperation> uploadOperationQueue;
    private final HashMap<String, Long> uploadSizes;
    private final LinkedList<FileUploadOperation> uploadSmallOperationQueue;
    private static volatile DispatchQueue fileLoaderQueue = new DispatchQueue("fileUploadQueue");
    private static SparseArray<File> mediaDirs = null;
    private static final FileLoader[] Instance = new FileLoader[16];

    public interface FileLoaderDelegate {
        void fileDidFailedLoad(String str, int i);

        void fileDidFailedUpload(String str, boolean z);

        void fileDidLoaded(String str, File file, Object obj, int i);

        void fileDidUploaded(String str, TLRPC.InputFile inputFile, TLRPC.InputEncryptedFile inputEncryptedFile, byte[] bArr, byte[] bArr2, long j);

        void fileLoadProgressChanged(FileLoadOperation fileLoadOperation, String str, long j, long j2);

        void fileUploadProgressChanged(FileUploadOperation fileUploadOperation, String str, long j, long j2, boolean z);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface FileResolver {
        File getFile();
    }

    public static FilePathDatabase.FileMeta getFileMetadataFromParent(int i, Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (!str.startsWith("sent_")) {
                return null;
            }
            if (sentPattern == null) {
                sentPattern = Pattern.compile("sent_.*_([0-9]+)_([0-9]+)_([0-9]+)_([0-9]+)");
            }
            try {
                Matcher matcher = sentPattern.matcher(str);
                if (!matcher.matches()) {
                    return null;
                }
                FilePathDatabase.FileMeta fileMeta = new FilePathDatabase.FileMeta();
                fileMeta.messageId = Integer.parseInt(matcher.group(1));
                fileMeta.dialogId = Long.parseLong(matcher.group(2));
                fileMeta.messageType = Integer.parseInt(matcher.group(3));
                fileMeta.messageSize = Long.parseLong(matcher.group(4));
                return fileMeta;
            } catch (Exception e) {
                FileLog.m992e(e);
                return null;
            }
        }
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            FilePathDatabase.FileMeta fileMeta2 = new FilePathDatabase.FileMeta();
            fileMeta2.messageId = messageObject.getId();
            fileMeta2.dialogId = messageObject.getDialogId();
            fileMeta2.messageType = messageObject.type;
            fileMeta2.messageSize = messageObject.getSize();
            return fileMeta2;
        }
        if (!(obj instanceof TL_stories.StoryItem)) {
            return null;
        }
        FilePathDatabase.FileMeta fileMeta3 = new FilePathDatabase.FileMeta();
        fileMeta3.dialogId = ((TL_stories.StoryItem) obj).dialogId;
        fileMeta3.messageType = 23;
        return fileMeta3;
    }

    public static TLRPC.VideoSize getVectorMarkupVideoSize(TLRPC.Photo photo) {
        if (photo != null && photo.video_sizes != null) {
            for (int i = 0; i < photo.video_sizes.size(); i++) {
                TLRPC.VideoSize videoSize = photo.video_sizes.get(i);
                if ((videoSize instanceof TLRPC.TL_videoSizeEmojiMarkup) || (videoSize instanceof TLRPC.TL_videoSizeStickerMarkup)) {
                    return videoSize;
                }
            }
        }
        return null;
    }

    public static TLRPC.VideoSize getEmojiMarkup(ArrayList<TLRPC.VideoSize> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if ((arrayList.get(i) instanceof TLRPC.TL_videoSizeEmojiMarkup) || (arrayList.get(i) instanceof TLRPC.TL_videoSizeStickerMarkup)) {
                return arrayList.get(i);
            }
        }
        return null;
    }

    private int getPriorityValue(int i) {
        int i2;
        int i3;
        if (i == 4) {
            return Integer.MAX_VALUE;
        }
        if (i == 3) {
            i2 = this.priorityIncreasePointer;
            this.priorityIncreasePointer = i2 + 1;
            i3 = 1048577;
        } else {
            if (i != 2) {
                return i == 1 ? 65536 : 0;
            }
            i2 = this.priorityIncreasePointer;
            this.priorityIncreasePointer = i2 + 1;
            i3 = 65537;
        }
        return i2 + i3;
    }

    public DispatchQueue getFileLoaderQueue() {
        return fileLoaderQueue;
    }

    public void setLocalPathTo(TLObject tLObject, String str) {
        int i = 4;
        if (tLObject instanceof TLRPC.Document) {
            TLRPC.Document document = (TLRPC.Document) tLObject;
            if (document.key == null) {
                if (MessageObject.isVoiceDocument(document)) {
                    i = 1;
                } else {
                    i = MessageObject.isVideoDocument(document) ? 2 : 3;
                }
            }
            this.filePathDatabase.putPath(document.id, document.dc_id, i, 1, str);
            return;
        }
        if (tLObject instanceof TLRPC.PhotoSize) {
            TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) tLObject;
            if ((photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                return;
            }
            TLRPC.FileLocation fileLocation = photoSize.location;
            if (fileLocation != null && fileLocation.key == null && ((fileLocation.volume_id != -2147483648L || fileLocation.local_id >= 0) && photoSize.size >= 0)) {
                i = 0;
            }
            this.filePathDatabase.putPath(fileLocation.volume_id, fileLocation.dc_id + (fileLocation.local_id << 16), i, 1, str);
        }
    }

    public static FileLoader getInstance(int i) {
        FileLoader fileLoader;
        FileLoader[] fileLoaderArr = Instance;
        FileLoader fileLoader2 = fileLoaderArr[i];
        if (fileLoader2 != null) {
            return fileLoader2;
        }
        synchronized (FileLoader.class) {
            try {
                fileLoader = fileLoaderArr[i];
                if (fileLoader == null) {
                    fileLoader = new FileLoader(i);
                    fileLoaderArr[i] = fileLoader;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLoader;
    }

    public FileLoader(int i) {
        super(i);
        this.smallFilesQueue = new FileLoaderPriorityQueue[5];
        this.largeFilesQueue = new FileLoaderPriorityQueue[5];
        this.uploadOperationQueue = new LinkedList<>();
        this.uploadSmallOperationQueue = new LinkedList<>();
        this.uploadOperationPaths = new ConcurrentHashMap<>();
        this.uploadOperationPathsEnc = new ConcurrentHashMap<>();
        this.currentUploadOperationsCount = 0;
        this.currentUploadSmallOperationsCount = 0;
        this.loadOperationPaths = new ConcurrentHashMap<>();
        this.loadOperationPathsUI = new ConcurrentHashMap<>(10, 1.0f, 2);
        this.uploadSizes = new HashMap<>();
        this.loadingVideos = new HashMap<>();
        this.delegate = null;
        this.parentObjectReferences = new ConcurrentHashMap<>();
        this.dumpFilesQueueRunnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$18();
            }
        };
        this.filePathDatabase = new FilePathDatabase(i);
        int i2 = 0;
        while (true) {
            FileLoaderPriorityQueue[] fileLoaderPriorityQueueArr = this.smallFilesQueue;
            if (i2 < fileLoaderPriorityQueueArr.length) {
                StringBuilder sb = new StringBuilder("smallFilesQueue dc");
                int i3 = i2 + 1;
                sb.append(i3);
                fileLoaderPriorityQueueArr[i2] = new FileLoaderPriorityQueue(i, sb.toString(), 0, fileLoaderQueue);
                this.largeFilesQueue[i2] = new FileLoaderPriorityQueue(i, "largeFilesQueue dc" + i3, 1, fileLoaderQueue);
                i2 = i3;
            } else {
                dumpFilesQueue();
                return;
            }
        }
    }

    public static void setMediaDirs(SparseArray<File> sparseArray) {
        mediaDirs = sparseArray;
    }

    public static File checkDirectory(int i) {
        return mediaDirs.get(i);
    }

    public static File getDirectory(int i) {
        File file = mediaDirs.get(i);
        if (file == null && i != 4) {
            file = mediaDirs.get(4);
        }
        if (BuildVars.NO_SCOPED_STORAGE && file != null) {
            try {
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
            } catch (Exception unused) {
            }
        }
        return file;
    }

    public int getFileReference(Object obj) {
        int i = this.lastReferenceId;
        this.lastReferenceId = i + 1;
        this.parentObjectReferences.put(Integer.valueOf(i), new WeakReference<>(obj));
        return i;
    }

    public Object getParentObject(int i) {
        WeakReference<Object> weakReference = this.parentObjectReferences.get(Integer.valueOf(i));
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: renamed from: setLoadingVideoInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$setLoadingVideo$0(TLRPC.Document document, boolean z) {
        String attachFileName = getAttachFileName(document);
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? "p" : _UrlKt.FRAGMENT_ENCODE_SET);
        this.loadingVideos.put(sb.toString(), Boolean.TRUE);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.videoLoadingStateChanged, attachFileName);
    }

    public void setLoadingVideo(final TLRPC.Document document, final boolean z, boolean z2) {
        if (document == null) {
            return;
        }
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setLoadingVideo$0(document, z);
                }
            });
        } else {
            lambda$setLoadingVideo$0(document, z);
        }
    }

    public void setLoadingVideoForPlayer(TLRPC.Document document, boolean z) {
        if (document == null) {
            return;
        }
        String attachFileName = getAttachFileName(document);
        HashMap<String, Boolean> map = this.loadingVideos;
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? _UrlKt.FRAGMENT_ENCODE_SET : "p");
        if (map.containsKey(sb.toString())) {
            HashMap<String, Boolean> map2 = this.loadingVideos;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(attachFileName);
            sb2.append(z ? "p" : _UrlKt.FRAGMENT_ENCODE_SET);
            map2.put(sb2.toString(), Boolean.TRUE);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.videoLoadingStateChanged, attachFileName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: removeLoadingVideoInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$removeLoadingVideo$1(TLRPC.Document document, boolean z) {
        String attachFileName = getAttachFileName(document);
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? "p" : _UrlKt.FRAGMENT_ENCODE_SET);
        if (this.loadingVideos.remove(sb.toString()) != null) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.videoLoadingStateChanged, attachFileName);
        }
    }

    public void removeLoadingVideo(final TLRPC.Document document, final boolean z, boolean z2) {
        if (document == null) {
            return;
        }
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeLoadingVideo$1(document, z);
                }
            });
        } else {
            lambda$removeLoadingVideo$1(document, z);
        }
    }

    public boolean isLoadingVideo(TLRPC.Document document, boolean z) {
        if (document == null) {
            return false;
        }
        HashMap<String, Boolean> map = this.loadingVideos;
        StringBuilder sb = new StringBuilder();
        sb.append(getAttachFileName(document));
        sb.append(z ? "p" : _UrlKt.FRAGMENT_ENCODE_SET);
        return map.containsKey(sb.toString());
    }

    public boolean isLoadingVideoAny(TLRPC.Document document) {
        return isLoadingVideo(document, false) || isLoadingVideo(document, true);
    }

    public void cancelFileUpload(final String str, final boolean z) {
        if (str == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelFileUpload$2(z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelFileUpload$2(boolean z, String str) {
        FileUploadOperation fileUploadOperation;
        if (!z) {
            fileUploadOperation = this.uploadOperationPaths.get(str);
        } else {
            fileUploadOperation = this.uploadOperationPathsEnc.get(str);
        }
        this.uploadSizes.remove(str);
        if (fileUploadOperation != null) {
            this.uploadOperationPathsEnc.remove(str);
            this.uploadOperationQueue.remove(fileUploadOperation);
            this.uploadSmallOperationQueue.remove(fileUploadOperation);
            fileUploadOperation.cancel();
        }
    }

    public void checkUploadNewDataAvailable(String str, boolean z, long j, long j2) {
        checkUploadNewDataAvailable(str, z, j, j2, null);
    }

    public void checkUploadNewDataAvailable(final String str, final boolean z, final long j, final long j2, final Float f) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkUploadNewDataAvailable$3(z, str, j, j2, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUploadNewDataAvailable$3(boolean z, String str, long j, long j2, Float f) {
        FileUploadOperation fileUploadOperation;
        if (z) {
            fileUploadOperation = this.uploadOperationPathsEnc.get(str);
        } else {
            fileUploadOperation = this.uploadOperationPaths.get(str);
        }
        FileUploadOperation fileUploadOperation2 = fileUploadOperation;
        if (fileUploadOperation2 != null) {
            fileUploadOperation2.checkNewDataAvailable(j, j2, f);
        } else if (j2 != 0) {
            this.uploadSizes.put(str, Long.valueOf(j2));
        }
    }

    public void onNetworkChanged(final boolean z) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onNetworkChanged$4(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNetworkChanged$4(boolean z) {
        Iterator<Map.Entry<String, FileUploadOperation>> it = this.uploadOperationPaths.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().onNetworkChanged(z);
        }
        Iterator<Map.Entry<String, FileUploadOperation>> it2 = this.uploadOperationPathsEnc.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().onNetworkChanged(z);
        }
    }

    public void uploadFile(String str, boolean z, boolean z2, int i) {
        uploadFile(str, z, z2, 0L, i, false);
    }

    public void uploadFile(final String str, final boolean z, final boolean z2, final long j, final int i, final boolean z3) {
        if (str == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadFile$5(z, str, j, i, z3, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadFile$5(boolean z, String str, long j, int i, boolean z2, boolean z3) {
        long j2;
        if (z) {
            if (this.uploadOperationPathsEnc.containsKey(str)) {
                return;
            }
        } else if (this.uploadOperationPaths.containsKey(str)) {
            return;
        }
        if (j == 0 || this.uploadSizes.get(str) == null) {
            j2 = j;
        } else {
            this.uploadSizes.remove(str);
            j2 = 0;
        }
        FileUploadOperation fileUploadOperation = new FileUploadOperation(this.currentAccount, str, z, j2, i);
        FileLoaderDelegate fileLoaderDelegate = this.delegate;
        if (fileLoaderDelegate != null && j != 0) {
            fileLoaderDelegate.fileUploadProgressChanged(fileUploadOperation, str, 0L, j, z);
            fileUploadOperation = fileUploadOperation;
        }
        if (z) {
            this.uploadOperationPathsEnc.put(str, fileUploadOperation);
        } else {
            this.uploadOperationPaths.put(str, fileUploadOperation);
        }
        if (z2) {
            fileUploadOperation.setForceSmallFile();
        }
        fileUploadOperation.setDelegate(new C26111(z, str, z3));
        if (z3) {
            int i2 = this.currentUploadSmallOperationsCount;
            if (i2 < 1) {
                this.currentUploadSmallOperationsCount = i2 + 1;
                fileUploadOperation.start();
                return;
            } else {
                this.uploadSmallOperationQueue.add(fileUploadOperation);
                return;
            }
        }
        int i3 = this.currentUploadOperationsCount;
        if (i3 < 1) {
            this.currentUploadOperationsCount = i3 + 1;
            fileUploadOperation.start();
        } else {
            this.uploadOperationQueue.add(fileUploadOperation);
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.FileLoader$1 */
    /* JADX INFO: loaded from: classes5.dex */
    public class C26111 implements FileUploadOperation.FileUploadOperationDelegate {
        final /* synthetic */ boolean val$encrypted;
        final /* synthetic */ String val$location;
        final /* synthetic */ boolean val$small;

        public C26111(boolean z, String str, boolean z2) {
            this.val$encrypted = z;
            this.val$location = str;
            this.val$small = z2;
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didFinishUploadingFile(final FileUploadOperation fileUploadOperation, final TLRPC.InputFile inputFile, final TLRPC.InputEncryptedFile inputEncryptedFile, final byte[] bArr, final byte[] bArr2) {
            DispatchQueue dispatchQueue = FileLoader.fileLoaderQueue;
            final boolean z = this.val$encrypted;
            final String str = this.val$location;
            final boolean z2 = this.val$small;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didFinishUploadingFile$0(z, str, z2, inputFile, inputEncryptedFile, bArr, bArr2, fileUploadOperation);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishUploadingFile$0(boolean z, String str, boolean z2, TLRPC.InputFile inputFile, TLRPC.InputEncryptedFile inputEncryptedFile, byte[] bArr, byte[] bArr2, FileUploadOperation fileUploadOperation) {
            FileUploadOperation fileUploadOperation2;
            FileUploadOperation fileUploadOperation3;
            FileLoader fileLoader = FileLoader.this;
            if (z) {
                fileLoader.uploadOperationPathsEnc.remove(str);
            } else {
                fileLoader.uploadOperationPaths.remove(str);
            }
            FileLoader fileLoader2 = FileLoader.this;
            if (z2) {
                fileLoader2.currentUploadSmallOperationsCount--;
                if (FileLoader.this.currentUploadSmallOperationsCount < 1 && (fileUploadOperation3 = (FileUploadOperation) FileLoader.this.uploadSmallOperationQueue.poll()) != null) {
                    FileLoader.this.currentUploadSmallOperationsCount++;
                    fileUploadOperation3.start();
                }
            } else {
                fileLoader2.currentUploadOperationsCount--;
                if (FileLoader.this.currentUploadOperationsCount < 1 && (fileUploadOperation2 = (FileUploadOperation) FileLoader.this.uploadOperationQueue.poll()) != null) {
                    FileLoader.this.currentUploadOperationsCount++;
                    fileUploadOperation2.start();
                }
            }
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidUploaded(str, inputFile, inputEncryptedFile, bArr, bArr2, fileUploadOperation.getTotalFileSize());
            }
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didFailedUploadingFile(FileUploadOperation fileUploadOperation) {
            DispatchQueue dispatchQueue = FileLoader.fileLoaderQueue;
            final boolean z = this.val$encrypted;
            final String str = this.val$location;
            final boolean z2 = this.val$small;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didFailedUploadingFile$1(z, str, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFailedUploadingFile$1(boolean z, String str, boolean z2) {
            FileUploadOperation fileUploadOperation;
            FileUploadOperation fileUploadOperation2;
            FileLoader fileLoader = FileLoader.this;
            if (z) {
                fileLoader.uploadOperationPathsEnc.remove(str);
            } else {
                fileLoader.uploadOperationPaths.remove(str);
            }
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidFailedUpload(str, z);
            }
            FileLoader fileLoader2 = FileLoader.this;
            if (z2) {
                fileLoader2.currentUploadSmallOperationsCount--;
                if (FileLoader.this.currentUploadSmallOperationsCount >= 1 || (fileUploadOperation2 = (FileUploadOperation) FileLoader.this.uploadSmallOperationQueue.poll()) == null) {
                    return;
                }
                FileLoader.this.currentUploadSmallOperationsCount++;
                fileUploadOperation2.start();
                return;
            }
            fileLoader2.currentUploadOperationsCount--;
            if (FileLoader.this.currentUploadOperationsCount >= 1 || (fileUploadOperation = (FileUploadOperation) FileLoader.this.uploadOperationQueue.poll()) == null) {
                return;
            }
            FileLoader.this.currentUploadOperationsCount++;
            fileUploadOperation.start();
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didChangedUploadProgress(FileUploadOperation fileUploadOperation, long j, long j2) {
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileUploadProgressChanged(fileUploadOperation, this.val$location, j, j2, this.val$encrypted);
            }
        }
    }

    public void setForceStreamLoadingFile(final TLRPC.FileLocation fileLocation, final String str) {
        if (fileLocation == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setForceStreamLoadingFile$6(fileLocation, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setForceStreamLoadingFile$6(TLRPC.FileLocation fileLocation, String str) {
        String attachFileName = getAttachFileName(fileLocation, str);
        this.forceLoadingFile = attachFileName;
        FileLoadOperation fileLoadOperation = this.loadOperationPaths.get(attachFileName);
        if (fileLoadOperation != null) {
            if (fileLoadOperation.isPreloadVideoOperation()) {
                fileLoadOperation.setIsPreloadVideoOperation(false);
            }
            fileLoadOperation.setForceRequest(true);
            fileLoadOperation.setPriority(getPriorityValue(4));
            fileLoadOperation.getQueue().remove(fileLoadOperation);
            fileLoadOperation.getQueue().add(fileLoadOperation);
            fileLoadOperation.getQueue().checkLoadingOperations();
        }
    }

    public void cancelLoadFile(TLRPC.Document document) {
        cancelLoadFile(document, false);
    }

    public void cancelLoadFile(TLRPC.Document document, boolean z) {
        cancelLoadFile(document, null, null, null, null, null, z);
    }

    public void cancelLoadFile(SecureDocument secureDocument) {
        cancelLoadFile(null, secureDocument, null, null, null, null, false);
    }

    public void cancelLoadFile(WebFile webFile) {
        cancelLoadFile(null, null, webFile, null, null, null, false);
    }

    public void cancelLoadFile(TLRPC.PhotoSize photoSize) {
        cancelLoadFile(photoSize, false);
    }

    public void cancelLoadFile(TLRPC.PhotoSize photoSize, boolean z) {
        cancelLoadFile(null, null, null, photoSize.location, null, null, z);
    }

    public void cancelLoadFile(TLRPC.FileLocation fileLocation, String str) {
        cancelLoadFile(fileLocation, str, false);
    }

    public void cancelLoadFile(TLRPC.FileLocation fileLocation, String str, boolean z) {
        cancelLoadFile(null, null, null, fileLocation, str, null, z);
    }

    public void cancelLoadFile(String str) {
        cancelLoadFile(null, null, null, null, null, str, true);
    }

    public void cancelLoadFiles(ArrayList<String> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            cancelLoadFile(null, null, null, null, null, arrayList.get(i), true);
        }
    }

    private void cancelLoadFile(TLRPC.Document document, SecureDocument secureDocument, WebFile webFile, TLRPC.FileLocation fileLocation, String str, final String str2, boolean z) {
        if (fileLocation == null && document == null && webFile == null && secureDocument == null && TextUtils.isEmpty(str2)) {
            return;
        }
        if (fileLocation != null) {
            str2 = getAttachFileName(fileLocation, str);
        } else if (document != null) {
            str2 = getAttachFileName(document);
        } else if (secureDocument != null) {
            str2 = getAttachFileName(secureDocument);
        } else if (webFile != null) {
            str2 = getAttachFileName(webFile);
        }
        LoadOperationUIObject loadOperationUIObjectRemove = this.loadOperationPathsUI.remove(str2);
        Runnable runnable = loadOperationUIObjectRemove != null ? loadOperationUIObjectRemove.loadInternalRunnable : null;
        boolean z2 = loadOperationUIObjectRemove != null;
        if (runnable != null) {
            fileLoaderQueue.cancelRunnable(runnable);
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelLoadFile$7(str2);
            }
        });
        if (!z2 || document == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelLoadFile$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadFile$7(String str) {
        FileLoadOperation fileLoadOperationRemove = this.loadOperationPaths.remove(str);
        if (fileLoadOperationRemove != null) {
            fileLoadOperationRemove.getQueue().cancel(fileLoadOperationRemove);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadFile$8() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDownloadingFilesChanged, new Object[0]);
    }

    public void cancel(FileLoadOperation fileLoadOperation) {
        if (fileLoadOperation == null) {
            return;
        }
        final String fileName = fileLoadOperation.getFileName();
        LoadOperationUIObject loadOperationUIObjectRemove = this.loadOperationPathsUI.remove(fileName);
        Runnable runnable = loadOperationUIObjectRemove != null ? loadOperationUIObjectRemove.loadInternalRunnable : null;
        boolean z = loadOperationUIObjectRemove != null;
        if (runnable != null) {
            fileLoaderQueue.cancelRunnable(runnable);
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancel$9(fileName);
            }
        });
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$cancel$10();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$9(String str) {
        FileLoadOperation fileLoadOperationRemove = this.loadOperationPaths.remove(str);
        if (fileLoadOperationRemove != null) {
            fileLoadOperationRemove.getQueue().cancel(fileLoadOperationRemove);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$10() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDownloadingFilesChanged, new Object[0]);
    }

    public void changePriority(final int i, TLRPC.Document document, SecureDocument secureDocument, WebFile webFile, TLRPC.FileLocation fileLocation, String str, final String str2) {
        if (fileLocation == null && document == null && webFile == null && secureDocument == null && TextUtils.isEmpty(str2)) {
            return;
        }
        if (fileLocation != null) {
            str2 = getAttachFileName(fileLocation, str);
        } else if (document != null) {
            str2 = getAttachFileName(document);
        } else if (secureDocument != null) {
            str2 = getAttachFileName(secureDocument);
        } else if (webFile != null) {
            str2 = getAttachFileName(webFile);
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$changePriority$11(str2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changePriority$11(String str, int i) {
        int priorityValue;
        FileLoadOperation fileLoadOperation = this.loadOperationPaths.get(str);
        if (fileLoadOperation == null || fileLoadOperation.getPriority() == (priorityValue = getPriorityValue(i))) {
            return;
        }
        fileLoadOperation.setPriority(priorityValue);
        FileLoaderPriorityQueue queue = fileLoadOperation.getQueue();
        queue.remove(fileLoadOperation);
        queue.add(fileLoadOperation);
        queue.checkLoadingOperations();
        FileLog.m989d("update priority " + str + " position in queue " + fileLoadOperation.getPositionInQueue() + " account=" + this.currentAccount);
    }

    public void cancelLoadAllFiles() {
        for (final String str : this.loadOperationPathsUI.keySet()) {
            LoadOperationUIObject loadOperationUIObject = this.loadOperationPathsUI.get(str);
            Runnable runnable = loadOperationUIObject != null ? loadOperationUIObject.loadInternalRunnable : null;
            if (runnable != null) {
                fileLoaderQueue.cancelRunnable(runnable);
            }
            fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$cancelLoadAllFiles$12(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadAllFiles$12(String str) {
        FileLoadOperation fileLoadOperationRemove = this.loadOperationPaths.remove(str);
        if (fileLoadOperationRemove != null) {
            fileLoadOperationRemove.getQueue().cancel(fileLoadOperationRemove);
        }
    }

    public FileUploadOperation findUploadOperationByRequestToken(int i) {
        for (FileUploadOperation fileUploadOperation : this.uploadOperationPaths.values()) {
            if (fileUploadOperation != null && fileUploadOperation.uiRequestTokens.contains(Integer.valueOf(i))) {
                return fileUploadOperation;
            }
        }
        return null;
    }

    public boolean checkUploadCaughtPremiumFloodWait(String str) {
        FileUploadOperation fileUploadOperation;
        if (str == null || (fileUploadOperation = this.uploadOperationPaths.get(str)) == null || !fileUploadOperation.caughtPremiumFloodWait) {
            return false;
        }
        fileUploadOperation.caughtPremiumFloodWait = false;
        return true;
    }

    public FileLoadOperation findLoadOperationByRequestToken(int i) {
        for (FileLoadOperation fileLoadOperation : this.loadOperationPaths.values()) {
            if (fileLoadOperation != null && fileLoadOperation.uiRequestTokens.contains(Integer.valueOf(i))) {
                return fileLoadOperation;
            }
        }
        return null;
    }

    public boolean checkLoadCaughtPremiumFloodWait(String str) {
        FileLoadOperation fileLoadOperation;
        if (str == null || (fileLoadOperation = this.loadOperationPaths.get(str)) == null || !fileLoadOperation.caughtPremiumFloodWait) {
            return false;
        }
        fileLoadOperation.caughtPremiumFloodWait = false;
        return true;
    }

    public boolean isLoadingFile(String str) {
        return str != null && this.loadOperationPathsUI.containsKey(str);
    }

    public float getBufferedProgressFromPosition(float f, String str) {
        FileLoadOperation fileLoadOperation;
        if (TextUtils.isEmpty(str) || (fileLoadOperation = this.loadOperationPaths.get(str)) == null) {
            return 0.0f;
        }
        return fileLoadOperation.getDownloadedLengthFromOffset(f);
    }

    public File getLocalFile(ImageLocation imageLocation) {
        String attachFileName;
        if (imageLocation == null) {
            return null;
        }
        TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation.location;
        if (tL_fileLocationToBeDeprecated != null) {
            attachFileName = getAttachFileName(tL_fileLocationToBeDeprecated, null);
        } else {
            TLRPC.Document document = imageLocation.document;
            if (document != null) {
                attachFileName = getAttachFileName(document);
            } else {
                WebFile webFile = imageLocation.webFile;
                attachFileName = webFile != null ? getAttachFileName(webFile) : null;
            }
        }
        if (attachFileName == null) {
            return null;
        }
        File file = new File(getDirectory(4), attachFileName);
        if (file.exists()) {
            return file;
        }
        File file2 = new File(getDirectory(0), attachFileName);
        if (file2.exists()) {
            return file2;
        }
        File file3 = new File(getDirectory(2), attachFileName);
        if (file3.exists()) {
            return file3;
        }
        File file4 = new File(getDirectory(5), attachFileName);
        if (file4.exists()) {
            return file4;
        }
        return null;
    }

    public void loadFile(ImageLocation imageLocation, Object obj, String str, int i, int i2) {
        if (imageLocation == null) {
            return;
        }
        loadFile(imageLocation.document, imageLocation.secureDocument, imageLocation.webFile, imageLocation.location, imageLocation, obj, str, imageLocation.getSize(), i, (i2 != 0 || (!imageLocation.isEncrypted() && (imageLocation.photoSize == null || imageLocation.getSize() != 0))) ? i2 : 1);
    }

    public void loadFile(SecureDocument secureDocument, int i) {
        if (secureDocument == null) {
            return;
        }
        loadFile(null, secureDocument, null, null, null, null, null, 0L, i, 1);
    }

    public void loadFile(TLRPC.Document document, Object obj, int i, int i2) {
        if (document == null) {
            return;
        }
        loadFile(document, null, null, null, null, obj, null, 0L, i, (i2 != 0 || document.key == null) ? i2 : 1);
    }

    public void loadFile(WebFile webFile, int i, int i2) {
        loadFile(null, null, webFile, null, null, null, null, 0L, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isOwnMediaDocument(MessageObject messageObject, TLRPC.Document document) {
        if (messageObject != null && document != null) {
            TLRPC.Document documentFast = messageObject.getDocumentFast();
            if (documentFast != null && documentFast.id == document.id) {
                return true;
            }
            TLRPC.MessageMedia media = MessageObject.getMedia(messageObject.messageOwner);
            if (media == null) {
                return false;
            }
            int size = media.alt_documents.size();
            for (int i = 0; i < size; i++) {
                TLRPC.Document document2 = media.alt_documents.get(i);
                if (document2 != null && document2.id == document.id) {
                    return isVideoQualityDocument(document2);
                }
            }
        }
        return false;
    }

    private static boolean isVideoQualityDocument(TLRPC.Document document) {
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeVideo) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x021a A[PHI: r4
  0x021a: PHI (r4v28 java.io.File) = (r4v14 java.io.File), (r4v31 java.io.File) binds: [B:129:0x0238, B:118:0x0218] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0170 A[PHI: r5
  0x0170: PHI (r5v4 org.telegram.messenger.FileLoadOperation) = (r5v28 org.telegram.messenger.FileLoadOperation), (r5v29 org.telegram.messenger.FileLoadOperation) binds: [B:76:0x0163, B:78:0x016e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Object, org.telegram.messenger.FileLoadOperation] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v1, types: [org.telegram.messenger.FileLoaderPriorityQueue] */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11, types: [org.telegram.messenger.FileLoadOperation] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private FileLoadOperation loadFileInternal(TLRPC.Document document, SecureDocument secureDocument, WebFile webFile, TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated, ImageLocation imageLocation, Object obj, String str, long j, int i, FileLoadOperationStream fileLoadOperationStream, long j2, boolean z, int i2) {
        String str2;
        String str3;
        String attachFileName;
        int i3;
        int i4;
        ?? r0;
        int i5;
        long j3;
        int i6;
        FileLoadOperation fileLoadOperation;
        FileLoadOperation fileLoadOperation2;
        long j4;
        int i7;
        int i8;
        ?? fileLoadOperation3;
        FileLoaderPriorityQueue fileLoaderPriorityQueue;
        long j5;
        int i9;
        File directory;
        String str4;
        ?? r16;
        String name;
        File directory2;
        File directory3;
        ?? r4;
        ?? r42;
        boolean z2;
        boolean z3;
        if (tL_fileLocationToBeDeprecated != null) {
            str2 = str;
            attachFileName = getAttachFileName(tL_fileLocationToBeDeprecated, str2);
        } else {
            str2 = str;
            if (secureDocument != null) {
                attachFileName = getAttachFileName(secureDocument);
            } else if (document != null) {
                attachFileName = getAttachFileName(document);
            } else if (webFile != null) {
                attachFileName = getAttachFileName(webFile);
            } else {
                str3 = null;
                if (str3 != null || str3.contains("-2147483648")) {
                    return null;
                }
                if (str3.startsWith("0_0")) {
                    FileLog.m992e(new RuntimeException("cant get hash from " + document));
                    return null;
                }
                if (i2 != 10 && !TextUtils.isEmpty(str3) && !str3.contains("-2147483648")) {
                    this.loadOperationPathsUI.put(str3, new LoadOperationUIObject());
                }
                if (document != null && (obj instanceof MessageObject)) {
                    MessageObject messageObject = (MessageObject) obj;
                    if (messageObject.putInDownloadsStore && !messageObject.isAnyKindOfSticker()) {
                        getDownloadController().startDownloadFile(document, messageObject);
                    }
                }
                FileLoadOperation fileLoadOperation4 = this.loadOperationPaths.get(str3);
                int priorityValue = getPriorityValue(i);
                if (fileLoadOperation4 != null) {
                    if (i2 == 10 || !fileLoadOperation4.isPreloadVideoOperation()) {
                        z2 = false;
                    } else {
                        z2 = false;
                        fileLoadOperation4.setIsPreloadVideoOperation(false);
                    }
                    fileLoadOperation4.setForceRequest(priorityValue > 0 ? true : z2);
                    fileLoadOperation4.setStream(fileLoadOperationStream, z, j2);
                    if (fileLoadOperation4.getPriority() != priorityValue) {
                        fileLoadOperation4.setPriority(priorityValue);
                        z3 = true;
                    } else {
                        z3 = z2;
                    }
                    fileLoadOperation4.getQueue().add(fileLoadOperation4);
                    fileLoadOperation4.updateProgress();
                    if (z3) {
                        fileLoadOperation4.getQueue().checkLoadingOperations();
                    }
                    return fileLoadOperation4;
                }
                File directory4 = getDirectory(4);
                if (secureDocument != null) {
                    i3 = priorityValue;
                    i4 = 0;
                    i5 = 0;
                    i6 = 3;
                    j3 = 0;
                    r0 = 1;
                    fileLoadOperation3 = new FileLoadOperation(secureDocument);
                } else if (tL_fileLocationToBeDeprecated != null) {
                    long j6 = tL_fileLocationToBeDeprecated.volume_id;
                    i3 = priorityValue;
                    i4 = 0;
                    r0 = 1;
                    i5 = tL_fileLocationToBeDeprecated.dc_id + (tL_fileLocationToBeDeprecated.local_id << 16);
                    fileLoadOperation3 = new FileLoadOperation(imageLocation, obj, str2, j);
                    j3 = j6;
                    i6 = 0;
                } else {
                    i3 = priorityValue;
                    i4 = 0;
                    r0 = 1;
                    r0 = 1;
                    r0 = 1;
                    r0 = 1;
                    FileLoadOperation fileLoadOperation5 = fileLoadOperation4;
                    if (document != null) {
                        FileLoadOperation fileLoadOperation6 = new FileLoadOperation(document, obj);
                        if (MessageObject.isVoiceDocument(document)) {
                            i8 = 1;
                            i7 = 0;
                            j4 = 0;
                        } else {
                            boolean zIsVideoDocument = MessageObject.isVideoDocument(document);
                            long j7 = document.id;
                            if (zIsVideoDocument) {
                                j4 = j7;
                                i7 = document.dc_id;
                                i8 = 2;
                            } else {
                                j4 = j7;
                                i7 = document.dc_id;
                                i8 = 3;
                            }
                        }
                        if (MessageObject.isRoundVideoDocument(document)) {
                            i6 = i8;
                            fileLoadOperation2 = fileLoadOperation6;
                            i5 = 0;
                            fileLoadOperation = fileLoadOperation2;
                        } else {
                            i5 = i7;
                            i6 = i8;
                            j3 = j4;
                            fileLoadOperation3 = fileLoadOperation6;
                        }
                    } else if (webFile != null) {
                        FileLoadOperation fileLoadOperation7 = new FileLoadOperation(this.currentAccount, webFile);
                        fileLoadOperation5 = fileLoadOperation7;
                        if (webFile.location != null) {
                            i5 = 0;
                            j3 = 0;
                            i6 = 4;
                            fileLoadOperation3 = fileLoadOperation5;
                        } else if (MessageObject.isVoiceWebDocument(webFile)) {
                            i6 = 1;
                            fileLoadOperation2 = fileLoadOperation7;
                            i5 = 0;
                            fileLoadOperation = fileLoadOperation2;
                        } else if (MessageObject.isVideoWebDocument(webFile)) {
                            i5 = 0;
                            j3 = 0;
                            i6 = 2;
                            fileLoadOperation3 = fileLoadOperation7;
                        } else if (MessageObject.isImageWebDocument(webFile)) {
                            i5 = 0;
                            i6 = 0;
                            fileLoadOperation = fileLoadOperation7;
                        } else {
                            i5 = 0;
                            i6 = 3;
                            fileLoadOperation = fileLoadOperation7;
                        }
                    }
                    j3 = 0;
                    fileLoadOperation3 = fileLoadOperation;
                }
                int iClamp = Utilities.clamp(fileLoadOperation3.getDatacenterId() - r0, 4, i4);
                boolean z4 = obj instanceof TL_stories.StoryItem;
                if (fileLoadOperation3.totalBytesCount > 20971520 || z4) {
                    fileLoaderPriorityQueue = this.largeFilesQueue[iClamp];
                } else {
                    fileLoaderPriorityQueue = this.smallFilesQueue[iClamp];
                }
                ?? r18 = fileLoaderPriorityQueue;
                if (i2 != 0 && i2 != 10 && !z4) {
                    if (i2 == 2) {
                        fileLoadOperation3.setEncryptFile(r0);
                    }
                    str4 = str3;
                    directory = directory4;
                    j5 = j3;
                    i9 = i6;
                } else if (j3 != 0) {
                    String path = getFileDatabase().getPath(j3, i5, i6, true);
                    j5 = j3;
                    int i10 = i5;
                    i9 = i6;
                    if (path != null) {
                        File file = new File(path);
                        if (file.exists()) {
                            name = file.getName();
                            directory2 = file.getParentFile();
                            r16 = r0;
                        } else {
                            r16 = i4;
                            name = str3;
                            directory2 = directory4;
                        }
                        if (r16 == 0) {
                            directory2 = getDirectory(i9);
                            if (z4) {
                                directory3 = getDirectory(6);
                                if (directory3 != null) {
                                    directory2 = directory3;
                                    r42 = r0;
                                } else {
                                    r42 = i4;
                                }
                            } else {
                                if ((i9 == 0 || i9 == 2) && canSaveToPublicStorage(obj)) {
                                    if (i9 == 0) {
                                        directory3 = getDirectory(100);
                                    } else {
                                        directory3 = getDirectory(101);
                                    }
                                    if (directory3 != null) {
                                    }
                                } else if (!TextUtils.isEmpty(getDocumentFileName(document)) && canSaveAsFile(obj)) {
                                    String documentFileName = getDocumentFileName(document);
                                    File directory5 = getDirectory(5);
                                    if (directory5 != null) {
                                        directory2 = directory5;
                                        name = documentFileName;
                                        r4 = r0;
                                    } else {
                                        name = documentFileName;
                                        r4 = i4;
                                    }
                                    if (r4 != 0) {
                                        fileLoadOperation3.pathSaveData = new FilePathDatabase.PathData(j5, i10, i9);
                                    }
                                }
                                r42 = i4;
                            }
                            name = str3;
                            r4 = r42;
                            if (r4 != 0) {
                            }
                        }
                        directory = directory2;
                        str4 = name;
                    }
                } else {
                    j5 = j3;
                    i9 = i6;
                    directory = getDirectory(i9);
                    str4 = str3;
                }
                String str5 = str3;
                ?? r15 = fileLoadOperation3;
                r15.setPaths(this.currentAccount, str5, r18, directory, directory4, str4);
                if (i2 == 10) {
                    r15.setIsPreloadVideoOperation(r0);
                }
                ?? r2 = r0;
                r15.setDelegate(new C26122(obj, document, str5, i9));
                this.loadOperationPaths.put(str5, (FileLoadOperation) r15);
                int i11 = i3;
                r15.setPriority(i11);
                FileStreamLoadOperation fileStreamLoadOperation = fileLoadOperationStream == null ? FileStreamLoadOperation.allStreams.get(Long.valueOf(j5)) : fileLoadOperationStream;
                if (fileStreamLoadOperation != null) {
                    r15.setStream(fileStreamLoadOperation, z, j2);
                }
                r18.add(r15);
                r18.checkLoadingOperations((!r15.isStory || i11 < 1048576) ? i4 : r2 == true ? 1 : 0);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("create load operation fileName=" + str5 + " documentName=" + getDocumentFileName(document) + " size=" + AndroidUtilities.formatFileSize(r15.totalBytesCount) + " position in queue " + r15.getPositionInQueue() + " account=" + this.currentAccount + " cacheType=" + i2 + " priority=" + r15.getPriority() + " stream=" + fileStreamLoadOperation);
                }
                return r15;
            }
        }
        str3 = attachFileName;
        if (str3 != null) {
        }
        return null;
    }

    /* JADX INFO: renamed from: org.telegram.messenger.FileLoader$2 */
    public class C26122 implements FileLoadOperation.FileLoadOperationDelegate {
        final /* synthetic */ TLRPC.Document val$document;
        final /* synthetic */ String val$fileName;
        final /* synthetic */ int val$finalType;
        final /* synthetic */ Object val$parentObject;

        public C26122(Object obj, TLRPC.Document document, String str, int i) {
            this.val$parentObject = obj;
            this.val$document = document;
            this.val$fileName = str;
            this.val$finalType = i;
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didPreFinishLoading(final FileLoadOperation fileLoadOperation, File file) {
            final FileLoaderPriorityQueue queue = fileLoadOperation.getQueue();
            FileLoader.fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.C26122.m5120$r8$lambda$mxbBfeFTETIsHMKtk_6I_mmOw(fileLoadOperation, queue);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$mxbBfe-FTETIsHMKtk_6I_m-mOw, reason: not valid java name */
        public static /* synthetic */ void m5120$r8$lambda$mxbBfeFTETIsHMKtk_6I_mmOw(FileLoadOperation fileLoadOperation, FileLoaderPriorityQueue fileLoaderPriorityQueue) {
            fileLoadOperation.preFinished = true;
            fileLoaderPriorityQueue.checkLoadingOperations();
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file) {
            if (!fileLoadOperation.isPreloadVideoOperation() && fileLoadOperation.isPreloadFinished()) {
                FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue(), 0L);
                return;
            }
            FilePathDatabase.FileMeta fileMetadataFromParent = FileLoader.getFileMetadataFromParent(FileLoader.this.currentAccount, this.val$parentObject);
            if (fileMetadataFromParent != null) {
                FileLoader.this.getFileLoader().getFileDatabase().saveFileDialogId(file, fileMetadataFromParent);
            }
            Object obj = this.val$parentObject;
            if (obj instanceof MessageObject) {
                MessageObject messageObject = (MessageObject) obj;
                if (this.val$document != null && messageObject.putInDownloadsStore && !messageObject.isAnyKindOfSticker() && FileLoader.isOwnMediaDocument(messageObject, this.val$document)) {
                    FileLoader.this.getDownloadController().onDownloadComplete(messageObject);
                }
            }
            if (!fileLoadOperation.isPreloadVideoOperation()) {
                FileLoader.this.loadOperationPathsUI.remove(this.val$fileName);
                if (FileLoader.this.delegate != null) {
                    FileLoader.this.delegate.fileDidLoaded(this.val$fileName, file, this.val$parentObject, this.val$finalType);
                }
            }
            FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue(), 0L);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i) {
            FileLoader.this.loadOperationPathsUI.remove(this.val$fileName);
            FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue());
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidFailedLoad(this.val$fileName, i);
            }
            if (this.val$document != null) {
                Object obj = this.val$parentObject;
                if (obj instanceof MessageObject) {
                    MessageObject messageObject = (MessageObject) obj;
                    if (i == 0) {
                        if (messageObject.putInDownloadsStore && !messageObject.isAnyKindOfSticker() && FileLoader.isOwnMediaDocument(messageObject, this.val$document)) {
                            FileLoader.this.getDownloadController().onDownloadFail(messageObject, i);
                            return;
                        }
                        return;
                    }
                }
            }
            if (i == -1) {
                LaunchActivity.checkFreeDiscSpaceStatic(2);
            }
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2) {
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileLoadProgressChanged(fileLoadOperation, this.val$fileName, j, j2);
            }
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void saveFilePath(FilePathDatabase.PathData pathData, File file) {
            FileLoader.this.getFileDatabase().putPath(pathData.id, pathData.dc, pathData.type, 0, file != null ? file.toString() : null);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public boolean hasAnotherRefOnFile(String str) {
            return FileLoader.this.getFileDatabase().hasAnotherRefOnFile(str);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public boolean isLocallyCreatedFile(String str) {
            return FileLoader.this.getFileDatabase().isLocallyCreated(str);
        }
    }

    public static boolean canSaveAsFile(Object obj) {
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.isDocument() && !messageObject.isRoundVideo() && !messageObject.isVoice()) {
                return true;
            }
        }
        return false;
    }

    private boolean canSaveToPublicStorage(Object obj) {
        FilePathDatabase.FileMeta fileMetadataFromParent;
        MessageObject messageObject;
        if (!BuildVars.NO_SCOPED_STORAGE && (fileMetadataFromParent = getFileMetadataFromParent(this.currentAccount, obj)) != null) {
            long j = fileMetadataFromParent.dialogId;
            if (!getMessagesController().isPeerNoForwards(j) && !DialogObject.isEncryptedDialog(j)) {
                int i = 2;
                if (obj instanceof MessageObject) {
                    messageObject = (MessageObject) obj;
                    if (messageObject.isRoundVideo() || messageObject.isVoice() || messageObject.isAnyKindOfSticker() || messageObject.messageOwner.noforwards) {
                        return false;
                    }
                } else {
                    int i2 = fileMetadataFromParent.messageType;
                    if (i2 != 5 && i2 != 13 && i2 != 2) {
                        messageObject = null;
                    }
                }
                if (j >= 0) {
                    i = 1;
                } else if (ChatObject.isChannelAndNotMegaGroup(getMessagesController().getChat(Long.valueOf(-j)))) {
                    i = 4;
                }
                if (SaveToGallerySettingsHelper.needSave(i, fileMetadataFromParent, messageObject, this.currentAccount)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void addOperationToQueue(FileLoadOperation fileLoadOperation, LinkedList<FileLoadOperation> linkedList) {
        int priority = fileLoadOperation.getPriority();
        if (priority > 0) {
            int size = linkedList.size();
            int size2 = linkedList.size();
            int i = 0;
            while (true) {
                if (i >= size2) {
                    break;
                }
                if (linkedList.get(i).getPriority() < priority) {
                    size = i;
                    break;
                }
                i++;
            }
            linkedList.add(size, fileLoadOperation);
            return;
        }
        linkedList.add(fileLoadOperation);
    }

    private void loadFile(final TLRPC.Document document, final SecureDocument secureDocument, final WebFile webFile, final TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated, final ImageLocation imageLocation, final Object obj, String str, final long j, final int i, final int i2) {
        final String str2;
        String str3;
        String attachFileName;
        Runnable runnable;
        if (tL_fileLocationToBeDeprecated != null) {
            str2 = str;
            attachFileName = getAttachFileName(tL_fileLocationToBeDeprecated, str2);
        } else {
            str2 = str;
            if (document != null) {
                attachFileName = getAttachFileName(document);
            } else if (webFile != null) {
                attachFileName = getAttachFileName(webFile);
            } else {
                str3 = null;
                runnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadFile$13(document, secureDocument, webFile, tL_fileLocationToBeDeprecated, imageLocation, obj, str2, j, i, i2);
                    }
                };
                if (i2 != 10 && !TextUtils.isEmpty(str3) && !str3.contains("-2147483648")) {
                    LoadOperationUIObject loadOperationUIObject = new LoadOperationUIObject();
                    loadOperationUIObject.loadInternalRunnable = runnable;
                    this.loadOperationPathsUI.put(str3, loadOperationUIObject);
                }
                fileLoaderQueue.postRunnable(runnable);
            }
        }
        str3 = attachFileName;
        runnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFile$13(document, secureDocument, webFile, tL_fileLocationToBeDeprecated, imageLocation, obj, str2, j, i, i2);
            }
        };
        if (i2 != 10) {
            LoadOperationUIObject loadOperationUIObject2 = new LoadOperationUIObject();
            loadOperationUIObject2.loadInternalRunnable = runnable;
            this.loadOperationPathsUI.put(str3, loadOperationUIObject2);
        }
        fileLoaderQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFile$13(TLRPC.Document document, SecureDocument secureDocument, WebFile webFile, TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated, ImageLocation imageLocation, Object obj, String str, long j, int i, int i2) {
        loadFileInternal(document, secureDocument, webFile, tL_fileLocationToBeDeprecated, imageLocation, obj, str, j, i, null, 0L, false, i2);
    }

    public FileLoadOperation loadStreamFile(FileLoadOperationStream fileLoadOperationStream, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j, boolean z, int i) {
        return loadStreamFile(fileLoadOperationStream, document, imageLocation, obj, j, z, i, document == null ? 1 : 0);
    }

    public FileLoadOperation loadStreamFile(final FileLoadOperationStream fileLoadOperationStream, final TLRPC.Document document, final ImageLocation imageLocation, final Object obj, final long j, final boolean z, final int i, final int i2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final FileLoadOperation[] fileLoadOperationArr = new FileLoadOperation[1];
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadStreamFile$14(fileLoadOperationArr, document, imageLocation, obj, i, fileLoadOperationStream, j, z, i2, countDownLatch);
            }
        });
        awaitFileLoadOperation(countDownLatch, true);
        return fileLoadOperationArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStreamFile$14(FileLoadOperation[] fileLoadOperationArr, TLRPC.Document document, ImageLocation imageLocation, Object obj, int i, FileLoadOperationStream fileLoadOperationStream, long j, boolean z, int i2, CountDownLatch countDownLatch) {
        String str = null;
        TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = (document != null || imageLocation == null) ? null : imageLocation.location;
        if (document == null && imageLocation != null) {
            str = "mp4";
        }
        fileLoadOperationArr[0] = loadFileInternal(document, null, null, tL_fileLocationToBeDeprecated, imageLocation, obj, str, (document != null || imageLocation == null) ? 0L : imageLocation.currentSize, i, fileLoadOperationStream, j, z, i2);
        countDownLatch.countDown();
    }

    private void awaitFileLoadOperation(CountDownLatch countDownLatch, boolean z) {
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDownloadQueue(FileLoadOperation fileLoadOperation, FileLoaderPriorityQueue fileLoaderPriorityQueue) {
        checkDownloadQueue(fileLoadOperation, fileLoaderPriorityQueue, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDownloadQueue(final FileLoadOperation fileLoadOperation, final FileLoaderPriorityQueue fileLoaderPriorityQueue, long j) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkDownloadQueue$15(fileLoaderPriorityQueue, fileLoadOperation);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDownloadQueue$15(FileLoaderPriorityQueue fileLoaderPriorityQueue, FileLoadOperation fileLoadOperation) {
        if (fileLoaderPriorityQueue.remove(fileLoadOperation)) {
            this.loadOperationPaths.remove(fileLoadOperation.getFileName());
            fileLoaderPriorityQueue.checkLoadingOperations(fileLoadOperation.isStory);
        }
    }

    public void setDelegate(FileLoaderDelegate fileLoaderDelegate) {
        this.delegate = fileLoaderDelegate;
    }

    public static String getMessageFileName(TLRPC.Message message) {
        TLRPC.WebDocument webDocument;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize3;
        if (message == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (message instanceof TLRPC.TL_messageService) {
            TLRPC.Photo photo = message.action.photo;
            if (photo != null) {
                ArrayList<TLRPC.PhotoSize> arrayList = photo.sizes;
                if (arrayList.size() > 0 && (closestPhotoSizeWithSize3 = getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                    return getAttachFileName(closestPhotoSizeWithSize3);
                }
            }
        } else {
            if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaDocument) {
                return getAttachFileName(MessageObject.getMedia(message).document);
            }
            if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) {
                ArrayList<TLRPC.PhotoSize> arrayList2 = MessageObject.getMedia(message).photo.sizes;
                if (arrayList2.size() > 0 && (closestPhotoSizeWithSize2 = getClosestPhotoSizeWithSize(arrayList2, AndroidUtilities.getPhotoSize(true), false, null, true)) != null) {
                    return getAttachFileName(closestPhotoSizeWithSize2);
                }
            } else if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
                if (MessageObject.getMedia(message).webpage.document != null) {
                    return getAttachFileName(MessageObject.getMedia(message).webpage.document);
                }
                if (MessageObject.getMedia(message).webpage.photo != null) {
                    ArrayList<TLRPC.PhotoSize> arrayList3 = MessageObject.getMedia(message).webpage.photo.sizes;
                    if (arrayList3.size() > 0 && (closestPhotoSizeWithSize = getClosestPhotoSizeWithSize(arrayList3, AndroidUtilities.getPhotoSize())) != null) {
                        return getAttachFileName(closestPhotoSizeWithSize);
                    }
                }
            } else if ((MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaInvoice) && (webDocument = ((TLRPC.TL_messageMediaInvoice) MessageObject.getMedia(message)).webPhoto) != null) {
                return Utilities.MD5(webDocument.url) + "." + ImageLoader.getHttpUrlExtension(webDocument.url, getMimeTypePart(webDocument.mime_type));
            }
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public File getPathToMessage(TLRPC.Message message) {
        return getPathToMessage(message, true);
    }

    public File getPathToMessage(TLRPC.Message message, boolean z) {
        return getPathToMessage(message, false, z);
    }

    public File getPathToMessage(TLRPC.Message message, boolean z, boolean z2) {
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize3;
        if (message == null) {
            return new File(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        if (message instanceof TLRPC.TL_messageService) {
            TLRPC.Photo photo = message.action.photo;
            if (photo != null) {
                ArrayList<TLRPC.PhotoSize> arrayList = photo.sizes;
                if (arrayList.size() > 0 && (closestPhotoSizeWithSize3 = getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                    return getPathToAttach(closestPhotoSizeWithSize3, null, z, z2);
                }
            }
        } else {
            if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaDocument) {
                return getPathToAttach(MessageObject.getMedia(message).document, null, z || MessageObject.getMedia(message).ttl_seconds != 0, z2);
            }
            if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) {
                ArrayList<TLRPC.PhotoSize> arrayList2 = MessageObject.getMedia(message).photo.sizes;
                if (arrayList2.size() > 0 && (closestPhotoSizeWithSize2 = getClosestPhotoSizeWithSize(arrayList2, AndroidUtilities.getPhotoSize(true), false, null, true)) != null) {
                    return getPathToAttach(closestPhotoSizeWithSize2, null, z || MessageObject.getMedia(message).ttl_seconds != 0, z2);
                }
            } else if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
                if (MessageObject.getMedia(message).webpage.document != null) {
                    return getPathToAttach(MessageObject.getMedia(message).webpage.document, null, z, z2);
                }
                if (MessageObject.getMedia(message).webpage.photo != null) {
                    ArrayList<TLRPC.PhotoSize> arrayList3 = MessageObject.getMedia(message).webpage.photo.sizes;
                    if (arrayList3.size() > 0 && (closestPhotoSizeWithSize = getClosestPhotoSizeWithSize(arrayList3, AndroidUtilities.getPhotoSize())) != null) {
                        return getPathToAttach(closestPhotoSizeWithSize, null, z, z2);
                    }
                }
            } else if (MessageObject.getMedia(message) instanceof TLRPC.TL_messageMediaInvoice) {
                return getPathToAttach(((TLRPC.TL_messageMediaInvoice) MessageObject.getMedia(message)).photo, null, true, z2);
            }
        }
        return new File(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    public File getPathToAttach(TLObject tLObject) {
        return getPathToAttach(tLObject, null, false);
    }

    public File getPathToAttach(TLObject tLObject, boolean z) {
        return getPathToAttach(tLObject, null, z);
    }

    public File getPathToAttach(TLObject tLObject, String str, boolean z) {
        return getPathToAttach(tLObject, null, str, z, true);
    }

    public File getPathToAttach(TLObject tLObject, String str, boolean z, boolean z2) {
        return getPathToAttach(tLObject, null, str, z, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File getPathToAttach(TLObject tLObject, String str, String str2, boolean z, boolean z2) {
        File directory;
        long j;
        int i;
        int i2;
        int i3;
        File directory2;
        long j2;
        int i4;
        int i5;
        int i6;
        String path;
        int i7 = 4;
        if (z) {
            directory = getDirectory(4);
        } else {
            if (tLObject instanceof TLRPC.Document) {
                TLRPC.Document document = (TLRPC.Document) tLObject;
                if (!TextUtils.isEmpty(document.localPath)) {
                    return new File(document.localPath);
                }
                if (document.key == null) {
                    if (MessageObject.isVoiceDocument(document)) {
                        i7 = 1;
                    } else {
                        i7 = MessageObject.isVideoDocument(document) ? 2 : 3;
                    }
                }
                j2 = document.id;
                i6 = document.dc_id;
                directory2 = getDirectory(i7);
            } else {
                if (tLObject instanceof TLRPC.Photo) {
                    return getPathToAttach(getClosestPhotoSizeWithSize(((TLRPC.Photo) tLObject).sizes, AndroidUtilities.getPhotoSize(true)), str2, false, z2);
                }
                if (tLObject instanceof TLRPC.PhotoSize) {
                    TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) tLObject;
                    if ((photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                        directory2 = null;
                    } else {
                        TLRPC.FileLocation fileLocation = photoSize.location;
                        if (fileLocation == null || fileLocation.key != null || ((fileLocation.volume_id == -2147483648L && fileLocation.local_id < 0) || photoSize.size < 0)) {
                            directory2 = getDirectory(4);
                            TLRPC.FileLocation fileLocation2 = photoSize.location;
                            j2 = fileLocation2.volume_id;
                            i4 = fileLocation2.dc_id;
                            i5 = fileLocation2.local_id;
                        } else {
                            directory2 = getDirectory(0);
                        }
                    }
                    i7 = 0;
                    TLRPC.FileLocation fileLocation22 = photoSize.location;
                    j2 = fileLocation22.volume_id;
                    i4 = fileLocation22.dc_id;
                    i5 = fileLocation22.local_id;
                } else if (tLObject instanceof TLRPC.TL_videoSize) {
                    TLRPC.TL_videoSize tL_videoSize = (TLRPC.TL_videoSize) tLObject;
                    TLRPC.FileLocation fileLocation3 = tL_videoSize.location;
                    if (fileLocation3 == null || fileLocation3.key != null || ((fileLocation3.volume_id == -2147483648L && fileLocation3.local_id < 0) || tL_videoSize.size < 0)) {
                        directory2 = getDirectory(4);
                    } else {
                        directory2 = getDirectory(0);
                        i7 = 0;
                    }
                    TLRPC.FileLocation fileLocation4 = tL_videoSize.location;
                    j2 = fileLocation4.volume_id;
                    i4 = fileLocation4.dc_id;
                    i5 = fileLocation4.local_id;
                } else {
                    if (tLObject instanceof TLRPC.FileLocation) {
                        TLRPC.FileLocation fileLocation5 = (TLRPC.FileLocation) tLObject;
                        if (fileLocation5.key == null) {
                            j = fileLocation5.volume_id;
                            if (j == -2147483648L && fileLocation5.local_id < 0) {
                                directory = getDirectory(4);
                                j = 0;
                                i = 0;
                            } else {
                                i = fileLocation5.dc_id + (fileLocation5.local_id << 16);
                                directory = getDirectory(0);
                            }
                            i2 = i;
                            i3 = 0;
                        }
                        if (directory == null) {
                            return new File(_UrlKt.FRAGMENT_ENCODE_SET);
                        }
                        if (j != 0 && (path = getInstance(UserConfig.selectedAccount).getFileDatabase().getPath(j, i2, i3, z2)) != null) {
                            return new File(path);
                        }
                        return new File(directory, getAttachFileName(tLObject, str2));
                    }
                    if ((tLObject instanceof TLRPC.UserProfilePhoto) || (tLObject instanceof TLRPC.ChatPhoto)) {
                        if (str == null) {
                            str = "s";
                        }
                        if ("s".equals(str)) {
                            directory = getDirectory(4);
                        } else {
                            directory = getDirectory(0);
                        }
                    } else if (tLObject instanceof WebFile) {
                        WebFile webFile = (WebFile) tLObject;
                        if (webFile.mime_type.startsWith("image/")) {
                            directory = getDirectory(0);
                        } else if (webFile.mime_type.startsWith("audio/")) {
                            directory = getDirectory(1);
                        } else if (webFile.mime_type.startsWith("video/")) {
                            directory = getDirectory(2);
                        } else {
                            directory = getDirectory(3);
                        }
                    } else {
                        directory = ((tLObject instanceof TLRPC.TL_secureFile) || (tLObject instanceof SecureDocument)) ? getDirectory(4) : null;
                    }
                }
                i6 = (i5 << 16) + i4;
            }
            i2 = i6;
            directory = directory2;
            i3 = i7;
            j = j2;
            if (directory == null) {
            }
        }
        j = 0;
        i2 = 0;
        i3 = 0;
        if (directory == null) {
        }
    }

    public FilePathDatabase getFileDatabase() {
        return this.filePathDatabase;
    }

    public static TLRPC.TL_photoStrippedSize getStrippedPhotoSize(ArrayList<TLRPC.PhotoSize> arrayList) {
        if (arrayList == null) {
            return null;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.PhotoSize photoSize = arrayList.get(i);
            if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                return (TLRPC.TL_photoStrippedSize) photoSize;
            }
        }
        return null;
    }

    public static TLRPC.PhotoSize getClosestPhotoSizeWithSize(ArrayList<TLRPC.PhotoSize> arrayList, int i) {
        return getClosestPhotoSizeWithSize(arrayList, i, false);
    }

    public static TLRPC.PhotoSize getClosestPhotoSizeWithSize(ArrayList<TLRPC.PhotoSize> arrayList, int i, boolean z) {
        return getClosestPhotoSizeWithSize(arrayList, i, z, null, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x006b A[PHI: r6
  0x006b: PHI (r6v2 int) = (r6v1 int), (r6v1 int), (r6v1 int), (r6v1 int), (r6v4 int), (r6v4 int), (r6v4 int), (r6v4 int) binds: [B:36:0x0057, B:43:0x0065, B:45:0x0069, B:41:0x0061, B:24:0x003a, B:31:0x0048, B:33:0x004c, B:29:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TLRPC.PhotoSize getClosestPhotoSizeWithSize(ArrayList<TLRPC.PhotoSize> arrayList, int i, boolean z, TLRPC.PhotoSize photoSize, boolean z2) {
        int iMax;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        TLRPC.PhotoSize photoSize2 = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                TLRPC.PhotoSize photoSize3 = arrayList.get(i3);
                if (photoSize3 != null && photoSize3 != photoSize && !(photoSize3 instanceof TLRPC.TL_photoSizeEmpty) && !(photoSize3 instanceof TLRPC.TL_photoPathSize) && (!z2 || !(photoSize3 instanceof TLRPC.TL_photoStrippedSize))) {
                    if (z) {
                        iMax = Math.min(photoSize3.f1016h, photoSize3.f1017w);
                        if (photoSize2 == null || ((i > 100 && (fileLocation2 = photoSize2.location) != null && fileLocation2.dc_id == Integer.MIN_VALUE) || (photoSize3 instanceof TLRPC.TL_photoCachedSize) || (i > i2 && i2 < iMax))) {
                            photoSize2 = photoSize3;
                            i2 = iMax;
                        }
                    } else {
                        iMax = Math.max(photoSize3.f1017w, photoSize3.f1016h);
                        if (photoSize2 == null || ((i > 100 && (fileLocation = photoSize2.location) != null && fileLocation.dc_id == Integer.MIN_VALUE) || (photoSize3 instanceof TLRPC.TL_photoCachedSize) || (iMax <= i && i2 < iMax))) {
                        }
                    }
                }
            }
        }
        return photoSize2;
    }

    public static TLRPC.VideoSize getClosestVideoSizeWithSize(ArrayList<TLRPC.VideoSize> arrayList, int i) {
        return getClosestVideoSizeWithSize(arrayList, i, false);
    }

    public static TLRPC.VideoSize getClosestVideoSizeWithSize(ArrayList<TLRPC.VideoSize> arrayList, int i, boolean z) {
        return getClosestVideoSizeWithSize(arrayList, i, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x005a A[PHI: r5
  0x005a: PHI (r5v2 int) = (r5v1 int), (r5v1 int), (r5v1 int), (r5v4 int), (r5v4 int), (r5v4 int) binds: [B:30:0x004a, B:37:0x0058, B:35:0x0054, B:20:0x0031, B:27:0x003f, B:25:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TLRPC.VideoSize getClosestVideoSizeWithSize(ArrayList<TLRPC.VideoSize> arrayList, int i, boolean z, boolean z2) {
        int iMax;
        TLRPC.FileLocation fileLocation;
        TLRPC.FileLocation fileLocation2;
        TLRPC.VideoSize videoSize = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                TLRPC.VideoSize videoSize2 = arrayList.get(i3);
                if (videoSize2 != null && !(videoSize2 instanceof TLRPC.TL_videoSizeEmojiMarkup) && !(videoSize2 instanceof TLRPC.TL_videoSizeStickerMarkup)) {
                    if (z) {
                        iMax = Math.min(videoSize2.f1039h, videoSize2.f1040w);
                        if (videoSize == null || ((i > 100 && (fileLocation2 = videoSize.location) != null && fileLocation2.dc_id == Integer.MIN_VALUE) || (i > i2 && i2 < iMax))) {
                            videoSize = videoSize2;
                            i2 = iMax;
                        }
                    } else {
                        iMax = Math.max(videoSize2.f1040w, videoSize2.f1039h);
                        if (videoSize == null || ((i > 100 && (fileLocation = videoSize.location) != null && fileLocation.dc_id == Integer.MIN_VALUE) || (iMax <= i && i2 < iMax))) {
                        }
                    }
                }
            }
        }
        return videoSize;
    }

    public static TLRPC.TL_photoPathSize getPathPhotoSize(ArrayList<TLRPC.PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.PhotoSize photoSize = arrayList.get(i);
                if (!(photoSize instanceof TLRPC.TL_photoPathSize)) {
                    return (TLRPC.TL_photoPathSize) photoSize;
                }
            }
        }
        return null;
    }

    public static String getFileExtension(File file) {
        String name = file.getName();
        try {
            return name.substring(name.lastIndexOf(46) + 1);
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public static String fixFileName(String str) {
        return str != null ? str.replaceAll("[\u0001-\u001f<>\u202e:\"/\\\\|?*\u007f]+", _UrlKt.FRAGMENT_ENCODE_SET).trim() : str;
    }

    public static String getDocumentFileName(TLRPC.Document document) {
        String str = null;
        if (document == null) {
            return null;
        }
        String str2 = document.file_name_fixed;
        if (str2 != null) {
            return str2;
        }
        String str3 = document.file_name;
        if (str3 == null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeFilename) {
                    str = documentAttribute.file_name;
                }
            }
            str3 = str;
        }
        String strFixFileName = fixFileName(str3);
        return strFixFileName != null ? strFixFileName : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static String getMimeTypePart(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf != -1) {
            return str.substring(iLastIndexOf + 1);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static String getExtensionByMimeType(String str) {
        if (str != null) {
            switch (str) {
                case "audio/ogg":
                    return ".ogg";
                case "video/mp4":
                    return ".mp4";
                case "video/x-matroska":
                    return ".mkv";
                default:
                    return _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static File getInternalCacheDir() {
        return ApplicationLoader.applicationContext.getCacheDir();
    }

    public static String getDocumentExtension(TLRPC.Document document) {
        String documentFileName = getDocumentFileName(document);
        int iLastIndexOf = documentFileName.lastIndexOf(46);
        String strSubstring = iLastIndexOf != -1 ? documentFileName.substring(iLastIndexOf + 1) : null;
        if (strSubstring == null || strSubstring.length() == 0) {
            strSubstring = document.mime_type;
        }
        if (strSubstring == null) {
            strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return strSubstring.toUpperCase();
    }

    public static String getAttachFileName(TLObject tLObject) {
        return getAttachFileName(tLObject, null);
    }

    public static String getAttachFileName(TLObject tLObject, String str) {
        return getAttachFileName(tLObject, null, str);
    }

    public static String getAttachFileName(TLObject tLObject, String str, String str2) {
        boolean z = tLObject instanceof TLRPC.Document;
        String extensionByMimeType = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z) {
            TLRPC.Document document = (TLRPC.Document) tLObject;
            String documentFileName = getDocumentFileName(document);
            int iLastIndexOf = documentFileName.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                extensionByMimeType = documentFileName.substring(iLastIndexOf);
            }
            if (extensionByMimeType.length() <= 1) {
                extensionByMimeType = getExtensionByMimeType(document.mime_type);
            }
            int length = extensionByMimeType.length();
            int i = document.dc_id;
            if (length > 1) {
                return i + "_" + document.id + extensionByMimeType;
            }
            return i + "_" + document.id;
        }
        if (tLObject instanceof SecureDocument) {
            SecureDocument secureDocument = (SecureDocument) tLObject;
            return secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.id + ".jpg";
        }
        if (tLObject instanceof TLRPC.TL_secureFile) {
            TLRPC.TL_secureFile tL_secureFile = (TLRPC.TL_secureFile) tLObject;
            return tL_secureFile.dc_id + "_" + tL_secureFile.id + ".jpg";
        }
        if (tLObject instanceof WebFile) {
            WebFile webFile = (WebFile) tLObject;
            return Utilities.MD5(webFile.url) + "." + ImageLoader.getHttpUrlExtension(webFile.url, getMimeTypePart(webFile.mime_type));
        }
        if (tLObject instanceof TLRPC.PhotoSize) {
            TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) tLObject;
            TLRPC.FileLocation fileLocation = photoSize.location;
            if (fileLocation == null || (fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(photoSize.location.volume_id);
            sb.append("_");
            sb.append(photoSize.location.local_id);
            sb.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb.append(str2);
            return sb.toString();
        }
        if (tLObject instanceof TLRPC.TL_videoSize) {
            TLRPC.TL_videoSize tL_videoSize = (TLRPC.TL_videoSize) tLObject;
            TLRPC.FileLocation fileLocation2 = tL_videoSize.location;
            if (fileLocation2 == null || (fileLocation2 instanceof TLRPC.TL_fileLocationUnavailable)) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(tL_videoSize.location.volume_id);
            sb2.append("_");
            sb2.append(tL_videoSize.location.local_id);
            sb2.append(".");
            if (str2 == null) {
                str2 = "mp4";
            }
            sb2.append(str2);
            return sb2.toString();
        }
        if (tLObject instanceof TLRPC.FileLocation) {
            if (tLObject instanceof TLRPC.TL_fileLocationUnavailable) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            TLRPC.FileLocation fileLocation3 = (TLRPC.FileLocation) tLObject;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(fileLocation3.volume_id);
            sb3.append("_");
            sb3.append(fileLocation3.local_id);
            sb3.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb3.append(str2);
            return sb3.toString();
        }
        if (tLObject instanceof TLRPC.UserProfilePhoto) {
            if (str == null) {
                str = "s";
            }
            TLRPC.UserProfilePhoto userProfilePhoto = (TLRPC.UserProfilePhoto) tLObject;
            if (userProfilePhoto.photo_small != null) {
                if ("s".equals(str)) {
                    return getAttachFileName(userProfilePhoto.photo_small, str2);
                }
                return getAttachFileName(userProfilePhoto.photo_big, str2);
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(userProfilePhoto.photo_id);
            sb4.append("_");
            sb4.append(str);
            sb4.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb4.append(str2);
            return sb4.toString();
        }
        if (!(tLObject instanceof TLRPC.ChatPhoto)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        TLRPC.ChatPhoto chatPhoto = (TLRPC.ChatPhoto) tLObject;
        if (chatPhoto.photo_small != null) {
            if ("s".equals(str)) {
                return getAttachFileName(chatPhoto.photo_small, str2);
            }
            return getAttachFileName(chatPhoto.photo_big, str2);
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(chatPhoto.photo_id);
        sb5.append("_");
        sb5.append(str);
        sb5.append(".");
        if (str2 == null) {
            str2 = "jpg";
        }
        sb5.append(str2);
        return sb5.toString();
    }

    public void deleteFiles(final ArrayList<File> arrayList, final int i) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.$r8$lambda$aznnlSjB__e8IovJEzDI8QCbiag(arrayList, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$aznnlSjB__e8IovJEzDI8QCbiag(ArrayList arrayList, int i) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            File file = (File) arrayList.get(i2);
            File file2 = new File(file.getAbsolutePath() + ".enc");
            if (file2.exists()) {
                try {
                    if (!file2.delete()) {
                        file2.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                try {
                    File file3 = new File(getInternalCacheDir(), file.getName() + ".enc.key");
                    if (!file3.delete()) {
                        file3.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.m992e(e2);
                }
            } else if (file.exists()) {
                try {
                    if (!file.delete()) {
                        file.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.m992e(e3);
                }
            }
            try {
                File file4 = new File(file.getParentFile(), "q_" + file.getName());
                if (file4.exists() && !file4.delete()) {
                    file4.deleteOnExit();
                }
            } catch (Exception e4) {
                FileLog.m992e(e4);
            }
        }
        if (i == 2) {
            ImageLoader.getInstance().clearMemory();
        }
    }

    public static boolean isVideoMimeType(String str) {
        if ("video/mp4".equals(str)) {
            return true;
        }
        return SharedConfig.streamMkv && "video/x-matroska".equals(str);
    }

    public static boolean copyFile(InputStream inputStream, File file) {
        return copyFile(inputStream, file, -1);
    }

    public static boolean copyFile(InputStream inputStream, File file, int i) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[4096];
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read(bArr);
            if (i3 <= 0) {
                break;
            }
            Thread.yield();
            fileOutputStream.write(bArr, 0, i3);
            i2 += i3;
            if (i > 0 && i2 >= i) {
                break;
            }
        }
        fileOutputStream.getFD().sync();
        fileOutputStream.close();
        return true;
    }

    public static boolean isSamePhoto(TLObject tLObject, TLObject tLObject2) {
        if ((tLObject == null && tLObject2 != null) || (tLObject != null && tLObject2 == null)) {
            return false;
        }
        if (tLObject == null && tLObject2 == null) {
            return true;
        }
        if (tLObject.getClass() != tLObject2.getClass()) {
            return false;
        }
        return tLObject instanceof TLRPC.UserProfilePhoto ? ((TLRPC.UserProfilePhoto) tLObject).photo_id == ((TLRPC.UserProfilePhoto) tLObject2).photo_id : (tLObject instanceof TLRPC.ChatPhoto) && ((TLRPC.ChatPhoto) tLObject).photo_id == ((TLRPC.ChatPhoto) tLObject2).photo_id;
    }

    public static boolean isSamePhoto(TLRPC.FileLocation fileLocation, TLRPC.Photo photo) {
        if (fileLocation != null && (photo instanceof TLRPC.TL_photo)) {
            int size = photo.sizes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.FileLocation fileLocation2 = photo.sizes.get(i).location;
                if (fileLocation2 != null && fileLocation2.local_id == fileLocation.local_id && fileLocation2.volume_id == fileLocation.volume_id) {
                    return true;
                }
            }
            if ((-fileLocation.volume_id) == photo.id) {
                return true;
            }
        }
        return false;
    }

    public static long getPhotoId(TLObject tLObject) {
        if (tLObject instanceof TLRPC.Photo) {
            return ((TLRPC.Photo) tLObject).id;
        }
        if (tLObject instanceof TLRPC.ChatPhoto) {
            return ((TLRPC.ChatPhoto) tLObject).photo_id;
        }
        if (tLObject instanceof TLRPC.UserProfilePhoto) {
            return ((TLRPC.UserProfilePhoto) tLObject).photo_id;
        }
        return 0L;
    }

    public void getCurrentLoadingFiles(ArrayList<MessageObject> arrayList) {
        arrayList.clear();
        arrayList.addAll(getDownloadController().downloadingFiles);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.get(i).isDownloadingFile = true;
        }
    }

    public void getRecentLoadingFiles(ArrayList<MessageObject> arrayList) {
        arrayList.clear();
        arrayList.addAll(getDownloadController().recentDownloadingFiles);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.get(i).isDownloadingFile = true;
        }
    }

    public void checkCurrentDownloadsFiles() {
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(getDownloadController().recentDownloadingFiles);
        for (int i = 0; i < arrayList2.size(); i++) {
            ((MessageObject) arrayList2.get(i)).checkMediaExistance();
            if (((MessageObject) arrayList2.get(i)).mediaExists) {
                arrayList.add((MessageObject) arrayList2.get(i));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkCurrentDownloadsFiles$17(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCurrentDownloadsFiles$17(ArrayList arrayList) {
        getDownloadController().recentDownloadingFiles.removeAll(arrayList);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDownloadingFilesChanged, new Object[0]);
    }

    public void checkMediaExistance(ArrayList<MessageObject> arrayList) {
        getFileDatabase().checkMediaExistance(arrayList);
    }

    public void clearRecentDownloadedFiles() {
        getDownloadController().clearRecentDownloadedFiles();
    }

    public void clearFilePaths() {
        this.filePathDatabase.clear();
    }

    public static boolean checkUploadFileSize(int i, long j) {
        boolean zIsPremium = AccountInstance.getInstance(i).getUserConfig().isPremium();
        if (j >= DEFAULT_MAX_FILE_SIZE) {
            return j < DEFAULT_MAX_FILE_SIZE_PREMIUM && zIsPremium;
        }
        return true;
    }

    public static class LoadOperationUIObject {
        Runnable loadInternalRunnable;

        private LoadOperationUIObject() {
        }
    }

    public static byte[] longToBytes(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putLong(j);
        return byteBufferAllocate.array();
    }

    public static long bytesToLong(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            j = (j << 8) ^ ((long) (bArr[i] & UByte.MAX_VALUE));
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18() {
        int i = 0;
        while (true) {
            FileLoaderPriorityQueue[] fileLoaderPriorityQueueArr = this.smallFilesQueue;
            if (i < fileLoaderPriorityQueueArr.length) {
                if (fileLoaderPriorityQueueArr[i].getCount() > 0 || this.largeFilesQueue[i].getCount() > 0) {
                    FileLog.m989d("download queue: dc" + (i + 1) + " account=" + this.currentAccount + " small_operations=" + this.smallFilesQueue[i].getCount() + " large_operations=" + this.largeFilesQueue[i].getCount());
                }
                i++;
            } else {
                dumpFilesQueue();
                return;
            }
        }
    }

    public void dumpFilesQueue() {
        if (BuildVars.LOGS_ENABLED) {
            fileLoaderQueue.cancelRunnable(this.dumpFilesQueueRunnable);
            fileLoaderQueue.postRunnable(this.dumpFilesQueueRunnable, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        }
    }

    public void uploadFile(final String str, final Utilities.Callback<TLRPC.InputFile> callback) {
        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadFile$19(notificationCenterDelegateArr);
            }
        };
        final NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr = {new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                FileLoader.m5102$r8$lambda$gKJsZClCE1qk51wAobZ3vhvknU(str, callback, runnable, i, i2, objArr);
            }
        }};
        getNotificationCenter().addObserver(notificationCenterDelegateArr[0], NotificationCenter.fileUploaded);
        getNotificationCenter().addObserver(notificationCenterDelegateArr[0], NotificationCenter.fileUploadFailed);
        uploadFile(str, false, false, 67108864);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadFile$19(NotificationCenter.NotificationCenterDelegate[] notificationCenterDelegateArr) {
        getNotificationCenter().removeObserver(notificationCenterDelegateArr[0], NotificationCenter.fileUploaded);
        getNotificationCenter().removeObserver(notificationCenterDelegateArr[0], NotificationCenter.fileUploadFailed);
    }

    /* JADX INFO: renamed from: $r8$lambda$gKJsZClCE1qk51wAobZ3v-hvknU, reason: not valid java name */
    public static /* synthetic */ void m5102$r8$lambda$gKJsZClCE1qk51wAobZ3vhvknU(String str, Utilities.Callback callback, Runnable runnable, int i, int i2, Object[] objArr) {
        if (i == NotificationCenter.fileUploaded) {
            if (objArr[0] == str) {
                callback.run((TLRPC.InputFile) objArr[1]);
                runnable.run();
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileUploadFailed && objArr[0] == str) {
            callback.run(null);
            runnable.run();
        }
    }
}
