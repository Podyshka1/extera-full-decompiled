package org.telegram.messenger;

import com.exteragram.messenger.ExteraConfig;
import com.google.android.gms.cast.HlsSegmentFormat;
import com.google.android.gms.cast.MediaError;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Scanner;
import java.util.concurrent.CountDownLatch;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import kotlin.UByte;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.utils.ImmutableByteArrayOutputStream;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Storage.CacheModel;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class FileLoadOperation {
    private static final int FINISH_CODE_DEFAULT = 0;
    private static final int FINISH_CODE_FILE_ALREADY_EXIST = 1;
    public static ImmutableByteArrayOutputStream filesQueueByteBuffer = null;
    private static int globalRequestPointer = 0;
    private static final int preloadMaxBytes = 2097152;
    private static final int stateCanceled = 4;
    private static final int stateCancelling = 5;
    private static final int stateDownloading = 1;
    private static final int stateFailed = 2;
    private static final int stateFinished = 3;
    private static final int stateIdle = 0;
    private final boolean FULL_LOGS;
    private boolean allowDisordererFileSave;
    private int bigFileSizeFrom;
    private long bytesCountPadding;
    private File cacheFileFinal;
    private boolean cacheFileFinalReady;
    private File cacheFileGzipTemp;
    private File cacheFileParts;
    private File cacheFilePreload;
    private File cacheFileTemp;
    private File cacheIvTemp;
    private final Runnable cancelAfterNoStreamListeners;
    private ArrayList<RequestInfo> cancelledRequestInfos;
    public volatile boolean caughtPremiumFloodWait;
    private byte[] cdnCheckBytes;
    private int cdnChunkCheckSize;
    private int cdnDatacenterId;
    private HashMap<Long, TLRPC.TL_fileHash> cdnHashes;
    private byte[] cdnIv;
    private byte[] cdnKey;
    private byte[] cdnToken;
    private volatile boolean closeFilePartsStreamOnWriteEnd;
    public int currentAccount;
    private int currentDownloadChunkSize;
    private int currentMaxDownloadRequests;
    private int currentType;
    private int datacenterId;
    private ArrayList<RequestInfo> delayedRequestInfos;
    private FileLoadOperationDelegate delegate;
    private long documentId;
    private int downloadChunkSize;
    private int downloadChunkSizeAnimation;
    private int downloadChunkSizeBig;
    private long downloadedBytes;
    private boolean encryptFile;
    private byte[] encryptIv;
    private byte[] encryptKey;
    private String ext;
    private FilePathDatabase.FileMeta fileMetadata;
    private String fileName;
    private RandomAccessFile fileOutputStream;
    private RandomAccessFile filePartsStream;
    private RandomAccessFile fileReadStream;
    private Runnable fileWriteRunnable;
    private RandomAccessFile fiv;
    private boolean forceSmallChunk;
    private long foundMoovSize;
    private int initialDatacenterId;
    private boolean isCdn;
    private boolean isForceRequest;
    private boolean isPreloadVideoOperation;
    public boolean isStory;
    private boolean isStream;
    private byte[] iv;
    private byte[] key;
    protected long lastProgressUpdateTime;
    protected TLRPC.InputFileLocation location;
    private int maxCdnParts;
    private int maxDownloadRequests;
    private int maxDownloadRequestsAnimation;
    private int maxDownloadRequestsBig;
    private int moovFound;
    private long nextAtomOffset;
    private boolean nextPartWasPreloaded;
    private long nextPreloadDownloadOffset;
    private ArrayList<Range> notCheckedCdnRanges;
    private ArrayList<Range> notLoadedBytesRanges;
    private volatile ArrayList<Range> notLoadedBytesRangesCopy;
    private ArrayList<Range> notRequestedBytesRanges;
    public Object parentObject;
    public FilePathDatabase.PathData pathSaveData;
    private volatile boolean paused;
    public boolean preFinished;
    private boolean preloadFinished;
    private long preloadNotRequestedBytesCount;
    private int preloadPrefixSize;
    private RandomAccessFile preloadStream;
    private int preloadStreamFileOffset;
    private byte[] preloadTempBuffer;
    private int preloadTempBufferCount;
    private HashMap<Long, PreloadRange> preloadedBytesRanges;
    private int priority;
    private FileLoaderPriorityQueue priorityQueue;
    private RequestInfo priorityRequestInfo;
    private int renameRetryCount;
    public ArrayList<RequestInfo> requestInfos;
    private long requestedBytesCount;
    private HashMap<Long, Integer> requestedPreloadedBytesRanges;
    private boolean requestedReference;
    private boolean requestingCdnOffsets;
    protected boolean requestingReference;
    private int requestsCount;
    private boolean reuploadingCdn;
    private long startTime;
    private boolean started;
    private volatile int state;
    private String storeFileName;
    private File storePath;
    FileLoadOperationStream stream;
    private ArrayList<FileLoadOperationStream> streamListeners;
    long streamOffset;
    boolean streamPriority;
    private long streamPriorityStartOffset;
    private long streamStartOffset;
    private boolean supportsPreloading;
    private File tempPath;
    public long totalBytesCount;
    private int totalPreloadedBytes;
    long totalTime;
    public final ArrayList<Integer> uiRequestTokens;
    private boolean ungzip;
    private WebFile webFile;
    private TLRPC.InputWebFileLocation webLocation;
    private volatile boolean writingToFilePartsStream;
    public static volatile DispatchQueue filesQueue = new DispatchQueue("writeFileQueue");
    private static final Object lockObject = new Object();

    public interface FileLoadOperationDelegate {
        void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2);

        void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i);

        void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file);

        void didPreFinishLoading(FileLoadOperation fileLoadOperation, File file);

        boolean hasAnotherRefOnFile(String str);

        boolean isLocallyCreatedFile(String str);

        void saveFilePath(FilePathDatabase.PathData pathData, File file);
    }

    public static class RequestInfo {
        public boolean cancelled;
        public boolean cancelling;
        public int chunkSize;
        public int connectionType;
        private boolean forceSmallChunk;
        private long offset;
        public long requestStartTime;
        public int requestToken;
        private TLRPC.TL_upload_file response;
        private TLRPC.TL_upload_cdnFile responseCdn;
        private TLRPC.TL_upload_webFile responseWeb;
        public Runnable whenCancelled;
    }

    public void setStream(final FileLoadOperationStream fileLoadOperationStream, boolean z, long j) {
        this.stream = fileLoadOperationStream;
        this.streamOffset = j;
        this.streamPriority = z;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setStream$0(fileLoadOperationStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStream$0(FileLoadOperationStream fileLoadOperationStream) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (fileLoadOperationStream != null && !this.streamListeners.contains(fileLoadOperationStream)) {
            this.streamListeners.add(fileLoadOperationStream);
        }
        if (!this.streamListeners.isEmpty()) {
            Utilities.stageQueue.cancelRunnable(this.cancelAfterNoStreamListeners);
        }
        if (fileLoadOperationStream == null || this.state == 1 || this.state == 0) {
            return;
        }
        fileLoadOperationStream.newDataAvailable();
    }

    public int getPositionInQueue() {
        return getQueue().getPosition(this);
    }

    public boolean checkPrefixPreloadFinished() {
        int i = this.preloadPrefixSize;
        if (i > 0 && this.downloadedBytes > i) {
            ArrayList<Range> arrayList = this.notLoadedBytesRanges;
            if (arrayList == null) {
                return true;
            }
            long jMin = LongCompanionObject.MAX_VALUE;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                try {
                    jMin = Math.min(jMin, arrayList.get(i2).start);
                } catch (Throwable th) {
                    FileLog.m992e(th);
                    return true;
                }
            }
            if (jMin > this.preloadPrefixSize) {
                return true;
            }
        }
        return false;
    }

    public static class Range {
        private long end;
        private long start;

        private Range(long j, long j2) {
            this.start = j;
            this.end = j2;
        }

        public String toString() {
            return "Range{start=" + this.start + ", end=" + this.end + '}';
        }
    }

    public static class PreloadRange {
        private long fileOffset;
        private long length;

        private PreloadRange(long j, long j2) {
            this.fileOffset = j;
            this.length = j2;
        }
    }

    private void updateParams() {
        if (ExteraConfig.getDownloadSpeedBoost() == 2) {
            this.downloadChunkSizeBig = 1048576;
            this.maxDownloadRequestsBig = 12;
            this.maxDownloadRequests = 12;
        } else if ((this.preloadPrefixSize > 0 || ExteraConfig.getDownloadSpeedBoost() == 1 || MessagesController.getInstance(this.currentAccount).getfileExperimentalParams) && !this.forceSmallChunk) {
            this.downloadChunkSizeBig = 524288;
            this.maxDownloadRequestsBig = 8;
            this.maxDownloadRequests = 8;
        } else {
            this.downloadChunkSizeBig = 131072;
            this.maxDownloadRequestsBig = 4;
            this.maxDownloadRequests = 4;
        }
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / ((long) this.downloadChunkSizeBig));
    }

    public FileLoadOperation(ImageLocation imageLocation, Object obj, String str, long j) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = 32768;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / ((long) 131072));
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        this.parentObject = obj;
        this.isStory = obj instanceof TL_stories.TL_storyItem;
        this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
        this.isStream = imageLocation.imageType == 2;
        if (imageLocation.isEncrypted()) {
            TLRPC.TL_inputEncryptedFileLocation tL_inputEncryptedFileLocation = new TLRPC.TL_inputEncryptedFileLocation();
            this.location = tL_inputEncryptedFileLocation;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation.location;
            long j2 = tL_fileLocationToBeDeprecated.volume_id;
            tL_inputEncryptedFileLocation.id = j2;
            tL_inputEncryptedFileLocation.volume_id = j2;
            tL_inputEncryptedFileLocation.local_id = tL_fileLocationToBeDeprecated.local_id;
            tL_inputEncryptedFileLocation.access_hash = imageLocation.access_hash;
            byte[] bArr = new byte[32];
            this.iv = bArr;
            System.arraycopy(imageLocation.iv, 0, bArr, 0, bArr.length);
            this.key = imageLocation.key;
        } else if (imageLocation.photoPeer != null) {
            TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = new TLRPC.TL_inputPeerPhotoFileLocation();
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated2 = imageLocation.location;
            long j3 = tL_fileLocationToBeDeprecated2.volume_id;
            tL_inputPeerPhotoFileLocation.id = j3;
            tL_inputPeerPhotoFileLocation.volume_id = j3;
            tL_inputPeerPhotoFileLocation.local_id = tL_fileLocationToBeDeprecated2.local_id;
            tL_inputPeerPhotoFileLocation.photo_id = imageLocation.photoId;
            tL_inputPeerPhotoFileLocation.big = imageLocation.photoPeerType == 0;
            tL_inputPeerPhotoFileLocation.peer = imageLocation.photoPeer;
            this.location = tL_inputPeerPhotoFileLocation;
        } else if (imageLocation.stickerSet != null) {
            TLRPC.TL_inputStickerSetThumb tL_inputStickerSetThumb = new TLRPC.TL_inputStickerSetThumb();
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated3 = imageLocation.location;
            long j4 = tL_fileLocationToBeDeprecated3.volume_id;
            tL_inputStickerSetThumb.id = j4;
            tL_inputStickerSetThumb.volume_id = j4;
            tL_inputStickerSetThumb.local_id = tL_fileLocationToBeDeprecated3.local_id;
            tL_inputStickerSetThumb.thumb_version = imageLocation.thumbVersion;
            tL_inputStickerSetThumb.stickerset = imageLocation.stickerSet;
            this.location = tL_inputStickerSetThumb;
        } else if (imageLocation.thumbSize != null) {
            if (imageLocation.photoId != 0) {
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                this.location = tL_inputPhotoFileLocation;
                tL_inputPhotoFileLocation.id = imageLocation.photoId;
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated4 = imageLocation.location;
                tL_inputPhotoFileLocation.volume_id = tL_fileLocationToBeDeprecated4.volume_id;
                tL_inputPhotoFileLocation.local_id = tL_fileLocationToBeDeprecated4.local_id;
                tL_inputPhotoFileLocation.access_hash = imageLocation.access_hash;
                tL_inputPhotoFileLocation.file_reference = imageLocation.file_reference;
                tL_inputPhotoFileLocation.thumb_size = imageLocation.thumbSize;
                if (imageLocation.imageType == 2) {
                    this.allowDisordererFileSave = true;
                }
            } else {
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                this.location = tL_inputDocumentFileLocation;
                long j5 = imageLocation.documentId;
                tL_inputDocumentFileLocation.id = j5;
                this.documentId = j5;
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated5 = imageLocation.location;
                tL_inputDocumentFileLocation.volume_id = tL_fileLocationToBeDeprecated5.volume_id;
                tL_inputDocumentFileLocation.local_id = tL_fileLocationToBeDeprecated5.local_id;
                tL_inputDocumentFileLocation.access_hash = imageLocation.access_hash;
                tL_inputDocumentFileLocation.file_reference = imageLocation.file_reference;
                tL_inputDocumentFileLocation.thumb_size = imageLocation.thumbSize;
            }
            TLRPC.InputFileLocation inputFileLocation = this.location;
            if (inputFileLocation.file_reference == null) {
                inputFileLocation.file_reference = new byte[0];
            }
        } else {
            TLRPC.TL_inputFileLocation tL_inputFileLocation = new TLRPC.TL_inputFileLocation();
            this.location = tL_inputFileLocation;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated6 = imageLocation.location;
            tL_inputFileLocation.volume_id = tL_fileLocationToBeDeprecated6.volume_id;
            tL_inputFileLocation.local_id = tL_fileLocationToBeDeprecated6.local_id;
            tL_inputFileLocation.secret = imageLocation.access_hash;
            byte[] bArr2 = imageLocation.file_reference;
            tL_inputFileLocation.file_reference = bArr2;
            if (bArr2 == null) {
                tL_inputFileLocation.file_reference = new byte[0];
            }
            this.allowDisordererFileSave = true;
        }
        int i = imageLocation.imageType;
        this.ungzip = i == 1 || i == 3;
        int i2 = imageLocation.dc_id;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        this.currentType = 16777216;
        this.totalBytesCount = j;
        this.ext = str == null ? "jpg" : str;
    }

    public FileLoadOperation(SecureDocument secureDocument) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = 32768;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / ((long) 131072));
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        TLRPC.TL_inputSecureFileLocation tL_inputSecureFileLocation = new TLRPC.TL_inputSecureFileLocation();
        this.location = tL_inputSecureFileLocation;
        TLRPC.TL_secureFile tL_secureFile = secureDocument.secureFile;
        tL_inputSecureFileLocation.id = tL_secureFile.id;
        tL_inputSecureFileLocation.access_hash = tL_secureFile.access_hash;
        this.datacenterId = tL_secureFile.dc_id;
        this.totalBytesCount = tL_secureFile.size;
        this.allowDisordererFileSave = true;
        this.currentType = 67108864;
        this.ext = ".jpg";
    }

    public FileLoadOperation(int i, WebFile webFile) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = 32768;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / ((long) 131072));
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        this.currentAccount = i;
        this.webFile = webFile;
        this.webLocation = webFile.location;
        this.totalBytesCount = webFile.size;
        int i2 = MessagesController.getInstance(i).webFileDatacenterId;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        String mimeTypePart = FileLoader.getMimeTypePart(webFile.mime_type);
        if (webFile.mime_type.startsWith("image/")) {
            this.currentType = 16777216;
        } else if (webFile.mime_type.equals("audio/ogg")) {
            this.currentType = ConnectionsManager.FileTypeAudio;
        } else if (webFile.mime_type.startsWith("video/")) {
            this.currentType = 33554432;
        } else {
            this.currentType = 67108864;
        }
        this.allowDisordererFileSave = true;
        this.ext = ImageLoader.getHttpUrlExtension(webFile.url, mimeTypePart);
    }

    public FileLoadOperation(TLRPC.Document document, Object obj) {
        int iLastIndexOf;
        this.FULL_LOGS = false;
        this.downloadChunkSize = 32768;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / ((long) 131072));
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        this.uiRequestTokens = new ArrayList<>();
        this.cancelAfterNoStreamListeners = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        updateParams();
        try {
            this.parentObject = obj;
            this.isStory = obj instanceof TL_stories.TL_storyItem;
            this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
            if (document instanceof TLRPC.TL_documentEncrypted) {
                TLRPC.TL_inputEncryptedFileLocation tL_inputEncryptedFileLocation = new TLRPC.TL_inputEncryptedFileLocation();
                this.location = tL_inputEncryptedFileLocation;
                tL_inputEncryptedFileLocation.id = document.id;
                tL_inputEncryptedFileLocation.access_hash = document.access_hash;
                int i = document.dc_id;
                this.datacenterId = i;
                this.initialDatacenterId = i;
                byte[] bArr = new byte[32];
                this.iv = bArr;
                System.arraycopy(document.iv, 0, bArr, 0, bArr.length);
                this.key = document.key;
            } else if (document instanceof TLRPC.TL_document) {
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                this.location = tL_inputDocumentFileLocation;
                long j = document.id;
                tL_inputDocumentFileLocation.id = j;
                this.documentId = j;
                tL_inputDocumentFileLocation.access_hash = document.access_hash;
                byte[] bArr2 = document.file_reference;
                tL_inputDocumentFileLocation.file_reference = bArr2;
                tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
                if (bArr2 == null) {
                    tL_inputDocumentFileLocation.file_reference = new byte[0];
                }
                int i2 = document.dc_id;
                this.datacenterId = i2;
                this.initialDatacenterId = i2;
                this.allowDisordererFileSave = true;
                int size = document.attributes.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    if (document.attributes.get(i3) instanceof TLRPC.TL_documentAttributeVideo) {
                        this.supportsPreloading = true;
                        this.preloadPrefixSize = document.attributes.get(i3).preload_prefix_size;
                        break;
                    }
                    i3++;
                }
            }
            this.ungzip = "application/x-tgsticker".equals(document.mime_type) || "application/x-tgwallpattern".equals(document.mime_type);
            long j2 = document.size;
            this.totalBytesCount = j2;
            if (this.key != null && j2 % 16 != 0) {
                long j3 = 16 - (j2 % 16);
                this.bytesCountPadding = j3;
                this.totalBytesCount = j2 + j3;
            }
            String documentFileName = FileLoader.getDocumentFileName(document);
            this.ext = documentFileName;
            if (documentFileName == null || (iLastIndexOf = documentFileName.lastIndexOf(46)) == -1) {
                this.ext = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                this.ext = this.ext.substring(iLastIndexOf);
            }
            if ("audio/ogg".equals(document.mime_type)) {
                this.currentType = ConnectionsManager.FileTypeAudio;
            } else if (FileLoader.isVideoMimeType(document.mime_type)) {
                this.currentType = 33554432;
            } else {
                this.currentType = 67108864;
            }
            if (this.ext.length() <= 1) {
                this.ext = FileLoader.getExtensionByMimeType(document.mime_type);
            }
        } catch (Exception e) {
            FileLog.m992e(e);
            onFail(true, 0);
        }
    }

    public void setEncryptFile(boolean z) {
        this.encryptFile = z;
        if (z) {
            this.allowDisordererFileSave = false;
        }
    }

    public int getDatacenterId() {
        return this.initialDatacenterId;
    }

    public void setForceRequest(boolean z) {
        this.isForceRequest = z;
    }

    public boolean isForceRequest() {
        return this.isForceRequest;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPaths(int i, String str, FileLoaderPriorityQueue fileLoaderPriorityQueue, File file, File file2, String str2) {
        this.storePath = file;
        this.tempPath = file2;
        this.currentAccount = i;
        this.fileName = str;
        this.storeFileName = str2;
        this.priorityQueue = fileLoaderPriorityQueue;
    }

    public FileLoaderPriorityQueue getQueue() {
        return this.priorityQueue;
    }

    public boolean wasStarted() {
        return this.started && !this.paused;
    }

    public int getCurrentType() {
        return this.currentType;
    }

    private void removePart(ArrayList<Range> arrayList, long j, long j2) {
        boolean z;
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Range range = arrayList.get(i2);
            if (j == range.end) {
                range.end = j2;
            } else if (j2 == range.start) {
                range.start = j;
            }
            z = true;
        }
        z = false;
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda21
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return FileLoadOperation.m5081$r8$lambda$jrrmjRfBdFxX5rOyA6qI6qziWE((FileLoadOperation.Range) obj, (FileLoadOperation.Range) obj2);
            }
        });
        while (i < arrayList.size() - 1) {
            Range range2 = arrayList.get(i);
            int i3 = i + 1;
            Range range3 = arrayList.get(i3);
            if (range2.end == range3.start) {
                range2.end = range3.end;
                arrayList.remove(i3);
                i--;
            }
            i++;
        }
        if (z) {
            return;
        }
        arrayList.add(new Range(j, j2));
    }

    /* JADX INFO: renamed from: $r8$lambda$jrrmjRfBdFxX5rOyA6qI-6qziWE, reason: not valid java name */
    public static /* synthetic */ int m5081$r8$lambda$jrrmjRfBdFxX5rOyA6qI6qziWE(Range range, Range range2) {
        if (range.start > range2.start) {
            return 1;
        }
        return range.start < range2.start ? -1 : 0;
    }

    private void addPart(ArrayList<Range> arrayList, long j, long j2, boolean z) {
        long j3;
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            Range range = arrayList.get(i);
            if (j > range.start) {
                if (j2 < range.end) {
                    j3 = j;
                    arrayList.add(0, new Range(range.start, j3));
                    range.start = j2;
                } else {
                    j3 = j;
                    if (j3 < range.end) {
                        range.end = j3;
                    }
                }
                z2 = true;
                break;
            }
            if (j2 >= range.end) {
                arrayList.remove(i);
            } else if (j2 > range.start) {
                range.start = j2;
            }
            j3 = j;
            z2 = true;
            break;
        }
        j3 = j;
        if (z) {
            if (z2) {
                final ArrayList arrayList2 = new ArrayList(arrayList);
                if (this.fileWriteRunnable != null) {
                    filesQueue.cancelRunnable(this.fileWriteRunnable);
                }
                synchronized (this) {
                    this.writingToFilePartsStream = true;
                }
                DispatchQueue dispatchQueue = filesQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$addPart$2(arrayList2);
                    }
                };
                this.fileWriteRunnable = runnable;
                dispatchQueue.postRunnable(runnable);
                notifyStreamListeners();
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m990e(this.cacheFileFinal + " downloaded duplicate file part " + j3 + " - " + j2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addPart$2(ArrayList arrayList) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (this.filePartsStream == null) {
                return;
            }
            int size = arrayList.size();
            int i = (size * 16) + 4;
            ImmutableByteArrayOutputStream immutableByteArrayOutputStream = filesQueueByteBuffer;
            if (immutableByteArrayOutputStream == null) {
                filesQueueByteBuffer = new ImmutableByteArrayOutputStream(i);
            } else {
                immutableByteArrayOutputStream.reset();
            }
            filesQueueByteBuffer.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                Range range = (Range) arrayList.get(i2);
                filesQueueByteBuffer.writeLong(range.start);
                filesQueueByteBuffer.writeLong(range.end);
            }
            synchronized (this) {
                try {
                    RandomAccessFile randomAccessFile = this.filePartsStream;
                    if (randomAccessFile == null) {
                        return;
                    }
                    randomAccessFile.seek(0L);
                    this.filePartsStream.write(filesQueueByteBuffer.buf, 0, i);
                    this.writingToFilePartsStream = false;
                    if (this.closeFilePartsStreamOnWriteEnd) {
                        try {
                            this.filePartsStream.getChannel().close();
                        } catch (Exception e) {
                            FileLog.m992e(e);
                        }
                        this.filePartsStream.close();
                        this.filePartsStream = null;
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            FileLog.m992e(e2);
            if (AndroidUtilities.isENOSPC(e2)) {
                LaunchActivity.checkFreeDiscSpaceStatic(1);
            } else if (AndroidUtilities.isEROFS(e2)) {
                SharedConfig.checkSdCard(this.cacheFileFinal);
            }
        }
        this.totalTime += System.currentTimeMillis() - jCurrentTimeMillis;
    }

    private void notifyStreamListeners() {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.streamListeners.get(i).newDataAvailable();
            }
        }
    }

    public File getCacheFileFinal() {
        return this.cacheFileFinal;
    }

    public File getCurrentFile() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final File[] fileArr = new File[1];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getCurrentFile$3(fileArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        return fileArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrentFile$3(File[] fileArr, CountDownLatch countDownLatch) {
        if (this.state == 3 && !this.preloadFinished) {
            fileArr[0] = this.cacheFileFinal;
        } else {
            fileArr[0] = this.cacheFileTemp;
        }
        countDownLatch.countDown();
    }

    public File getCurrentFileFast() {
        if (this.state == 3 && !this.preloadFinished && this.cacheFileFinalReady) {
            return this.cacheFileFinal;
        }
        return this.cacheFileTemp;
    }

    private long getDownloadedLengthFromOffsetInternal(ArrayList<Range> arrayList, long j, long j2) {
        long j3;
        if (arrayList == null || this.state == 3 || arrayList.isEmpty()) {
            if (this.state == 3) {
                return j2;
            }
            long j4 = this.downloadedBytes;
            if (j4 == 0) {
                return 0L;
            }
            return Math.min(j2, Math.max(j4 - j, 0L));
        }
        int size = arrayList.size();
        Range range = null;
        int i = 0;
        while (true) {
            if (i >= size) {
                j3 = j2;
                break;
            }
            Range range2 = arrayList.get(i);
            if (j <= range2.start && (range == null || range2.start < range.start)) {
                range = range2;
            }
            if (range2.start <= j && range2.end > j) {
                j3 = 0;
                break;
            }
            i++;
        }
        if (j3 == 0) {
            return 0L;
        }
        if (range != null) {
            return Math.min(j2, range.start - j);
        }
        return Math.min(j2, Math.max(this.totalBytesCount - j, 0L));
    }

    public float getDownloadedLengthFromOffset(float f) {
        ArrayList<Range> arrayList = this.notLoadedBytesRangesCopy;
        if (this.totalBytesCount == 0 || arrayList == null) {
            return 0.0f;
        }
        return f + (getDownloadedLengthFromOffsetInternal(arrayList, (int) (r4 * f), r4) / this.totalBytesCount);
    }

    public long[] getDownloadedLengthFromOffset(final long j, final long j2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[2];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getDownloadedLengthFromOffset$4(jArr, j, j2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception unused) {
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadedLengthFromOffset$4(long[] jArr, long j, long j2, CountDownLatch countDownLatch) {
        FileLoadOperation fileLoadOperation;
        try {
            fileLoadOperation = this;
        } catch (Throwable th) {
            th = th;
            fileLoadOperation = this;
        }
        try {
            jArr[0] = fileLoadOperation.getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j, j2);
        } catch (Throwable th2) {
            th = th2;
            FileLog.m992e(th);
            jArr[0] = 0;
        }
        if (fileLoadOperation.state == 3) {
            jArr[1] = 1;
        } else if (fileLoadOperation.state == 4) {
            jArr[1] = -1;
        }
        countDownLatch.countDown();
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getDocumentId() {
        return this.documentId;
    }

    public void removeStreamListener(final FileLoadOperationStream fileLoadOperationStream) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeStreamListener$5(fileLoadOperationStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeStreamListener$5(FileLoadOperationStream fileLoadOperationStream) {
        if (this.streamListeners == null) {
            return;
        }
        FileLog.m990e("FileLoadOperation " + getFileName() + " removing stream listener " + fileLoadOperationStream);
        this.streamListeners.remove(fileLoadOperationStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        pause();
        FileLoader.getInstance(this.currentAccount).cancelLoadFile(getFileName());
    }

    private void copyNotLoadedRanges() {
        if (this.notLoadedBytesRanges == null) {
            return;
        }
        this.notLoadedBytesRangesCopy = new ArrayList<>(this.notLoadedBytesRanges);
    }

    public void pause() {
        if (this.state != 1) {
            return;
        }
        this.paused = true;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$pause$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pause$7() {
        if (this.isStory) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("debug_loading: " + this.cacheFileFinal.getName() + " pause operation, clear requests");
            }
            clearOperation(null, false, true);
            return;
        }
        for (int i = 0; i < this.requestInfos.size(); i++) {
            ConnectionsManager.getInstance(this.currentAccount).failNotRunningRequest(this.requestInfos.get(i).requestToken);
        }
    }

    public boolean start() {
        return start(this.stream, this.streamOffset, this.streamPriority);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x071f  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x07a3  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x07cf  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0810  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x089f A[Catch: Exception -> 0x08a3, TRY_LEAVE, TryCatch #10 {Exception -> 0x08a3, blocks: (B:332:0x088e, B:334:0x089f), top: B:391:0x088e }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08d1  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x08e2  */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean start(final FileLoadOperationStream fileLoadOperationStream, final long j, final boolean z) {
        long j2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Object obj;
        boolean zExists;
        int i;
        boolean z2;
        boolean z3;
        ?? r3;
        long j3;
        long j4;
        ArrayList<Range> arrayList;
        ?? r7;
        long j5;
        int i2;
        int i3;
        long length;
        long j6;
        int i4;
        int i5;
        boolean z4;
        RandomAccessFile randomAccessFile;
        String str8;
        String str9;
        this.startTime = System.currentTimeMillis();
        updateParams();
        int i6 = 1;
        i6 = 1;
        i6 = 1;
        if (this.currentDownloadChunkSize == 0) {
            if (this.forceSmallChunk) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("debug_loading: restart with small chunk");
                }
                this.currentDownloadChunkSize = 32768;
                this.currentMaxDownloadRequests = 4;
            } else if (this.isStory) {
                this.currentDownloadChunkSize = this.downloadChunkSizeBig;
                this.currentMaxDownloadRequests = this.maxDownloadRequestsBig;
            } else if (this.isStream) {
                this.currentDownloadChunkSize = this.downloadChunkSizeAnimation;
                this.currentMaxDownloadRequests = this.maxDownloadRequestsAnimation;
            } else {
                boolean z5 = this.totalBytesCount >= ((long) this.bigFileSizeFrom);
                this.currentDownloadChunkSize = z5 ? this.downloadChunkSizeBig : this.downloadChunkSize;
                this.currentMaxDownloadRequests = z5 ? this.maxDownloadRequestsBig : this.maxDownloadRequests;
            }
        }
        final boolean z6 = this.state != 0;
        boolean z7 = this.paused;
        this.paused = false;
        if (fileLoadOperationStream != null) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$9(z, j, fileLoadOperationStream, z6);
                }
            });
        } else if (z6) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$10();
                }
            });
        }
        if (z6) {
            return z7;
        }
        if (this.location == null && this.webLocation == null) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m989d("loadOperation: no location, failing");
            }
            onFail(true, 0);
            return false;
        }
        int i7 = this.currentDownloadChunkSize;
        this.streamStartOffset = (j / ((long) i7)) * ((long) i7);
        if (this.allowDisordererFileSave) {
            long j7 = this.totalBytesCount;
            if (j7 > 0 && j7 > i7) {
                this.notLoadedBytesRanges = new ArrayList<>();
                this.notRequestedBytesRanges = new ArrayList<>();
            }
        }
        if (this.webLocation != null) {
            String strMD5 = Utilities.MD5(this.webFile.url);
            if (this.encryptFile) {
                str8 = strMD5 + ".temp.enc";
                str2 = strMD5 + "." + this.ext + ".enc";
                str9 = this.key != null ? strMD5 + "_64.iv.enc" : null;
                String str10 = str8;
                str3 = str9;
                str = str10;
                j2 = 0;
            } else {
                String str11 = strMD5 + ".temp";
                String str12 = strMD5 + "." + this.ext;
                if (this.key != null) {
                    str9 = strMD5 + "_64.iv";
                    str8 = str11;
                    str2 = str12;
                    String str102 = str8;
                    str3 = str9;
                    str = str102;
                    j2 = 0;
                } else {
                    str8 = str11;
                    str2 = str12;
                    String str1022 = str8;
                    str3 = str9;
                    str = str1022;
                    j2 = 0;
                }
            }
            this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
            this.cancelledRequestInfos = new ArrayList<>();
            this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
            this.state = 1;
            obj = this.parentObject;
            if (!(obj instanceof TLRPC.TL_theme)) {
                this.cacheFileFinal = new File(ApplicationLoader.getFilesDirFixed(), "remote" + ((TLRPC.TL_theme) obj).id + ".attheme");
            } else if (!this.encryptFile) {
                this.cacheFileFinal = new File(this.storePath, this.storeFileName);
            } else {
                this.cacheFileFinal = new File(this.storePath, str2);
            }
            zExists = this.cacheFileFinal.exists();
            this.cacheFileFinalReady = zExists;
            if (zExists) {
                if (!(this.parentObject instanceof TLRPC.TL_theme)) {
                    long j8 = this.totalBytesCount;
                    if (j8 != j2 && !this.ungzip && j8 != this.cacheFileFinal.length()) {
                        if (!this.delegate.isLocallyCreatedFile(this.cacheFileFinal.toString())) {
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m989d("debug_loading: delete existing file cause file size mismatch " + this.cacheFileFinal.getName() + " totalSize=" + this.totalBytesCount + " existingFileSize=" + this.cacheFileFinal.length());
                            }
                            if (!this.delegate.hasAnotherRefOnFile(this.cacheFileFinal.toString())) {
                                this.cacheFileFinal.delete();
                            }
                            zExists = false;
                        }
                    }
                }
            }
            if (zExists) {
                this.cacheFileTemp = new File(this.tempPath, str);
                if (this.ungzip) {
                    this.cacheFileGzipTemp = new File(this.tempPath, str.concat(".gz"));
                }
                if (this.encryptFile) {
                    File file = new File(FileLoader.getInternalCacheDir(), str2.concat(".key"));
                    try {
                        randomAccessFile = new RandomAccessFile(file, "rws");
                        long length2 = file.length();
                        byte[] bArr = new byte[32];
                        this.encryptKey = bArr;
                        this.encryptIv = new byte[16];
                        if (length2 > j2 && length2 % 48 == j2) {
                            randomAccessFile.read(bArr, 0, 32);
                            randomAccessFile.read(this.encryptIv, 0, 16);
                            z4 = false;
                        } else {
                            Utilities.random.nextBytes(bArr);
                            Utilities.random.nextBytes(this.encryptIv);
                            randomAccessFile.write(this.encryptKey);
                            randomAccessFile.write(this.encryptIv);
                            z4 = true;
                        }
                    } catch (Exception e) {
                        e = e;
                        z4 = false;
                    }
                    try {
                        try {
                            randomAccessFile.getChannel().close();
                        } catch (Exception e2) {
                            FileLog.m992e(e2);
                        }
                        randomAccessFile.close();
                        z3 = z4;
                    } catch (Exception e3) {
                        e = e3;
                        if (AndroidUtilities.isENOSPC(e)) {
                            LaunchActivity.checkFreeDiscSpaceStatic(1);
                            FileLog.m992e(e);
                            z3 = z4;
                        } else if (AndroidUtilities.isEROFS(e)) {
                            SharedConfig.checkSdCard(this.cacheFileFinal);
                            FileLog.m992e(e);
                            z3 = z4;
                        } else {
                            FileLog.m992e(e);
                            z3 = z4;
                        }
                    }
                } else {
                    z3 = false;
                }
                final boolean[] zArr = {false};
                long j9 = 8;
                if (!this.supportsPreloading || str5 == null) {
                    r3 = 1;
                    j3 = 8;
                    j4 = 2;
                } else {
                    this.cacheFilePreload = new File(this.tempPath, str5);
                    try {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.cacheFilePreload, "rws");
                        this.preloadStream = randomAccessFile2;
                        length = randomAccessFile2.length();
                        this.preloadStreamFileOffset = 1;
                        j6 = 1;
                    } catch (Exception e4) {
                        e = e4;
                        i2 = i6;
                        j3 = j9;
                        j4 = 2;
                    }
                    if (length > 1) {
                        zArr[0] = this.preloadStream.readByte() != 0;
                        while (j6 < length) {
                            if (length - j6 < j9) {
                                break;
                            }
                            long j10 = this.preloadStream.readLong();
                            if (length - (j6 + j9) < j9 || j10 < j2) {
                                break;
                            }
                            j4 = 2;
                            try {
                                if (j10 <= this.totalBytesCount) {
                                    long j11 = this.preloadStream.readLong();
                                    long j12 = j6 + 16;
                                    if (length - j12 >= j11 && j11 <= this.currentDownloadChunkSize) {
                                        PreloadRange preloadRange = new PreloadRange(j12, j11);
                                        long j13 = j12 + j11;
                                        this.preloadStream.seek(j13);
                                        if (length - j13 >= 24) {
                                            j3 = j9;
                                            try {
                                                long j14 = this.preloadStream.readLong();
                                                this.foundMoovSize = j14;
                                                if (j14 != j2) {
                                                    i4 = i6 == true ? 1 : 0;
                                                    try {
                                                        this.moovFound = this.nextPreloadDownloadOffset > this.totalBytesCount / 2 ? 2 : i4 == true ? 1 : 0;
                                                        this.preloadNotRequestedBytesCount = j14;
                                                        i5 = i4;
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        i2 = i4;
                                                        FileLog.m992e(e);
                                                        i3 = i2;
                                                        r3 = i3;
                                                        if (!this.isPreloadVideoOperation) {
                                                        }
                                                        if (str4 != null) {
                                                        }
                                                        if (this.fileMetadata != null) {
                                                        }
                                                        if (this.cacheFileTemp.exists()) {
                                                        }
                                                        arrayList = this.notLoadedBytesRanges;
                                                        if (arrayList != null) {
                                                        }
                                                        if (BuildVars.LOGS_ENABLED) {
                                                        }
                                                        if (str3 != null) {
                                                        }
                                                        if (!this.isPreloadVideoOperation) {
                                                        }
                                                        updateProgress();
                                                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.cacheFileTemp, "rws");
                                                        this.fileOutputStream = randomAccessFile3;
                                                        j5 = this.downloadedBytes;
                                                        if (j5 != 0) {
                                                        }
                                                        r7 = 0;
                                                        if (this.fileOutputStream == null) {
                                                        }
                                                    }
                                                } else {
                                                    i5 = i6 == true ? 1 : 0;
                                                }
                                                this.nextPreloadDownloadOffset = this.preloadStream.readLong();
                                                this.nextAtomOffset = this.preloadStream.readLong();
                                                long j15 = j13 + 24;
                                                if (this.preloadedBytesRanges == null) {
                                                    this.preloadedBytesRanges = new HashMap<>();
                                                }
                                                if (this.requestedPreloadedBytesRanges == null) {
                                                    this.requestedPreloadedBytesRanges = new HashMap<>();
                                                }
                                                this.preloadedBytesRanges.put(Long.valueOf(j10), preloadRange);
                                                this.requestedPreloadedBytesRanges.put(Long.valueOf(j10), Integer.valueOf(i5));
                                                this.totalPreloadedBytes = (int) (((long) this.totalPreloadedBytes) + j11);
                                                this.preloadStreamFileOffset = (int) (((long) this.preloadStreamFileOffset) + j11 + 36);
                                                j9 = j3;
                                                j6 = j15;
                                                i6 = i5;
                                            } catch (Exception e6) {
                                                e = e6;
                                                i2 = i6 == true ? 1 : 0;
                                                FileLog.m992e(e);
                                                i3 = i2;
                                                r3 = i3;
                                                if (!this.isPreloadVideoOperation) {
                                                }
                                                if (str4 != null) {
                                                }
                                                if (this.fileMetadata != null) {
                                                }
                                                if (this.cacheFileTemp.exists()) {
                                                }
                                                arrayList = this.notLoadedBytesRanges;
                                                if (arrayList != null) {
                                                }
                                                if (BuildVars.LOGS_ENABLED) {
                                                }
                                                if (str3 != null) {
                                                }
                                                if (!this.isPreloadVideoOperation) {
                                                    copyNotLoadedRanges();
                                                }
                                                updateProgress();
                                                RandomAccessFile randomAccessFile32 = new RandomAccessFile(this.cacheFileTemp, "rws");
                                                this.fileOutputStream = randomAccessFile32;
                                                j5 = this.downloadedBytes;
                                                if (j5 != 0) {
                                                }
                                                r7 = 0;
                                                if (this.fileOutputStream == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i4 = i6 == true ? 1 : 0;
                                j3 = j9;
                                break;
                            } catch (Exception e7) {
                                e = e7;
                                i2 = i6 == true ? 1 : 0;
                                j3 = j9;
                            }
                        }
                        i4 = i6;
                        j3 = j9;
                        j4 = 2;
                        this.preloadStream.seek(this.preloadStreamFileOffset);
                        i3 = i4;
                        r3 = i3;
                        if (!this.isPreloadVideoOperation) {
                        }
                    } else {
                        i4 = i6;
                        j3 = j9;
                        j4 = 2;
                        this.preloadStream.seek(this.preloadStreamFileOffset);
                        i3 = i4;
                        r3 = i3;
                        if (!this.isPreloadVideoOperation) {
                            r3 = i3;
                            if (this.preloadedBytesRanges == null) {
                                this.cacheFilePreload = null;
                                try {
                                    RandomAccessFile randomAccessFile4 = this.preloadStream;
                                    r3 = i3;
                                    if (randomAccessFile4 != null) {
                                        try {
                                            randomAccessFile4.getChannel().close();
                                        } catch (Exception e8) {
                                            FileLog.m992e(e8);
                                        }
                                        this.preloadStream.close();
                                        this.preloadStream = null;
                                        r3 = i3;
                                    }
                                } catch (Exception e9) {
                                    FileLog.m992e(e9);
                                    r3 = i3;
                                }
                            }
                        }
                    }
                }
                if (str4 != null) {
                    this.cacheFileParts = new File(this.tempPath, str4);
                    if (!this.cacheFileTemp.exists()) {
                        this.cacheFileParts.delete();
                    }
                    try {
                        RandomAccessFile randomAccessFile5 = new RandomAccessFile(this.cacheFileParts, "rws");
                        this.filePartsStream = randomAccessFile5;
                        long length3 = randomAccessFile5.length();
                        if (length3 % j3 == 4) {
                            int i8 = this.filePartsStream.readInt();
                            if (i8 <= (length3 - 4) / j4) {
                                for (int i9 = 0; i9 < i8; i9++) {
                                    long j16 = this.filePartsStream.readLong();
                                    long j17 = this.filePartsStream.readLong();
                                    this.notLoadedBytesRanges.add(new Range(j16, j17));
                                    this.notRequestedBytesRanges.add(new Range(j16, j17));
                                }
                            }
                        }
                    } catch (Exception e10) {
                        FileLog.m992e(e10);
                    }
                }
                if (this.fileMetadata != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().saveFileDialogId(this.cacheFileParts, this.fileMetadata);
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().saveFileDialogId(this.cacheFileTemp, this.fileMetadata);
                }
                if (this.cacheFileTemp.exists()) {
                    File file2 = this.cacheFileTemp;
                    if (z3) {
                        file2.delete();
                    } else {
                        long length4 = file2.length();
                        if (str3 != null && length4 % ((long) this.currentDownloadChunkSize) != j2) {
                            this.requestedBytesCount = j2;
                        } else {
                            long jFloorDiv = floorDiv(this.cacheFileTemp.length(), this.currentDownloadChunkSize) * ((long) this.currentDownloadChunkSize);
                            this.downloadedBytes = jFloorDiv;
                            this.requestedBytesCount = jFloorDiv;
                        }
                        ArrayList<Range> arrayList2 = this.notLoadedBytesRanges;
                        if (arrayList2 != null && arrayList2.isEmpty()) {
                            this.notLoadedBytesRanges.add(new Range(this.downloadedBytes, this.totalBytesCount));
                            this.notRequestedBytesRanges.add(new Range(this.downloadedBytes, this.totalBytesCount));
                        }
                    }
                } else {
                    ArrayList<Range> arrayList3 = this.notLoadedBytesRanges;
                    if (arrayList3 != null && arrayList3.isEmpty()) {
                        long j18 = 0;
                        this.notLoadedBytesRanges.add(new Range(j18, this.totalBytesCount));
                        this.notRequestedBytesRanges.add(new Range(j18, this.totalBytesCount));
                    }
                }
                arrayList = this.notLoadedBytesRanges;
                if (arrayList != null) {
                    this.downloadedBytes = this.totalBytesCount;
                    int size = arrayList.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        Range range = this.notLoadedBytesRanges.get(i10);
                        this.downloadedBytes -= range.end - range.start;
                    }
                    this.requestedBytesCount = this.downloadedBytes;
                }
                if (BuildVars.LOGS_ENABLED) {
                    boolean z8 = this.isPreloadVideoOperation;
                    File file3 = this.cacheFileTemp;
                    if (z8) {
                        FileLog.m989d("start preloading file to temp = " + file3);
                    } else {
                        FileLog.m989d("start loading file to temp = " + file3 + " final = " + this.cacheFileFinal + " priority" + this.priority);
                    }
                }
                if (str3 != null) {
                    this.cacheIvTemp = new File(this.tempPath, str3);
                    try {
                        this.fiv = new RandomAccessFile(this.cacheIvTemp, "rws");
                        long j19 = 0;
                        if (this.downloadedBytes != 0 && !z3) {
                            long length5 = this.cacheIvTemp.length();
                            if (length5 <= 0) {
                                this.downloadedBytes = j19;
                                this.requestedBytesCount = j19;
                            } else if (length5 % 64 == 0) {
                                this.fiv.read(this.iv, 0, 64);
                            } else {
                                j19 = 0;
                                this.downloadedBytes = j19;
                                this.requestedBytesCount = j19;
                            }
                        }
                    } catch (Exception e11) {
                        this.downloadedBytes = 0L;
                        this.requestedBytesCount = 0L;
                        if (AndroidUtilities.isENOSPC(e11)) {
                            LaunchActivity.checkFreeDiscSpaceStatic(r3);
                            FileLog.m992e(e11);
                        } else if (AndroidUtilities.isEROFS(e11)) {
                            SharedConfig.checkSdCard(this.cacheFileFinal);
                            FileLog.m992e(e11);
                        } else {
                            FileLog.m992e(e11);
                        }
                    }
                }
                if (!this.isPreloadVideoOperation && this.downloadedBytes != 0 && this.totalBytesCount > 0) {
                    copyNotLoadedRanges();
                }
                updateProgress();
                try {
                    RandomAccessFile randomAccessFile322 = new RandomAccessFile(this.cacheFileTemp, "rws");
                    this.fileOutputStream = randomAccessFile322;
                    j5 = this.downloadedBytes;
                    if (j5 != 0) {
                        randomAccessFile322.seek(j5);
                    }
                    r7 = 0;
                } catch (Exception e12) {
                    FileLog.m992e(e12);
                    if (AndroidUtilities.isENOSPC(e12)) {
                        LaunchActivity.checkFreeDiscSpaceStatic(r3);
                        onFail(r3, -1);
                        return false;
                    }
                    r7 = 0;
                    if (AndroidUtilities.isEROFS(e12)) {
                        SharedConfig.checkSdCard(this.cacheFileFinal);
                        FileLog.m992e(e12);
                        onFail(r3, -1);
                        return false;
                    }
                }
                if (this.fileOutputStream == null) {
                    onFail(r3, r7);
                    return r7;
                }
                this.started = r3;
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$start$11(zArr);
                    }
                });
                return r3;
            }
            this.started = true;
            try {
                onFinishLoadingFile(false, 1, false);
                FilePathDatabase.PathData pathData = this.pathSaveData;
                if (pathData != null) {
                    this.delegate.saveFilePath(pathData, this.cacheFileFinal);
                }
                return true;
            } catch (Exception e13) {
                FileLog.m992e(e13);
                if (AndroidUtilities.isENOSPC(e13)) {
                    z2 = true;
                    LaunchActivity.checkFreeDiscSpaceStatic(1);
                    i = -1;
                    onFail(true, -1);
                } else {
                    i = -1;
                    z2 = true;
                }
                if (AndroidUtilities.isEROFS(e13)) {
                    SharedConfig.checkSdCard(this.cacheFileFinal);
                    onFail(z2, i);
                    return false;
                }
                onFail(z2, 0);
                return z2;
            }
        }
        TLRPC.InputFileLocation inputFileLocation = this.location;
        long j20 = inputFileLocation.volume_id;
        j2 = 0;
        if (j20 != 0 && inputFileLocation.local_id != 0) {
            int i11 = this.datacenterId;
            if (i11 == Integer.MIN_VALUE || j20 == -2147483648L || i11 == 0) {
                onFail(true, 0);
                return false;
            }
            boolean z9 = this.encryptFile;
            TLRPC.InputFileLocation inputFileLocation2 = this.location;
            if (z9) {
                str6 = inputFileLocation2.volume_id + "_" + this.location.local_id + ".temp.enc";
                str2 = this.location.volume_id + "_" + this.location.local_id + "." + this.ext + ".enc";
                if (this.key != null) {
                    str7 = this.location.volume_id + "_" + this.location.local_id + "_64.iv.enc";
                    String str13 = str6;
                    str3 = str7;
                    str = str13;
                }
                str = str6;
                str3 = null;
            } else {
                str = inputFileLocation2.volume_id + "_" + this.location.local_id + ".temp";
                str2 = this.location.volume_id + "_" + this.location.local_id + "." + this.ext;
                str3 = this.key != null ? this.location.volume_id + "_" + this.location.local_id + "_64.iv" : null;
                str4 = this.notLoadedBytesRanges != null ? this.location.volume_id + "_" + this.location.local_id + "_64.pt" : null;
                str5 = this.location.volume_id + "_" + this.location.local_id + "_64.preload";
                this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
                this.cancelledRequestInfos = new ArrayList<>();
                this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
                this.state = 1;
                obj = this.parentObject;
                if (!(obj instanceof TLRPC.TL_theme)) {
                }
                zExists = this.cacheFileFinal.exists();
                this.cacheFileFinalReady = zExists;
                if (zExists) {
                }
                if (zExists) {
                }
            }
        } else {
            if (this.datacenterId == 0 || inputFileLocation.id == 0) {
                onFail(true, 0);
                return false;
            }
            boolean z10 = this.encryptFile;
            int i12 = this.datacenterId;
            if (z10) {
                str6 = i12 + "_" + this.location.id + ".temp.enc";
                str2 = this.datacenterId + "_" + this.location.id + this.ext + ".enc";
                if (this.key != null) {
                    str7 = this.datacenterId + "_" + this.location.id + "_64.iv.enc";
                    String str132 = str6;
                    str3 = str7;
                    str = str132;
                }
                str = str6;
                str3 = null;
            } else {
                str = i12 + "_" + this.location.id + ".temp";
                str2 = this.datacenterId + "_" + this.location.id + this.ext;
                str3 = this.key != null ? this.datacenterId + "_" + this.location.id + "_64.iv" : null;
                str4 = this.notLoadedBytesRanges != null ? this.datacenterId + "_" + this.location.id + "_64.pt" : null;
                str5 = this.datacenterId + "_" + this.location.id + "_64.preload";
                this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
                this.cancelledRequestInfos = new ArrayList<>();
                this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
                this.state = 1;
                obj = this.parentObject;
                if (!(obj instanceof TLRPC.TL_theme)) {
                }
                zExists = this.cacheFileFinal.exists();
                this.cacheFileFinalReady = zExists;
                if (zExists) {
                }
                if (zExists) {
                }
            }
        }
        str5 = null;
        str4 = null;
        this.requestInfos = new ArrayList<>(this.currentMaxDownloadRequests);
        this.cancelledRequestInfos = new ArrayList<>();
        this.delayedRequestInfos = new ArrayList<>(this.currentMaxDownloadRequests - 1);
        this.state = 1;
        obj = this.parentObject;
        if (!(obj instanceof TLRPC.TL_theme)) {
        }
        zExists = this.cacheFileFinal.exists();
        this.cacheFileFinalReady = zExists;
        if (zExists) {
        }
        if (zExists) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$9(boolean z, long j, FileLoadOperationStream fileLoadOperationStream, boolean z2) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        int i = this.currentDownloadChunkSize;
        if (z) {
            long j2 = (j / ((long) i)) * ((long) i);
            RequestInfo requestInfo = this.priorityRequestInfo;
            if (requestInfo != null && requestInfo.offset != j2) {
                RequestInfo requestInfo2 = this.priorityRequestInfo;
                final int i2 = requestInfo2.requestToken;
                this.requestInfos.remove(requestInfo2);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$start$8(i2);
                    }
                });
                this.requestedBytesCount -= (long) this.currentDownloadChunkSize;
                removePart(this.notRequestedBytesRanges, this.priorityRequestInfo.offset, this.priorityRequestInfo.offset + ((long) this.currentDownloadChunkSize));
                if (this.priorityRequestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.priorityRequestInfo.requestToken, true);
                    this.requestsCount--;
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m989d("frame get cancel request at offset " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (this.priorityRequestInfo == null) {
                this.streamPriorityStartOffset = j2;
            }
        } else {
            this.streamStartOffset = (j / ((long) i)) * ((long) i);
        }
        if (!this.streamListeners.contains(fileLoadOperationStream)) {
            this.streamListeners.add(fileLoadOperationStream);
            FileLog.m990e("FileLoadOperation " + getFileName() + " start, adding stream " + fileLoadOperationStream);
        }
        if (!this.streamListeners.isEmpty()) {
            Utilities.stageQueue.cancelRunnable(this.cancelAfterNoStreamListeners);
        }
        if (z2) {
            if (this.preloadedBytesRanges != null && getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, this.streamStartOffset, 1L) == 0 && this.preloadedBytesRanges.get(Long.valueOf(this.streamStartOffset)) != null) {
                this.nextPartWasPreloaded = true;
            }
            startDownloadRequest(-1);
            this.nextPartWasPreloaded = false;
        }
        if (this.notLoadedBytesRanges != null) {
            notifyStreamListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$8(int i) {
        this.uiRequestTokens.remove(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$10() {
        startDownloadRequest(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$11(boolean[] zArr) {
        boolean z = this.isPreloadVideoOperation && zArr[0];
        int i = this.preloadPrefixSize;
        boolean z2 = i > 0 && this.downloadedBytes >= ((long) i) && canFinishPreload();
        long j = this.totalBytesCount;
        if (j != 0 && (z || this.downloadedBytes == j || z2)) {
            try {
                onFinishLoadingFile(false, 1, true);
                return;
            } catch (Exception unused) {
                onFail(true, 0);
                return;
            }
        }
        startDownloadRequest(-1);
    }

    public void updateProgress() {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            long j = this.downloadedBytes;
            long j2 = this.totalBytesCount;
            if (j == j2 || j2 <= 0) {
                return;
            }
            fileLoadOperationDelegate.didChangedLoadProgress(this, j, j2);
        }
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void setIsPreloadVideoOperation(final boolean z) {
        if (this.isPreloadVideoOperation != z) {
            if (!z || this.totalBytesCount > 2097152) {
                FileLog.m990e("setIsPreloadVideoOperation " + z + " file=" + this.fileName);
                if (!z && this.isPreloadVideoOperation) {
                    if (this.state == 3) {
                        this.isPreloadVideoOperation = z;
                        this.state = 0;
                        this.preloadFinished = false;
                        start();
                        return;
                    }
                    if (this.state == 1) {
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$setIsPreloadVideoOperation$12(z);
                            }
                        });
                        return;
                    } else {
                        this.isPreloadVideoOperation = z;
                        return;
                    }
                }
                this.isPreloadVideoOperation = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsPreloadVideoOperation$12(boolean z) {
        this.requestedBytesCount = 0L;
        clearOperation(null, true, true);
        this.isPreloadVideoOperation = z;
        startDownloadRequest(-1);
    }

    public boolean isPreloadVideoOperation() {
        return this.isPreloadVideoOperation;
    }

    public boolean isPreloadFinished() {
        return this.preloadFinished;
    }

    public void cancel() {
        cancel(false);
    }

    private void cancel(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancel$13(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cancelOnStage, reason: merged with bridge method [inline-methods] */
    public void lambda$cancel$13(boolean z) {
        if (this.state != 3 && this.state != 2) {
            this.state = 5;
            cancelRequests(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$cancelOnStage$14();
                }
            });
        }
        if (z) {
            File file = this.cacheFileFinal;
            if (file != null) {
                try {
                    if (!file.delete()) {
                        this.cacheFileFinal.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
            }
            File file2 = this.cacheFileTemp;
            if (file2 != null) {
                try {
                    if (!file2.delete()) {
                        this.cacheFileTemp.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.m992e(e2);
                }
            }
            File file3 = this.cacheFileParts;
            if (file3 != null) {
                try {
                    if (!file3.delete()) {
                        this.cacheFileParts.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.m992e(e3);
                }
            }
            File file4 = this.cacheIvTemp;
            if (file4 != null) {
                try {
                    if (!file4.delete()) {
                        this.cacheIvTemp.deleteOnExit();
                    }
                } catch (Exception e4) {
                    FileLog.m992e(e4);
                }
            }
            File file5 = this.cacheFilePreload;
            if (file5 != null) {
                try {
                    if (file5.delete()) {
                        return;
                    }
                    this.cacheFilePreload.deleteOnExit();
                } catch (Exception e5) {
                    FileLog.m992e(e5);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelOnStage$14() {
        if (this.state == 5) {
            onFail(false, 1);
        }
    }

    private void cancelRequests(final Runnable runnable) {
        FileLog.m989d("cancelRequests".concat(runnable != null ? " with callback" : _UrlKt.FRAGMENT_ENCODE_SET));
        final int[] iArr = new int[1];
        if (this.requestInfos != null) {
            int[] iArr2 = new int[2];
            for (int i = 0; i < this.requestInfos.size(); i++) {
                final RequestInfo requestInfo = this.requestInfos.get(i);
                if (requestInfo.requestToken != 0) {
                    requestInfo.cancelling = true;
                    if (runnable == null) {
                        requestInfo.cancelled = true;
                        FileLog.m989d("cancelRequests cancel " + requestInfo.requestToken);
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true);
                    } else {
                        requestInfo.whenCancelled = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.m5082$r8$lambda$nGf2vg6_qrzCPXWCMNer3l8Da0(requestInfo, iArr, runnable);
                            }
                        };
                        iArr[0] = iArr[0] + 1;
                        FileLog.m989d("cancelRequests cancel " + requestInfo.requestToken + " with callback");
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true, new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.m5072$r8$lambda$CDuAUjvsTX7Jq3JXybbY9NKqJ4(requestInfo);
                            }
                        });
                    }
                    char c2 = requestInfo.connectionType == 2 ? (char) 0 : (char) 1;
                    iArr2[c2] = iArr2[c2] + requestInfo.chunkSize;
                }
            }
            int i2 = 0;
            while (i2 < 2) {
                int i3 = i2 == 0 ? 2 : 65538;
                if (iArr2[i2] > 1048576) {
                    ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
                }
                i2++;
            }
        }
        if (runnable == null || iArr[0] != 0) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$nGf2vg6_qrzCPXWCMNer3l8-Da0, reason: not valid java name */
    public static /* synthetic */ void m5082$r8$lambda$nGf2vg6_qrzCPXWCMNer3l8Da0(RequestInfo requestInfo, int[] iArr, Runnable runnable) {
        requestInfo.whenCancelled = null;
        requestInfo.cancelled = true;
        int i = iArr[0] - 1;
        iArr[0] = i;
        if (i == 0) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$CDuAUjvsTX7Jq3JXybb-Y9NKqJ4, reason: not valid java name */
    public static /* synthetic */ void m5072$r8$lambda$CDuAUjvsTX7Jq3JXybbY9NKqJ4(RequestInfo requestInfo) {
        Runnable runnable = requestInfo.whenCancelled;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void cleanup() {
        try {
            RandomAccessFile randomAccessFile = this.fileOutputStream;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.getChannel().close();
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                this.fileOutputStream.close();
                this.fileOutputStream = null;
            }
        } catch (Exception e2) {
            FileLog.m992e(e2);
        }
        try {
            RandomAccessFile randomAccessFile2 = this.preloadStream;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.getChannel().close();
                } catch (Exception e3) {
                    FileLog.m992e(e3);
                }
                this.preloadStream.close();
                this.preloadStream = null;
            }
        } catch (Exception e4) {
            FileLog.m992e(e4);
        }
        try {
            RandomAccessFile randomAccessFile3 = this.fileReadStream;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.getChannel().close();
                } catch (Exception e5) {
                    FileLog.m992e(e5);
                }
                this.fileReadStream.close();
                this.fileReadStream = null;
            }
        } catch (Exception e6) {
            FileLog.m992e(e6);
        }
        try {
            if (this.filePartsStream != null) {
                synchronized (this) {
                    if (!this.writingToFilePartsStream) {
                        try {
                            this.filePartsStream.getChannel().close();
                        } catch (Exception e7) {
                            FileLog.m992e(e7);
                        }
                        this.filePartsStream.close();
                        this.filePartsStream = null;
                    } else {
                        this.closeFilePartsStreamOnWriteEnd = true;
                    }
                }
            }
        } catch (Exception e8) {
            FileLog.m992e(e8);
        }
        try {
            RandomAccessFile randomAccessFile4 = this.fiv;
            if (randomAccessFile4 != null) {
                randomAccessFile4.close();
                this.fiv = null;
            }
        } catch (Exception e9) {
            FileLog.m992e(e9);
        }
        if (this.delayedRequestInfos == null) {
            return;
        }
        int i = 0;
        while (true) {
            int size = this.delayedRequestInfos.size();
            ArrayList<RequestInfo> arrayList = this.delayedRequestInfos;
            if (i < size) {
                RequestInfo requestInfo = arrayList.get(i);
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                }
                i++;
            } else {
                arrayList.clear();
                return;
            }
        }
    }

    private void onFinishLoadingFile(final boolean z, int i, boolean z2) {
        if (this.state == 1 || this.state == 5) {
            this.state = 3;
            notifyStreamListeners();
            cleanup();
            if (this.isPreloadVideoOperation || z2) {
                this.preloadFinished = true;
                if (BuildVars.DEBUG_VERSION) {
                    File file = this.cacheFileTemp;
                    if (i == 1) {
                        FileLog.m989d("file already exist " + file);
                    } else {
                        FileLog.m989d("finished preloading file to " + file + " loaded " + this.downloadedBytes + " of " + this.totalBytesCount + " prefSize=" + this.preloadPrefixSize);
                    }
                }
                if (this.fileMetadata != null) {
                    if (this.cacheFileTemp != null) {
                        FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileTemp)));
                    }
                    if (this.cacheFileParts != null) {
                        FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileParts)));
                    }
                }
                this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
                this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
                return;
            }
            final File file2 = this.cacheIvTemp;
            final File file3 = this.cacheFileParts;
            final File file4 = this.cacheFilePreload;
            final File file5 = this.cacheFileTemp;
            filesQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFinishLoadingFile$20(file2, file3, file4, file5, z);
                }
            });
            this.cacheIvTemp = null;
            this.cacheFileParts = null;
            this.cacheFilePreload = null;
            this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0111 A[Catch: all -> 0x0117, TRY_LEAVE, TryCatch #2 {all -> 0x0117, blocks: (B:59:0x0109, B:61:0x0111), top: B:86:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$onFinishLoadingFile$20(File file, File file2, File file3, File file4, final boolean z) {
        File file5;
        boolean zCopyFile;
        String str;
        if (file != null) {
            file.delete();
        }
        if (file2 != null) {
            file2.delete();
        }
        if (file3 != null) {
            file3.delete();
        }
        if (file4 != null) {
            if (this.ungzip) {
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new FileInputStream(file4));
                    FileLoader.copyFile(gZIPInputStream, this.cacheFileGzipTemp, 2097152);
                    gZIPInputStream.close();
                    file4.delete();
                    file5 = this.cacheFileGzipTemp;
                    try {
                        this.ungzip = false;
                    } catch (ZipException unused) {
                        file4 = file5;
                        this.ungzip = false;
                        if (this.ungzip) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        FileLog.m992e(th);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m990e("unable to ungzip temp = " + file4 + " to final = " + this.cacheFileFinal);
                        }
                    }
                } catch (ZipException unused2) {
                } catch (Throwable th2) {
                    th = th2;
                    file5 = file4;
                }
                file4 = file5;
            }
            if (this.ungzip) {
                if (this.parentObject instanceof TLRPC.TL_theme) {
                    try {
                        zCopyFile = AndroidUtilities.copyFile(file4, this.cacheFileFinal);
                    } catch (Exception e) {
                        FileLog.m992e(e);
                        zCopyFile = false;
                    }
                    if (!zCopyFile && this.renameRetryCount == 3) {
                        try {
                            zCopyFile = AndroidUtilities.copyFile(file4, this.cacheFileFinal);
                            if (zCopyFile) {
                                this.cacheFileFinal.delete();
                            }
                        } catch (Throwable th3) {
                            FileLog.m992e(th3);
                        }
                    }
                    if (zCopyFile) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m990e("unable to rename temp = " + file4 + " to final = " + this.cacheFileFinal + " retry = " + this.renameRetryCount);
                        }
                        int i = this.renameRetryCount + 1;
                        this.renameRetryCount = i;
                        if (i < 3) {
                            this.state = 1;
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda28
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onFinishLoadingFile$17(z);
                                }
                            }, 200L);
                            return;
                        } else {
                            this.cacheFileFinal = file4;
                            this.cacheFileFinalReady = false;
                        }
                    } else {
                        this.cacheFileFinalReady = true;
                        if (this.pathSaveData != null && this.cacheFileFinal.exists()) {
                            this.delegate.saveFilePath(this.pathSaveData, this.cacheFileFinal);
                        }
                    }
                } else {
                    try {
                        if (this.pathSaveData != null) {
                            synchronized (lockObject) {
                                try {
                                    this.cacheFileFinal = new File(this.storePath, this.storeFileName);
                                    int i2 = 1;
                                    while (this.cacheFileFinal.exists()) {
                                        int iLastIndexOf = this.storeFileName.lastIndexOf(46);
                                        if (iLastIndexOf > 0) {
                                            str = this.storeFileName.substring(0, iLastIndexOf) + " (" + i2 + ")" + this.storeFileName.substring(iLastIndexOf);
                                        } else {
                                            str = this.storeFileName + " (" + i2 + ")";
                                        }
                                        this.cacheFileFinal = new File(this.storePath, str);
                                        i2++;
                                    }
                                } finally {
                                }
                            }
                        }
                        zCopyFile = file4.renameTo(this.cacheFileFinal);
                    } catch (Exception e2) {
                        FileLog.m992e(e2);
                        zCopyFile = false;
                    }
                    if (!zCopyFile) {
                        zCopyFile = AndroidUtilities.copyFile(file4, this.cacheFileFinal);
                        if (zCopyFile) {
                        }
                    }
                    if (zCopyFile) {
                    }
                }
            } else {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onFinishLoadingFile$18();
                    }
                });
                return;
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFinishLoadingFile$19(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$17(boolean z) {
        try {
            onFinishLoadingFile(z, 0, false);
        } catch (Exception unused) {
            onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$18() {
        onFail(false, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$19(boolean z) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("finished downloading file to " + this.cacheFileFinal + " time = " + (System.currentTimeMillis() - this.startTime) + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
        }
        if (z) {
            int i = this.currentType;
            if (i == 50331648) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 3, 1);
            } else if (i == 33554432) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 2, 1);
            } else if (i == 16777216) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 4, 1);
            } else if (i == 67108864) {
                String str = this.ext;
                if (str != null && (str.toLowerCase().endsWith(HlsSegmentFormat.MP3) || this.ext.toLowerCase().endsWith("m4a"))) {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 7, 1);
                } else {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 5, 1);
                }
            }
        }
        this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
    }

    private void delayRequestInfo(RequestInfo requestInfo) {
        this.delayedRequestInfos.add(requestInfo);
        if (requestInfo.response != null) {
            requestInfo.response.disableFree = true;
        } else if (requestInfo.responseWeb != null) {
            requestInfo.responseWeb.disableFree = true;
        } else if (requestInfo.responseCdn != null) {
            requestInfo.responseCdn.disableFree = true;
        }
    }

    private long findNextPreloadDownloadOffset(long j, long j2, NativeByteBuffer nativeByteBuffer) {
        long j3;
        long j4;
        int iLimit = nativeByteBuffer.limit();
        long j5 = j;
        do {
            if (j5 >= j2 - ((long) (this.preloadTempBuffer != null ? 16 : 0))) {
                j3 = j2 + ((long) iLimit);
                if (j5 < j3) {
                    if (j5 >= j3 - 16) {
                        long j6 = j3 - j5;
                        if (j6 > 2147483647L) {
                            GlShader$$ExternalSyntheticBUOutline1.m1056m("!!!");
                            return 0L;
                        }
                        this.preloadTempBufferCount = (int) j6;
                        nativeByteBuffer.position(nativeByteBuffer.limit() - this.preloadTempBufferCount);
                        nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, this.preloadTempBufferCount, false);
                        return j3;
                    }
                    if (this.preloadTempBufferCount != 0) {
                        nativeByteBuffer.position(0);
                        byte[] bArr = this.preloadTempBuffer;
                        int i = this.preloadTempBufferCount;
                        nativeByteBuffer.readBytes(bArr, i, 16 - i, false);
                        this.preloadTempBufferCount = 0;
                        j4 = 0;
                    } else {
                        j4 = 0;
                        long j7 = j5 - j2;
                        if (j7 > 2147483647L) {
                            GlShader$$ExternalSyntheticBUOutline1.m1056m("!!!");
                            return 0L;
                        }
                        nativeByteBuffer.position((int) j7);
                        nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, 16, false);
                    }
                    byte[] bArr2 = this.preloadTempBuffer;
                    int i2 = ((bArr2[0] & UByte.MAX_VALUE) << 24) + ((bArr2[1] & UByte.MAX_VALUE) << 16) + ((bArr2[2] & UByte.MAX_VALUE) << 8) + (bArr2[3] & UByte.MAX_VALUE);
                    if (i2 == 0) {
                        return j4;
                    }
                    if (i2 == 1) {
                        i2 = ((bArr2[12] & UByte.MAX_VALUE) << 24) + ((bArr2[13] & UByte.MAX_VALUE) << 16) + ((bArr2[14] & UByte.MAX_VALUE) << 8) + (bArr2[15] & UByte.MAX_VALUE);
                    }
                    if (bArr2[4] == 109 && bArr2[5] == 111 && bArr2[6] == 111 && bArr2[7] == 118) {
                        return -i2;
                    }
                    j5 += (long) i2;
                }
            }
            return 0L;
        } while (j5 < j3);
        return j5;
    }

    private void requestFileOffsets(long j) {
        if (this.requestingCdnOffsets) {
            return;
        }
        this.requestingCdnOffsets = true;
        TLRPC.TL_upload_getCdnFileHashes tL_upload_getCdnFileHashes = new TLRPC.TL_upload_getCdnFileHashes();
        tL_upload_getCdnFileHashes.file_token = this.cdnToken;
        tL_upload_getCdnFileHashes.offset = j;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_upload_getCdnFileHashes, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$requestFileOffsets$21(tLObject, tL_error);
            }
        }, null, null, 0, this.datacenterId, 1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFileOffsets$21(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            onFail(false, 0);
            return;
        }
        if (tLObject instanceof Vector) {
            this.requestingCdnOffsets = false;
            Vector vector = (Vector) tLObject;
            if (!vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i = 0; i < vector.objects.size(); i++) {
                    TLRPC.TL_fileHash tL_fileHash = (TLRPC.TL_fileHash) vector.objects.get(i);
                    this.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
            for (int i2 = 0; i2 < this.delayedRequestInfos.size(); i2++) {
                RequestInfo requestInfo = this.delayedRequestInfos.get(i2);
                if (this.notLoadedBytesRanges != null || this.downloadedBytes == requestInfo.offset) {
                    this.delayedRequestInfos.remove(i2);
                    if (processRequestResult(requestInfo, null)) {
                        return;
                    }
                    if (requestInfo.response != null) {
                        requestInfo.response.disableFree = false;
                        requestInfo.response.freeResources();
                        return;
                    } else if (requestInfo.responseWeb != null) {
                        requestInfo.responseWeb.disableFree = false;
                        requestInfo.responseWeb.freeResources();
                        return;
                    } else {
                        if (requestInfo.responseCdn != null) {
                            requestInfo.responseCdn.disableFree = false;
                            requestInfo.responseCdn.freeResources();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x02e9 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0340 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0376 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03d7 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x042c A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0558 A[EDGE_INSN: B:308:0x0558->B:202:0x0558 BREAK  A[LOOP:1: B:158:0x03e7->B:203:0x055b], PHI: r10
  0x0558: PHI (r10v5 long) = (r10v4 long), (r10v6 long), (r10v6 long) binds: [B:156:0x03d5, B:308:0x0558, B:164:0x040f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0571 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0606 A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x060c A[Catch: Exception -> 0x009c, TryCatch #1 {Exception -> 0x009c, blocks: (B:14:0x0088, B:16:0x008c, B:18:0x0098, B:23:0x00a1, B:25:0x00a7, B:34:0x00cb, B:37:0x00d4, B:41:0x00e7, B:43:0x00f0, B:46:0x00fe, B:51:0x010e, B:53:0x0122, B:55:0x0160, B:57:0x0164, B:59:0x0188, B:60:0x01ab, B:62:0x01af, B:63:0x01b6, B:65:0x01e1, B:69:0x01f5, B:71:0x0204, B:73:0x021b, B:75:0x0224, B:72:0x0211, B:74:0x021e, B:76:0x0226, B:78:0x0247, B:80:0x024b, B:82:0x0251, B:84:0x0257, B:90:0x0263, B:214:0x0598, B:216:0x05a0, B:218:0x05ac, B:221:0x05b7, B:222:0x05ba, B:224:0x05c6, B:226:0x05cc, B:227:0x05db, B:229:0x05e1, B:230:0x05f0, B:232:0x05f6, B:234:0x0606, B:235:0x060c, B:237:0x0611, B:239:0x0616, B:91:0x0271, B:93:0x0275, B:95:0x0280, B:99:0x0295, B:101:0x0299, B:103:0x029e, B:105:0x02a4, B:110:0x02b0, B:131:0x02e3, B:133:0x02e9, B:135:0x0302, B:137:0x030a, B:142:0x031e, B:143:0x032f, B:144:0x0330, B:147:0x033c, B:149:0x0340, B:150:0x0372, B:152:0x0376, B:154:0x0383, B:155:0x03b4, B:157:0x03d7, B:159:0x03e9, B:161:0x03f9, B:163:0x0401, B:165:0x0411, B:167:0x041a, B:169:0x0420, B:204:0x056d, B:206:0x0571, B:207:0x057d, B:209:0x0585, B:211:0x058a, B:174:0x042c, B:176:0x043c, B:177:0x044e, B:182:0x045c, B:183:0x0463, B:184:0x0464, B:186:0x0471, B:188:0x04ae, B:190:0x04bd, B:192:0x04c1, B:194:0x04c5, B:196:0x0513, B:198:0x0519, B:199:0x0539, B:201:0x0542, B:203:0x055b, B:114:0x02be, B:118:0x02c6, B:241:0x0620, B:26:0x00ae, B:28:0x00b4, B:29:0x00bb, B:31:0x00c1), top: B:299:0x0088 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean processRequestResult(RequestInfo requestInfo, TLRPC.TL_error tL_error) {
        long j;
        NativeByteBuffer nativeByteBuffer;
        int i;
        String str;
        char c2;
        char c3;
        char c4;
        String str2;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        byte[] bArr;
        long j3;
        long j4;
        long j5;
        RandomAccessFile randomAccessFile;
        boolean z4;
        long j6;
        long j7;
        int i2;
        int i3;
        Integer numValueOf;
        if (this.state != 1 && this.state != 5) {
            if (BuildVars.DEBUG_VERSION && this.state == 3) {
                FileLog.m992e(new FileLog.IgnoreSentException("trying to write to finished file " + this.fileName + " offset " + requestInfo.offset + " " + this.totalBytesCount + " reqToken=" + requestInfo.requestToken + " (state=" + this.state + ")"));
            }
            return false;
        }
        final int i4 = requestInfo.requestToken;
        this.requestInfos.remove(requestInfo);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processRequestResult$22(i4);
            }
        });
        if (tL_error == null) {
            try {
                if (this.notLoadedBytesRanges == null) {
                    j = 0;
                    if (this.downloadedBytes != requestInfo.offset) {
                        delayRequestInfo(requestInfo);
                        return false;
                    }
                } else {
                    j = 0;
                }
                if (requestInfo.response != null) {
                    nativeByteBuffer = requestInfo.response.bytes;
                } else if (requestInfo.responseWeb != null) {
                    nativeByteBuffer = requestInfo.responseWeb.bytes;
                } else {
                    nativeByteBuffer = requestInfo.responseCdn != null ? requestInfo.responseCdn.bytes : null;
                }
                if (nativeByteBuffer == null || nativeByteBuffer.limit() == 0) {
                    onFinishLoadingFile(true, 0, false);
                    return false;
                }
                int iLimit = nativeByteBuffer.limit();
                if (this.isCdn) {
                    try {
                        long j8 = requestInfo.offset;
                        int i5 = this.cdnChunkCheckSize;
                        i = 1;
                        str = " id = ";
                        long j9 = ((long) i5) * (j8 / ((long) i5));
                        HashMap<Long, TLRPC.TL_fileHash> map = this.cdnHashes;
                        if ((map != null ? map.get(Long.valueOf(j9)) : null) == null) {
                            delayRequestInfo(requestInfo);
                            requestFileOffsets(j9);
                            return true;
                        }
                    } catch (Exception e) {
                        e = e;
                        FileLog.m992e(e);
                        if (AndroidUtilities.isENOSPC(e)) {
                            onFail(false, -1);
                        } else if (AndroidUtilities.isEROFS(e)) {
                            SharedConfig.checkSdCard(this.cacheFileFinal);
                            onFail(true, -1);
                        } else {
                            onFail(false, 0);
                        }
                    }
                } else {
                    i = 1;
                    str = " id = ";
                }
                if (requestInfo.responseCdn != null) {
                    long j10 = requestInfo.offset / 16;
                    byte[] bArr2 = this.cdnIv;
                    c3 = '\r';
                    c4 = '\b';
                    bArr2[15] = (byte) (j10 & 255);
                    bArr2[14] = (byte) ((j10 >> 8) & 255);
                    bArr2[13] = (byte) ((j10 >> 16) & 255);
                    bArr2[12] = (byte) ((j10 >> 24) & 255);
                    c2 = '\f';
                    Utilities.aesCtrDecryption(nativeByteBuffer.buffer, this.cdnKey, bArr2, 0, nativeByteBuffer.limit());
                } else {
                    c2 = '\f';
                    c3 = '\r';
                    c4 = '\b';
                }
                if (this.isPreloadVideoOperation) {
                    this.preloadStream.writeLong(requestInfo.offset);
                    long j11 = iLimit;
                    this.preloadStream.writeLong(j11);
                    this.preloadStreamFileOffset += 16;
                    this.preloadStream.getChannel().write(nativeByteBuffer.buffer);
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m989d("save preload file part " + this.cacheFilePreload + " offset " + requestInfo.offset + " size " + iLimit);
                    }
                    if (this.preloadedBytesRanges == null) {
                        this.preloadedBytesRanges = new HashMap<>();
                    }
                    this.preloadedBytesRanges.put(Long.valueOf(requestInfo.offset), new PreloadRange(this.preloadStreamFileOffset, j11));
                    this.totalPreloadedBytes += iLimit;
                    this.preloadStreamFileOffset += iLimit;
                    if (this.moovFound == 0) {
                        long jFindNextPreloadDownloadOffset = findNextPreloadDownloadOffset(this.nextAtomOffset, requestInfo.offset, nativeByteBuffer);
                        long j12 = this.nextPreloadDownloadOffset;
                        if (jFindNextPreloadDownloadOffset < j) {
                            jFindNextPreloadDownloadOffset *= -1;
                            long j13 = j12 + ((long) this.currentDownloadChunkSize);
                            this.nextPreloadDownloadOffset = j13;
                            if (j13 < this.totalBytesCount / 2) {
                                long j14 = 1048576 + jFindNextPreloadDownloadOffset;
                                this.foundMoovSize = j14;
                                this.preloadNotRequestedBytesCount = j14;
                                this.moovFound = i;
                            } else {
                                this.foundMoovSize = 2097152L;
                                this.preloadNotRequestedBytesCount = 2097152L;
                                this.moovFound = 2;
                            }
                            this.nextPreloadDownloadOffset = -1L;
                        } else {
                            this.nextPreloadDownloadOffset = j12 + ((long) this.currentDownloadChunkSize);
                        }
                        this.nextAtomOffset = jFindNextPreloadDownloadOffset;
                    }
                    this.preloadStream.writeLong(this.foundMoovSize);
                    this.preloadStream.writeLong(this.nextPreloadDownloadOffset);
                    this.preloadStream.writeLong(this.nextAtomOffset);
                    this.preloadStreamFileOffset += 24;
                    long j15 = this.nextPreloadDownloadOffset;
                    z4 = j15 == j || (this.moovFound != 0 && this.foundMoovSize < j) || this.totalPreloadedBytes > 2097152 || j15 >= this.totalBytesCount;
                    if (z4) {
                        this.preloadStream.seek(j);
                        this.preloadStream.write(1);
                    } else if (this.moovFound != 0) {
                        this.foundMoovSize -= (long) this.currentDownloadChunkSize;
                    }
                    z3 = false;
                } else {
                    NativeByteBuffer nativeByteBuffer2 = nativeByteBuffer;
                    long j16 = iLimit;
                    long j17 = this.downloadedBytes + j16;
                    this.downloadedBytes = j17;
                    long j18 = this.totalBytesCount;
                    if (j18 > 0) {
                        z2 = j17 >= j18 || ((i2 = this.preloadPrefixSize) > 0 && j17 >= ((long) i2) && canFinishPreload() && this.requestInfos.isEmpty());
                        str2 = " local_id = ";
                        z3 = this.downloadedBytes < this.totalBytesCount;
                        boolean z5 = BuildVars.DEBUG_VERSION;
                        bArr = this.key;
                        if (bArr == null) {
                            Utilities.aesIgeEncryption(nativeByteBuffer2.buffer, bArr, this.iv, false, true, 0, nativeByteBuffer2.limit());
                            if (z2) {
                                j3 = 0;
                                if (this.bytesCountPadding != 0) {
                                    j4 = 2147483647L;
                                    long jLimit = ((long) nativeByteBuffer2.limit()) - this.bytesCountPadding;
                                    if (BuildVars.DEBUG_VERSION && jLimit > 2147483647L) {
                                        throw new RuntimeException("Out of limit" + jLimit);
                                    }
                                    nativeByteBuffer2.limit((int) jLimit);
                                }
                                if (this.encryptFile) {
                                    long j19 = requestInfo.offset / 16;
                                    byte[] bArr3 = this.encryptIv;
                                    bArr3[15] = (byte) (j19 & 255);
                                    bArr3[14] = (byte) ((j19 >> c4) & 255);
                                    bArr3[c3] = (byte) ((j19 >> 16) & 255);
                                    bArr3[c2] = (byte) ((j19 >> 24) & 255);
                                    Utilities.aesCtrDecryption(nativeByteBuffer2.buffer, this.encryptKey, bArr3, 0, nativeByteBuffer2.limit());
                                }
                                if (this.notLoadedBytesRanges != null) {
                                    this.fileOutputStream.seek(requestInfo.offset);
                                    if (BuildVars.DEBUG_VERSION) {
                                        FileLog.m989d("save file part " + this.fileName + " offset=" + requestInfo.offset + " chunk_size=" + this.currentDownloadChunkSize + " isCdn=" + this.isCdn);
                                    }
                                }
                                this.fileOutputStream.getChannel().write(nativeByteBuffer2.buffer);
                                String str3 = str2;
                                long j20 = j3;
                                addPart(this.notLoadedBytesRanges, requestInfo.offset, requestInfo.offset + j16, true);
                                if (!this.isCdn) {
                                    long j21 = requestInfo.offset / ((long) this.cdnChunkCheckSize);
                                    int size = this.notCheckedCdnRanges.size();
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= size) {
                                            break;
                                        }
                                        Range range = this.notCheckedCdnRanges.get(i6);
                                        if (range.start > j21 || j21 > range.end) {
                                            i6++;
                                            str = str;
                                            j21 = j21;
                                            str3 = str3;
                                            j20 = j20;
                                        } else {
                                            int i7 = this.cdnChunkCheckSize;
                                            long j22 = j21 * ((long) i7);
                                            long downloadedLengthFromOffsetInternal = getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j22, i7);
                                            if (downloadedLengthFromOffsetInternal != j20) {
                                                j5 = j20;
                                                if (downloadedLengthFromOffsetInternal != this.cdnChunkCheckSize) {
                                                    long j23 = this.totalBytesCount;
                                                    if ((j23 > j5 && downloadedLengthFromOffsetInternal == j23 - j22) || (j23 <= j5 && z2)) {
                                                        TLRPC.TL_fileHash tL_fileHash = this.cdnHashes.get(Long.valueOf(j22));
                                                        if (this.fileReadStream == null) {
                                                            this.cdnCheckBytes = new byte[this.cdnChunkCheckSize];
                                                            this.fileReadStream = new RandomAccessFile(this.cacheFileTemp, "r");
                                                        }
                                                        this.fileReadStream.seek(j22);
                                                        if (BuildVars.DEBUG_VERSION && downloadedLengthFromOffsetInternal > j4) {
                                                            throw new RuntimeException("!!!");
                                                        }
                                                        this.fileReadStream.readFully(this.cdnCheckBytes, 0, (int) downloadedLengthFromOffsetInternal);
                                                        if (this.encryptFile) {
                                                            long j24 = j22 / 16;
                                                            byte[] bArr4 = this.encryptIv;
                                                            j6 = j22;
                                                            bArr4[15] = (byte) (j24 & 255);
                                                            bArr4[14] = (byte) ((j24 >> c4) & 255);
                                                            bArr4[c3] = (byte) ((j24 >> 16) & 255);
                                                            bArr4[c2] = (byte) ((j24 >> 24) & 255);
                                                            Utilities.aesCtrDecryptionByteArray(this.cdnCheckBytes, this.encryptKey, bArr4, 0, downloadedLengthFromOffsetInternal, 0);
                                                            j7 = downloadedLengthFromOffsetInternal;
                                                        } else {
                                                            j6 = j22;
                                                            j7 = downloadedLengthFromOffsetInternal;
                                                        }
                                                        if (!Arrays.equals(Utilities.computeSHA256(this.cdnCheckBytes, 0, j7), tL_fileHash.hash)) {
                                                            if (BuildVars.LOGS_ENABLED) {
                                                                if (this.location != null) {
                                                                    FileLog.m990e("invalid cdn hash " + this.location + str + this.location.id + str3 + this.location.local_id + " access_hash = " + this.location.access_hash + " volume_id = " + this.location.volume_id + " secret = " + this.location.secret);
                                                                } else {
                                                                    String str4 = str;
                                                                    if (this.webLocation != null) {
                                                                        FileLog.m990e("invalid cdn hash  " + this.webLocation + str4 + this.fileName);
                                                                    }
                                                                }
                                                            }
                                                            onFail(false, 0);
                                                            this.cacheFileTemp.delete();
                                                            return false;
                                                        }
                                                        this.cdnHashes.remove(Long.valueOf(j6));
                                                        addPart(this.notCheckedCdnRanges, j21, j21 + 1, false);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j5 = j20;
                                    randomAccessFile = this.fiv;
                                    if (randomAccessFile != null) {
                                        randomAccessFile.seek(j5);
                                        this.fiv.write(this.iv);
                                    }
                                    if (this.totalBytesCount > 0 && this.state == 1) {
                                        copyNotLoadedRanges();
                                        this.delegate.didChangedLoadProgress(this, this.downloadedBytes, this.totalBytesCount);
                                    }
                                    z4 = z2;
                                } else {
                                    j5 = j20;
                                    randomAccessFile = this.fiv;
                                    if (randomAccessFile != null) {
                                    }
                                    if (this.totalBytesCount > 0) {
                                        copyNotLoadedRanges();
                                        this.delegate.didChangedLoadProgress(this, this.downloadedBytes, this.totalBytesCount);
                                    }
                                    z4 = z2;
                                }
                            } else {
                                j3 = 0;
                            }
                            j4 = 2147483647L;
                            if (this.encryptFile) {
                            }
                            if (this.notLoadedBytesRanges != null) {
                            }
                            this.fileOutputStream.getChannel().write(nativeByteBuffer2.buffer);
                            String str32 = str2;
                            long j202 = j3;
                            addPart(this.notLoadedBytesRanges, requestInfo.offset, requestInfo.offset + j16, true);
                            if (!this.isCdn) {
                            }
                        }
                    } else {
                        int i8 = this.currentDownloadChunkSize;
                        if (iLimit == i8) {
                            if (j18 != j17) {
                                str2 = " local_id = ";
                                j2 = 0;
                                if (j17 % ((long) i8) != 0) {
                                }
                                z = false;
                                z2 = z;
                            } else {
                                str2 = " local_id = ";
                                j2 = 0;
                            }
                            if (j18 > j2 && j18 > j17) {
                                z = false;
                            }
                            z2 = z;
                        } else {
                            str2 = " local_id = ";
                        }
                        z = true;
                        z2 = z;
                    }
                    boolean z52 = BuildVars.DEBUG_VERSION;
                    bArr = this.key;
                    if (bArr == null) {
                    }
                }
                while (i3 < this.delayedRequestInfos.size()) {
                    RequestInfo requestInfo2 = this.delayedRequestInfos.get(i3);
                    i3 = (this.notLoadedBytesRanges == null && this.downloadedBytes != requestInfo2.offset) ? i3 + 1 : 0;
                    this.delayedRequestInfos.remove(i3);
                    if (!processRequestResult(requestInfo2, null)) {
                        if (requestInfo2.response != null) {
                            requestInfo2.response.disableFree = false;
                            requestInfo2.response.freeResources();
                        } else if (requestInfo2.responseWeb != null) {
                            requestInfo2.responseWeb.disableFree = false;
                            requestInfo2.responseWeb.freeResources();
                        } else if (requestInfo2.responseCdn != null) {
                            requestInfo2.responseCdn.disableFree = false;
                            requestInfo2.responseCdn.freeResources();
                        }
                    }
                    if (!z4) {
                        onFinishLoadingFile(true, 0, z3);
                    } else if (this.state != 4 && this.state != 5) {
                        startDownloadRequest(requestInfo.connectionType);
                    }
                }
                if (!z4) {
                }
            } catch (Exception e2) {
                e = e2;
            }
        } else if (tL_error.text.contains("LIMIT_INVALID") && !requestInfo.forceSmallChunk) {
            Runnable runnable = requestInfo.whenCancelled;
            if (runnable != null) {
                runnable.run();
            }
            removePart(this.notRequestedBytesRanges, requestInfo.offset, requestInfo.offset + ((long) requestInfo.chunkSize));
            if (!this.forceSmallChunk) {
                this.forceSmallChunk = true;
                this.currentDownloadChunkSize = 32768;
                this.currentMaxDownloadRequests = 4;
            }
            startDownloadRequest(requestInfo.connectionType);
        } else {
            boolean zContains = tL_error.text.contains("FILE_MIGRATE_");
            String str5 = tL_error.text;
            if (zContains) {
                Scanner scanner = new Scanner(str5.replace("FILE_MIGRATE_", _UrlKt.FRAGMENT_ENCODE_SET));
                scanner.useDelimiter(_UrlKt.FRAGMENT_ENCODE_SET);
                try {
                    numValueOf = Integer.valueOf(scanner.nextInt());
                } catch (Exception unused) {
                    numValueOf = null;
                }
                if (numValueOf == null) {
                    onFail(false, 0);
                } else {
                    this.datacenterId = numValueOf.intValue();
                    this.downloadedBytes = 0L;
                    this.requestedBytesCount = 0L;
                    startDownloadRequest(requestInfo.connectionType);
                }
            } else {
                if (str5.contains("OFFSET_INVALID")) {
                    if (this.downloadedBytes % ((long) this.currentDownloadChunkSize) == 0) {
                        try {
                            onFinishLoadingFile(true, 0, false);
                            return false;
                        } catch (Exception e3) {
                            FileLog.m992e(e3);
                            onFail(false, 0);
                            return false;
                        }
                    }
                    onFail(false, 0);
                    return false;
                }
                if (tL_error.text.contains("RETRY_LIMIT")) {
                    onFail(false, 2);
                    return false;
                }
                if (BuildVars.LOGS_ENABLED) {
                    TLRPC.InputFileLocation inputFileLocation = this.location;
                    if (inputFileLocation != null) {
                        boolean z6 = inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation;
                        String str6 = tL_error.text;
                        if (z6) {
                            FileLog.m990e(str6 + " " + this.location + " peer_did = " + DialogObject.getPeerDialogId(((TLRPC.TL_inputPeerPhotoFileLocation) this.location).peer) + " peer_access_hash=" + ((TLRPC.TL_inputPeerPhotoFileLocation) this.location).peer.access_hash + " photo_id=" + ((TLRPC.TL_inputPeerPhotoFileLocation) this.location).photo_id + " big=" + ((TLRPC.TL_inputPeerPhotoFileLocation) this.location).big);
                        } else {
                            FileLog.m990e(str6 + " " + this.location + " id = " + this.location.id + " local_id = " + this.location.local_id + " access_hash = " + this.location.access_hash + " volume_id = " + this.location.volume_id + " secret = " + this.location.secret);
                        }
                    } else if (this.webLocation != null) {
                        FileLog.m990e(tL_error.text + " " + this.webLocation + " id = " + this.fileName);
                    }
                }
                onFail(false, 0);
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processRequestResult$22(int i) {
        this.uiRequestTokens.remove(Integer.valueOf(i));
    }

    private boolean canFinishPreload() {
        return this.isStory && this.priority < 3;
    }

    public void onFail(boolean z, final int i) {
        cleanup();
        this.state = i == 1 ? 4 : 2;
        if (this.delegate != null && BuildVars.LOGS_ENABLED) {
            long jCurrentTimeMillis = this.startTime != 0 ? System.currentTimeMillis() - this.startTime : 0L;
            File file = this.cacheFileFinal;
            if (i == 1) {
                FileLog.m989d("cancel downloading file to " + file + " time = " + jCurrentTimeMillis + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
            } else {
                FileLog.m989d("failed downloading file to " + file + " reason = " + i + " time = " + jCurrentTimeMillis + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
            }
        }
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFail$23(i);
                }
            });
            return;
        }
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$23(int i) {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    private void clearOperation(RequestInfo requestInfo, boolean z, boolean z2) {
        ArrayList<RequestInfo> arrayList;
        int[] iArr = new int[2];
        long j = LongCompanionObject.MAX_VALUE;
        int i = 0;
        while (i < this.requestInfos.size()) {
            final RequestInfo requestInfo2 = this.requestInfos.get(i);
            long jMin = Math.min(requestInfo2.offset, j);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo2.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo2.offset, requestInfo2.offset + ((long) requestInfo2.chunkSize));
            }
            if (requestInfo != requestInfo2 && requestInfo2.requestToken != 0) {
                requestInfo2.cancelling = true;
                if (z2) {
                    this.cancelledRequestInfos.add(requestInfo2);
                    requestInfo2.whenCancelled = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$clearOperation$24(requestInfo2);
                        }
                    };
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true, new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            FileLoadOperation.$r8$lambda$WZILNyIhrBQAst1rN6aS3FVcWXI(requestInfo2);
                        }
                    });
                } else {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true);
                    requestInfo2.cancelled = true;
                }
            }
            i++;
            j = jMin;
        }
        int i2 = 0;
        while (i2 < 2) {
            int i3 = i2 == 0 ? 2 : 65538;
            if (iArr[i2] > 1048576) {
                ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
            }
            i2++;
        }
        this.requestInfos.clear();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearOperation$26();
            }
        });
        long jMin2 = j;
        int i4 = 0;
        while (true) {
            int size = this.delayedRequestInfos.size();
            arrayList = this.delayedRequestInfos;
            if (i4 >= size) {
                break;
            }
            RequestInfo requestInfo3 = arrayList.get(i4);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo3.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo3.offset, requestInfo3.offset + ((long) requestInfo3.chunkSize));
            }
            if (requestInfo3.response != null) {
                requestInfo3.response.disableFree = false;
                requestInfo3.response.freeResources();
            } else if (requestInfo3.responseWeb != null) {
                requestInfo3.responseWeb.disableFree = false;
                requestInfo3.responseWeb.freeResources();
            } else if (requestInfo3.responseCdn != null) {
                requestInfo3.responseCdn.disableFree = false;
                requestInfo3.responseCdn.freeResources();
            }
            jMin2 = Math.min(requestInfo3.offset, jMin2);
            i4++;
        }
        arrayList.clear();
        this.requestsCount = 0;
        if (!z && this.isPreloadVideoOperation) {
            this.requestedBytesCount = this.totalPreloadedBytes;
        } else if (this.notLoadedBytesRanges == null) {
            this.downloadedBytes = jMin2;
            this.requestedBytesCount = jMin2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearOperation$24(RequestInfo requestInfo) {
        requestInfo.whenCancelled = null;
        this.cancelledRequestInfos.remove(requestInfo);
        requestInfo.cancelled = true;
    }

    public static /* synthetic */ void $r8$lambda$WZILNyIhrBQAst1rN6aS3FVcWXI(RequestInfo requestInfo) {
        Runnable runnable = requestInfo.whenCancelled;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearOperation$26() {
        this.uiRequestTokens.clear();
    }

    private void requestReference(RequestInfo requestInfo) {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        if (this.requestingReference) {
            return;
        }
        clearOperation(null, false, false);
        this.requestingReference = true;
        this.requestedReference = true;
        Object obj = this.parentObject;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.getId() < 0 && (message = messageObject.messageOwner) != null && (messageMedia = message.media) != null && (webPage = messageMedia.webpage) != null) {
                this.parentObject = webPage;
                this.isStory = false;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("debug_loading: " + this.cacheFileFinal.getName() + " file reference expired ");
        }
        FileRefController.getInstance(this.currentAccount).requestReference(this.parentObject, this.location, this, requestInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:203:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void startDownloadRequest(int i) {
        int i2;
        int iMax;
        int i3;
        long j;
        int i4;
        long j2;
        long j3;
        final int i5;
        final TLObject tLObject;
        long j4;
        TLRPC.InputFileLocation inputFileLocation;
        HashMap<Long, PreloadRange> map;
        PreloadRange preloadRange;
        ArrayList<Range> arrayList;
        boolean z;
        final FileLoadOperation fileLoadOperation = this;
        if (BuildVars.DEBUG_PRIVATE_VERSION && Utilities.stageQueue != null && Utilities.stageQueue.getHandler() != null && Thread.currentThread() != Utilities.stageQueue.getHandler().getLooper().getThread()) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Wrong thread!!!");
            return;
        }
        if (fileLoadOperation.state == 5) {
            fileLoadOperation.state = 1;
        }
        if (fileLoadOperation.paused || fileLoadOperation.reuploadingCdn || fileLoadOperation.state != 1 || fileLoadOperation.requestingReference) {
            return;
        }
        long j5 = 0;
        if (fileLoadOperation.isStory || fileLoadOperation.streamPriorityStartOffset != 0 || fileLoadOperation.nextPartWasPreloaded || fileLoadOperation.requestInfos.size() + fileLoadOperation.delayedRequestInfos.size() < fileLoadOperation.currentMaxDownloadRequests) {
            if (fileLoadOperation.isPreloadVideoOperation) {
                if (fileLoadOperation.requestedBytesCount > 2097152) {
                    return;
                }
                if (fileLoadOperation.moovFound != 0 && fileLoadOperation.requestInfos.size() > 0) {
                    return;
                }
            }
            if (fileLoadOperation.isStory) {
                iMax = Math.max(0, fileLoadOperation.currentMaxDownloadRequests - fileLoadOperation.requestInfos.size());
            } else if (fileLoadOperation.streamPriorityStartOffset == 0 && !fileLoadOperation.nextPartWasPreloaded && ((!fileLoadOperation.isPreloadVideoOperation || fileLoadOperation.moovFound != 0) && fileLoadOperation.totalBytesCount > 0)) {
                iMax = Math.max(0, fileLoadOperation.currentMaxDownloadRequests - fileLoadOperation.requestInfos.size());
            } else {
                i2 = 1;
                if (!fileLoadOperation.requestedReference && FileRefController.getInstance(fileLoadOperation.currentAccount).applyCachedFileReference(fileLoadOperation.parentObject, fileLoadOperation.location, fileLoadOperation)) {
                    FileLog.m989d(fileLoadOperation.fileName + " before download updated file ref from file ref cache!");
                }
                i3 = 0;
                while (i3 < i2) {
                    int i6 = 2;
                    if (fileLoadOperation.isPreloadVideoOperation) {
                        if (fileLoadOperation.moovFound != 0 && fileLoadOperation.preloadNotRequestedBytesCount <= j5) {
                            boolean z2 = BuildVars.DEBUG_VERSION;
                            return;
                        }
                        long j6 = fileLoadOperation.nextPreloadDownloadOffset;
                        if (j6 == -1) {
                            long j7 = j5;
                            for (int i7 = (2097152 / fileLoadOperation.currentDownloadChunkSize) + 2; i7 != 0; i7--) {
                                if (!fileLoadOperation.requestedPreloadedBytesRanges.containsKey(Long.valueOf(j7))) {
                                    j6 = j7;
                                    z = true;
                                    break;
                                }
                                int i8 = fileLoadOperation.currentDownloadChunkSize;
                                j7 += (long) i8;
                                long j8 = fileLoadOperation.totalBytesCount;
                                if (j7 > j8) {
                                    break;
                                }
                                if (fileLoadOperation.moovFound == 2 && j7 == i8 * 8) {
                                    j7 = ((j8 - 1048576) / ((long) i8)) * ((long) i8);
                                }
                            }
                            j6 = j7;
                            z = false;
                            if (!z && fileLoadOperation.requestInfos.isEmpty()) {
                                fileLoadOperation.onFinishLoadingFile(false, 0, false);
                            }
                        }
                        if (fileLoadOperation.requestedPreloadedBytesRanges == null) {
                            fileLoadOperation.requestedPreloadedBytesRanges = new HashMap<>();
                        }
                        fileLoadOperation.requestedPreloadedBytesRanges.put(Long.valueOf(j6), 1);
                        if (BuildVars.DEBUG_VERSION) {
                            FileLog.m989d("start next preload from " + j6 + " size " + fileLoadOperation.totalBytesCount + " for " + fileLoadOperation.cacheFilePreload);
                        }
                        fileLoadOperation.preloadNotRequestedBytesCount -= (long) fileLoadOperation.currentDownloadChunkSize;
                        j3 = j6;
                        j = j5;
                        i4 = 2;
                    } else {
                        ArrayList<Range> arrayList2 = fileLoadOperation.notRequestedBytesRanges;
                        if (arrayList2 != null) {
                            long j9 = fileLoadOperation.streamPriorityStartOffset;
                            if (j9 == j5) {
                                j9 = fileLoadOperation.streamStartOffset;
                            }
                            int size = arrayList2.size();
                            int i9 = 0;
                            long jMin = LongCompanionObject.MAX_VALUE;
                            long j10 = LongCompanionObject.MAX_VALUE;
                            while (true) {
                                i4 = i6;
                                if (i9 >= size) {
                                    j9 = j10;
                                    break;
                                }
                                Range range = fileLoadOperation.notRequestedBytesRanges.get(i9);
                                if (j9 != j5) {
                                    if (range.start <= j9 && range.end > j9) {
                                        jMin = Long.MAX_VALUE;
                                        break;
                                    } else if (j9 < range.start && range.start < j10) {
                                        j10 = range.start;
                                    }
                                }
                                jMin = Math.min(jMin, range.start);
                                i9++;
                                i6 = i4;
                                j5 = j5;
                            }
                            j = j5;
                            if (j9 != LongCompanionObject.MAX_VALUE) {
                                j2 = j9;
                            } else {
                                if (jMin == LongCompanionObject.MAX_VALUE) {
                                    boolean z3 = BuildVars.DEBUG_VERSION;
                                    return;
                                }
                                j2 = jMin;
                            }
                        } else {
                            j = j5;
                            i4 = 2;
                            j2 = fileLoadOperation.requestedBytesCount;
                        }
                        j3 = j2;
                    }
                    int i10 = fileLoadOperation.preloadPrefixSize;
                    if (i10 > 0 && j3 >= i10 && fileLoadOperation.canFinishPreload()) {
                        boolean z4 = BuildVars.DEBUG_VERSION;
                        return;
                    }
                    long j11 = fileLoadOperation.totalBytesCount;
                    if (j11 > j && j3 > j && j3 >= j11) {
                        boolean z5 = BuildVars.DEBUG_VERSION;
                        return;
                    }
                    if (!fileLoadOperation.isPreloadVideoOperation && (arrayList = fileLoadOperation.notRequestedBytesRanges) != null) {
                        fileLoadOperation.addPart(arrayList, j3, ((long) fileLoadOperation.currentDownloadChunkSize) + j3, false);
                        boolean z6 = BuildVars.DEBUG_VERSION;
                    }
                    long j12 = fileLoadOperation.totalBytesCount;
                    boolean z7 = j12 <= j || i3 == i2 + (-1) || (j12 > j && ((long) fileLoadOperation.currentDownloadChunkSize) + j3 >= j12);
                    if (i == -1) {
                        i5 = fileLoadOperation.requestsCount % 2 == 0 ? i4 : 65538;
                    } else {
                        i5 = i;
                    }
                    int i11 = fileLoadOperation.isForceRequest ? 32 : 0;
                    if (fileLoadOperation.isCdn) {
                        TLRPC.TL_upload_getCdnFile tL_upload_getCdnFile = new TLRPC.TL_upload_getCdnFile();
                        tL_upload_getCdnFile.file_token = fileLoadOperation.cdnToken;
                        tL_upload_getCdnFile.offset = j3;
                        tL_upload_getCdnFile.limit = fileLoadOperation.currentDownloadChunkSize;
                        i11 |= 1;
                        tLObject = tL_upload_getCdnFile;
                    } else if (fileLoadOperation.webLocation != null) {
                        TLRPC.TL_upload_getWebFile tL_upload_getWebFile = new TLRPC.TL_upload_getWebFile();
                        tL_upload_getWebFile.location = fileLoadOperation.webLocation;
                        tL_upload_getWebFile.offset = (int) j3;
                        tL_upload_getWebFile.limit = fileLoadOperation.currentDownloadChunkSize;
                        tLObject = tL_upload_getWebFile;
                    } else {
                        TLRPC.TL_upload_getFile tL_upload_getFile = new TLRPC.TL_upload_getFile();
                        tL_upload_getFile.location = fileLoadOperation.location;
                        tL_upload_getFile.offset = j3;
                        tL_upload_getFile.limit = fileLoadOperation.currentDownloadChunkSize;
                        tL_upload_getFile.cdn_supported = true;
                        tLObject = tL_upload_getFile;
                    }
                    fileLoadOperation.requestedBytesCount += (long) fileLoadOperation.currentDownloadChunkSize;
                    final RequestInfo requestInfo = new RequestInfo();
                    fileLoadOperation.requestInfos.add(requestInfo);
                    requestInfo.offset = j3;
                    requestInfo.chunkSize = fileLoadOperation.currentDownloadChunkSize;
                    requestInfo.forceSmallChunk = fileLoadOperation.forceSmallChunk;
                    requestInfo.connectionType = i5;
                    if (!fileLoadOperation.isPreloadVideoOperation && fileLoadOperation.supportsPreloading && fileLoadOperation.preloadStream != null && (map = fileLoadOperation.preloadedBytesRanges) != null && (preloadRange = map.get(Long.valueOf(requestInfo.offset))) != null) {
                        requestInfo.response = new TLRPC.TL_upload_file();
                        try {
                            if (BuildVars.DEBUG_VERSION && preloadRange.length > 2147483647L) {
                                throw new RuntimeException("cast long to integer");
                            }
                            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer((int) preloadRange.length);
                            fileLoadOperation.preloadStream.seek(preloadRange.fileOffset);
                            fileLoadOperation.preloadStream.getChannel().read(nativeByteBuffer.buffer);
                            nativeByteBuffer.buffer.position(0);
                            requestInfo.response.bytes = nativeByteBuffer;
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startDownloadRequest$27(requestInfo);
                                }
                            });
                            j4 = j;
                        } catch (Exception unused) {
                            if (fileLoadOperation.streamPriorityStartOffset == j) {
                            }
                            inputFileLocation = fileLoadOperation.location;
                            if (!(inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation)) {
                                requestInfo.forceSmallChunk = fileLoadOperation.forceSmallChunk;
                                if (BuildVars.LOGS_ENABLED) {
                                }
                                int i12 = i11 | 2048;
                                final int i13 = !fileLoadOperation.isCdn ? fileLoadOperation.cdnDatacenterId : fileLoadOperation.datacenterId;
                                ConnectionsManager connectionsManager = ConnectionsManager.getInstance(fileLoadOperation.currentAccount);
                                final FileLoadOperation fileLoadOperation2 = fileLoadOperation;
                                fileLoadOperation = fileLoadOperation2;
                                final int iSendRequestSync = connectionsManager.sendRequestSync(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda2
                                    @Override // org.telegram.tgnet.RequestDelegate
                                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                                        this.f$0.lambda$startDownloadRequest$29(requestInfo, i13, i5, tLObject, tLObject2, tL_error);
                                    }
                                }, null, null, i12, i13, i5, z7);
                                requestInfo.requestToken = iSendRequestSync;
                                if (BuildVars.LOGS_ENABLED) {
                                }
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$startDownloadRequest$30(iSendRequestSync);
                                    }
                                });
                                fileLoadOperation.requestsCount++;
                            }
                        }
                    } else {
                        if (fileLoadOperation.streamPriorityStartOffset == j) {
                            if (BuildVars.DEBUG_VERSION) {
                                FileLog.m989d("frame get offset = " + fileLoadOperation.streamPriorityStartOffset);
                            }
                            j4 = j;
                            fileLoadOperation.streamPriorityStartOffset = j4;
                            fileLoadOperation.priorityRequestInfo = requestInfo;
                        } else {
                            j4 = j;
                        }
                        inputFileLocation = fileLoadOperation.location;
                        if (!(inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) && ((TLRPC.TL_inputPeerPhotoFileLocation) inputFileLocation).photo_id == j4) {
                            fileLoadOperation.requestReference(requestInfo);
                        } else {
                            requestInfo.forceSmallChunk = fileLoadOperation.forceSmallChunk;
                            if (BuildVars.LOGS_ENABLED) {
                                requestInfo.requestStartTime = System.currentTimeMillis();
                            }
                            int i122 = i11 | 2048;
                            final int i132 = !fileLoadOperation.isCdn ? fileLoadOperation.cdnDatacenterId : fileLoadOperation.datacenterId;
                            ConnectionsManager connectionsManager2 = ConnectionsManager.getInstance(fileLoadOperation.currentAccount);
                            final FileLoadOperation fileLoadOperation22 = fileLoadOperation;
                            fileLoadOperation = fileLoadOperation22;
                            final int iSendRequestSync2 = connectionsManager2.sendRequestSync(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda2
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$startDownloadRequest$29(requestInfo, i132, i5, tLObject, tLObject2, tL_error);
                                }
                            }, null, null, i122, i132, i5, z7);
                            requestInfo.requestToken = iSendRequestSync2;
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m989d("debug_loading: " + fileLoadOperation.cacheFileFinal.getName() + " dc=" + i132 + " send reqId " + requestInfo.requestToken + " offset=" + requestInfo.offset + " conType=" + i5 + " priority=" + fileLoadOperation.priority);
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startDownloadRequest$30(iSendRequestSync2);
                                }
                            });
                            fileLoadOperation.requestsCount++;
                        }
                    }
                    i3++;
                    j5 = j4;
                }
            }
            i2 = iMax;
            if (!fileLoadOperation.requestedReference) {
                FileLog.m989d(fileLoadOperation.fileName + " before download updated file ref from file ref cache!");
            }
            i3 = 0;
            while (i3 < i2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$27(RequestInfo requestInfo) {
        processRequestResult(requestInfo, null);
        requestInfo.response.freeResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$29(final RequestInfo requestInfo, int i, final int i2, TLObject tLObject, TLObject tLObject2, TLRPC.TL_error tL_error) {
        final FileLoadOperation fileLoadOperation;
        byte[] bArr;
        if (requestInfo.cancelled) {
            FileLog.m990e("received chunk but definitely cancelled offset=" + requestInfo.offset + " size=" + requestInfo.chunkSize + " token=" + requestInfo.requestToken);
            return;
        }
        if (requestInfo.cancelling) {
            FileLog.m990e("received cancelled chunk after cancelRequests! offset=" + requestInfo.offset + " size=" + requestInfo.chunkSize + " token=" + requestInfo.requestToken);
        }
        if (!this.requestInfos.contains(requestInfo)) {
            if (!this.cancelledRequestInfos.contains(requestInfo)) {
                return;
            }
            int i3 = 0;
            boolean z = false;
            while (i3 < this.requestInfos.size()) {
                RequestInfo requestInfo2 = this.requestInfos.get(i3);
                if (requestInfo2 != null && requestInfo2 != requestInfo && requestInfo2.offset == requestInfo.offset && requestInfo2.chunkSize == requestInfo.chunkSize) {
                    FileLog.m990e("received cancelled chunk faster than new one! received=" + requestInfo.requestToken + " new=" + requestInfo2.requestToken);
                    ArrayList<RequestInfo> arrayList = this.requestInfos;
                    if (!z) {
                        arrayList.set(i3, requestInfo);
                        z = true;
                    } else {
                        arrayList.remove(i3);
                        i3--;
                    }
                }
                i3++;
            }
        }
        int i4 = 0;
        while (i4 < this.cancelledRequestInfos.size()) {
            RequestInfo requestInfo3 = this.cancelledRequestInfos.get(i4);
            if (requestInfo3 != null && requestInfo3 != requestInfo && requestInfo3.offset == requestInfo.offset && requestInfo3.chunkSize == requestInfo.chunkSize) {
                FileLog.m990e("received new chunk faster than cancelled one! received=" + requestInfo.requestToken + " cancelled=" + requestInfo3.requestToken);
                this.cancelledRequestInfos.remove(i4);
                i4 += -1;
            }
            i4++;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("debug_loading: " + this.cacheFileFinal.getName() + " time=" + (System.currentTimeMillis() - requestInfo.requestStartTime) + " dcId=" + i + " cdn=" + this.isCdn + " conType=" + i2 + " reqId" + requestInfo.requestToken);
        }
        if (requestInfo == this.priorityRequestInfo) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m989d("frame get request completed " + this.priorityRequestInfo.offset);
            }
            this.priorityRequestInfo = null;
        }
        if (tL_error != null) {
            Runnable runnable = requestInfo.whenCancelled;
            if (runnable != null) {
                runnable.run();
            }
            if (tL_error.code == -2000) {
                this.requestInfos.remove(requestInfo);
                this.requestedBytesCount -= (long) requestInfo.chunkSize;
                removePart(this.notRequestedBytesRanges, requestInfo.offset, requestInfo.offset + ((long) requestInfo.chunkSize));
                return;
            }
            fileLoadOperation = this;
            if (FileRefController.isFileRefError(tL_error.text)) {
                fileLoadOperation.requestReference(requestInfo);
                return;
            } else if ((tLObject instanceof TLRPC.TL_upload_getCdnFile) && tL_error.text.equals("FILE_TOKEN_INVALID")) {
                fileLoadOperation.isCdn = false;
                fileLoadOperation.clearOperation(requestInfo, false, false);
                fileLoadOperation.startDownloadRequest(i2);
                return;
            }
        } else {
            fileLoadOperation = this;
        }
        if (tLObject2 instanceof TLRPC.TL_upload_fileCdnRedirect) {
            TLRPC.TL_upload_fileCdnRedirect tL_upload_fileCdnRedirect = (TLRPC.TL_upload_fileCdnRedirect) tLObject2;
            if (!tL_upload_fileCdnRedirect.file_hashes.isEmpty()) {
                if (fileLoadOperation.cdnHashes == null) {
                    fileLoadOperation.cdnHashes = new HashMap<>();
                }
                for (int i5 = 0; i5 < tL_upload_fileCdnRedirect.file_hashes.size(); i5++) {
                    TLRPC.TL_fileHash tL_fileHash = tL_upload_fileCdnRedirect.file_hashes.get(i5);
                    fileLoadOperation.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
            byte[] bArr2 = tL_upload_fileCdnRedirect.encryption_iv;
            if (bArr2 == null || (bArr = tL_upload_fileCdnRedirect.encryption_key) == null || bArr2.length != 16 || bArr.length != 32) {
                Runnable runnable2 = requestInfo.whenCancelled;
                if (runnable2 != null) {
                    runnable2.run();
                }
                TLRPC.TL_error tL_error2 = new TLRPC.TL_error();
                tL_error2.text = "bad redirect response";
                tL_error2.code = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
                fileLoadOperation.processRequestResult(requestInfo, tL_error2);
                return;
            }
            fileLoadOperation.isCdn = true;
            if (fileLoadOperation.notCheckedCdnRanges == null) {
                ArrayList<Range> arrayList2 = new ArrayList<>();
                fileLoadOperation.notCheckedCdnRanges = arrayList2;
                arrayList2.add(new Range(0L, fileLoadOperation.maxCdnParts));
            }
            fileLoadOperation.cdnDatacenterId = tL_upload_fileCdnRedirect.dc_id;
            fileLoadOperation.cdnIv = tL_upload_fileCdnRedirect.encryption_iv;
            fileLoadOperation.cdnKey = tL_upload_fileCdnRedirect.encryption_key;
            fileLoadOperation.cdnToken = tL_upload_fileCdnRedirect.file_token;
            fileLoadOperation.clearOperation(requestInfo, false, false);
            fileLoadOperation.startDownloadRequest(i2);
            return;
        }
        if (tLObject2 instanceof TLRPC.TL_upload_cdnFileReuploadNeeded) {
            if (fileLoadOperation.reuploadingCdn) {
                return;
            }
            fileLoadOperation.clearOperation(requestInfo, false, false);
            fileLoadOperation.reuploadingCdn = true;
            TLRPC.TL_upload_reuploadCdnFile tL_upload_reuploadCdnFile = new TLRPC.TL_upload_reuploadCdnFile();
            tL_upload_reuploadCdnFile.file_token = fileLoadOperation.cdnToken;
            tL_upload_reuploadCdnFile.request_token = ((TLRPC.TL_upload_cdnFileReuploadNeeded) tLObject2).request_token;
            ConnectionsManager.getInstance(fileLoadOperation.currentAccount).sendRequest(tL_upload_reuploadCdnFile, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject3, TLRPC.TL_error tL_error3) {
                    this.f$0.lambda$startDownloadRequest$28(i2, requestInfo, tLObject3, tL_error3);
                }
            }, null, null, 0, fileLoadOperation.datacenterId, 1, true);
            return;
        }
        if (tLObject2 instanceof TLRPC.TL_upload_file) {
            requestInfo.response = (TLRPC.TL_upload_file) tLObject2;
        } else if (tLObject2 instanceof TLRPC.TL_upload_webFile) {
            requestInfo.responseWeb = (TLRPC.TL_upload_webFile) tLObject2;
            if (fileLoadOperation.totalBytesCount == 0 && requestInfo.responseWeb.size != 0) {
                fileLoadOperation.totalBytesCount = requestInfo.responseWeb.size;
            }
        } else {
            requestInfo.responseCdn = (TLRPC.TL_upload_cdnFile) tLObject2;
        }
        if (tLObject2 != null) {
            int i6 = fileLoadOperation.currentType;
            if (i6 == 50331648) {
                StatsController.getInstance(fileLoadOperation.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 3, tLObject2.getObjectSize() + 4);
            } else if (i6 == 33554432) {
                StatsController.getInstance(fileLoadOperation.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 2, tLObject2.getObjectSize() + 4);
            } else if (i6 == 16777216) {
                StatsController.getInstance(fileLoadOperation.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 4, tLObject2.getObjectSize() + 4);
            } else if (i6 == 67108864) {
                String str = fileLoadOperation.ext;
                if (str != null && (str.toLowerCase().endsWith(HlsSegmentFormat.MP3) || fileLoadOperation.ext.toLowerCase().endsWith("m4a"))) {
                    StatsController.getInstance(fileLoadOperation.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 7, tLObject2.getObjectSize() + 4);
                } else {
                    StatsController.getInstance(fileLoadOperation.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 5, tLObject2.getObjectSize() + 4);
                }
            }
        }
        fileLoadOperation.processRequestResult(requestInfo, tL_error);
        Runnable runnable3 = requestInfo.whenCancelled;
        if (runnable3 != null) {
            runnable3.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$28(int i, RequestInfo requestInfo, TLObject tLObject, TLRPC.TL_error tL_error) {
        this.reuploadingCdn = false;
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            if (!vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i2 = 0; i2 < vector.objects.size(); i2++) {
                    TLRPC.TL_fileHash tL_fileHash = (TLRPC.TL_fileHash) vector.objects.get(i2);
                    this.cdnHashes.put(Long.valueOf(tL_fileHash.offset), tL_fileHash);
                }
            }
            startDownloadRequest(i);
            return;
        }
        if (tL_error != null) {
            if (tL_error.text.equals("FILE_TOKEN_INVALID") || tL_error.text.equals("REQUEST_TOKEN_INVALID")) {
                this.isCdn = false;
                clearOperation(requestInfo, false, false);
                startDownloadRequest(i);
                return;
            }
            onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$30(int i) {
        this.uiRequestTokens.add(Integer.valueOf(i));
    }

    public void setDelegate(FileLoadOperationDelegate fileLoadOperationDelegate) {
        this.delegate = fileLoadOperationDelegate;
    }

    public static long floorDiv(long j, long j2) {
        long j3 = j / j2;
        return ((j ^ j2) >= 0 || j2 * j3 == j) ? j3 : j3 - 1;
    }

    public boolean isFinished() {
        return this.state == 3;
    }
}
