.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$Range;,
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$PreloadRange;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final FINISH_CODE_DEFAULT:I = 0x0

.field private static final FINISH_CODE_FILE_ALREADY_EXIST:I = 0x1

.field public static volatile filesQueue:Lorg/telegram/messenger/DispatchQueue; = null

.field public static filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream; = null

.field private static globalRequestPointer:I = 0x0

.field private static final lockObject:Ljava/lang/Object;

.field private static final preloadMaxBytes:I = 0x200000

.field private static final stateCanceled:I = 0x4

.field private static final stateCancelling:I = 0x5

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private final FULL_LOGS:Z

.field private allowDisordererFileSave:Z

.field private bigFileSizeFrom:I

.field private bytesCountPadding:J

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileFinalReady:Z

.field private cacheFileGzipTemp:Ljava/io/File;

.field private cacheFileParts:Ljava/io/File;

.field private cacheFilePreload:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private final cancelAfterNoStreamListeners:Ljava/lang/Runnable;

.field private cancelledRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public volatile caughtPremiumFloodWait:Z

.field private cdnCheckBytes:[B

.field private cdnChunkCheckSize:I

.field private cdnDatacenterId:I

.field private cdnHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_fileHash;",
            ">;"
        }
    .end annotation
.end field

.field private cdnIv:[B

.field private cdnKey:[B

.field private cdnToken:[B

.field private volatile closeFilePartsStreamOnWriteEnd:Z

.field public currentAccount:I

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private currentType:I

.field private datacenterId:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private documentId:J

.field private downloadChunkSize:I

.field private downloadChunkSizeAnimation:I

.field private downloadChunkSizeBig:I

.field private downloadedBytes:J

.field private encryptFile:Z

.field private encryptIv:[B

.field private encryptKey:[B

.field private ext:Ljava/lang/String;

.field private fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

.field private fileName:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private filePartsStream:Ljava/io/RandomAccessFile;

.field private fileReadStream:Ljava/io/RandomAccessFile;

.field private fileWriteRunnable:Ljava/lang/Runnable;

.field private fiv:Ljava/io/RandomAccessFile;

.field private forceSmallChunk:Z

.field private foundMoovSize:J

.field private initialDatacenterId:I

.field private isCdn:Z

.field private isForceRequest:Z

.field private isPreloadVideoOperation:Z

.field public isStory:Z

.field private isStream:Z

.field private iv:[B

.field private key:[B

.field protected lastProgressUpdateTime:J

.field protected location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private maxCdnParts:I

.field private maxDownloadRequests:I

.field private maxDownloadRequestsAnimation:I

.field private maxDownloadRequestsBig:I

.field private moovFound:I

.field private nextAtomOffset:J

.field private nextPartWasPreloaded:Z

.field private nextPreloadDownloadOffset:J

.field private notCheckedCdnRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private notLoadedBytesRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private volatile notLoadedBytesRangesCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private notRequestedBytesRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field public parentObject:Ljava/lang/Object;

.field public pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

.field private volatile paused:Z

.field public preFinished:Z

.field private preloadFinished:Z

.field private preloadNotRequestedBytesCount:J

.field private preloadPrefixSize:I

.field private preloadStream:Ljava/io/RandomAccessFile;

.field private preloadStreamFileOffset:I

.field private preloadTempBuffer:[B

.field private preloadTempBufferCount:I

.field private preloadedBytesRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/FileLoadOperation$PreloadRange;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

.field private priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

.field private renameRetryCount:I

.field public requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestedBytesCount:J

.field private requestedPreloadedBytesRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestedReference:Z

.field private requestingCdnOffsets:Z

.field protected requestingReference:Z

.field private requestsCount:I

.field private reuploadingCdn:Z

.field private startTime:J

.field private started:Z

.field private volatile state:I

.field private storeFileName:Ljava/lang/String;

.field private storePath:Ljava/io/File;

.field stream:Lorg/telegram/messenger/FileLoadOperationStream;

.field private streamListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperationStream;",
            ">;"
        }
    .end annotation
.end field

.field streamOffset:J

.field streamPriority:Z

.field private streamPriorityStartOffset:J

.field private streamStartOffset:J

.field private supportsPreloading:Z

.field private tempPath:Ljava/io/File;

.field public totalBytesCount:J

.field private totalPreloadedBytes:I

.field totalTime:J

.field public final uiRequestTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ungzip:Z

.field private webFile:Lorg/telegram/messenger/WebFile;

.field private webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

.field private volatile writingToFilePartsStream:Z


# direct methods
.method public static synthetic $r8$lambda$5Yp6LUmPZW4miIyK5BwBm9D72Xo(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$clearOperation$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$9_79pifGm___VQ_5_0QjO_OHR_U(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$setStream$0(Lorg/telegram/messenger/FileLoadOperationStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BCAhGT9xkszqkO4gBgMos4WJ75k(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$29(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BCQ_sDye5_sxIvTLX22a74fgWfo(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getDownloadedLengthFromOffset$4([JJJLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CDuAUjvsTX7Jq3JXybb-Y9NKqJ4(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    .line 1436
    iget-object p0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 1437
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$DfvQlsgruMEVOteDUzHI3SAwV7Q(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getCurrentFile$3([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6mUHo-IrdZDhekZElByLY1Iazw(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$cancelOnStage$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$FviLTr17YUxfcmzNmGh4Zt77jgc(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$addPart$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GPHn1x9XnVVvrH5NbfzkuvdUkwM(Lorg/telegram/messenger/FileLoadOperation;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$11([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HdF2FumHvhEjW0IkY8FKcW7f8nI(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtswjgU2uwBF0JkstCryj4_6cvM(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$cancel$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MxbGMWd0E5MRFs_wgEbZGPXU3-o(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$OOP-x532BI9Nl3Vitkmk386KtBI(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$30(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGmBHKfUhzxTmozPlzOM9C4_-e0(Lorg/telegram/messenger/FileLoadOperation;ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$28(ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVgcEqNFAchv8ty9aKKDmZvGEZQ(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$27(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGQV-EtA-dtjFzjEiQPgoRA5miQ(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$requestFileOffsets$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMEiL64yLBxiZo-WwD875wZEhnk(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$19(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAK7asO5IaR0_9jikOXjFAUFrbc(Lorg/telegram/messenger/FileLoadOperation;ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$9(ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZILNyIhrBQAst1rN6aS3FVcWXI(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    .line 2171
    iget-object p0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 2172
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZDQNyp6R-lBR8vFMAcLTM_GUMKM(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$processRequestResult$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyVMiccceG_QMcvDL6U8bKmR8OA(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFail$23(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_xZO_IMKEeNZr1zDFwN-Y_979-Q(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$clearOperation$24(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSEv4l4p8cnKuvXfdMFPxZqlRRg(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$17(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZ7TbeNWuW3eS7VpC3eua52XoHw(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$removeStreamListener$5(Lorg/telegram/messenger/FileLoadOperationStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jrrmjRfBdFxX5rOyA6qI-6qziWE(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I
    .locals 4

    .line 544
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 546
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mWYnwWasfLVbyebzBRj_sWZjxA0(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$nGf2vg6_qrzCPXWCMNer3l8-Da0(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;[ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 1426
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1427
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelled:Z

    const/4 p0, 0x0

    .line 1428
    aget v1, p1, p0

    sub-int/2addr v1, v0

    aput v1, p1, p0

    if-nez v1, :cond_0

    .line 1430
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$nMYFsAJPPhN3O8EjMop7S7Ljdto(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$pause$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$oMvwZmg1siIhBg4SBEoLoGUZpk0(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$wR-7Q9FvnlT4HmKWbxBuG3Qa7ew(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$20(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMxZmIT7s_xmIN20lCdqN3FdWZQ(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$setIsPreloadVideoOperation$12(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "writeFileQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/WebFile;)V
    .locals 7

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 155
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 156
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 157
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 158
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 159
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 160
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    const-wide/32 v3, 0x7d100000

    int-to-long v5, v1

    .line 161
    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 164
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 165
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    .line 186
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 208
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    .line 795
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    .line 391
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 392
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 393
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    .line 394
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    .line 395
    iget v0, p2, Lorg/telegram/messenger/WebFile;->size:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 396
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->webFileDatacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 397
    iget-object p1, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    .line 399
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3000000

    .line 401
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x2000000

    .line 403
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x4000000

    .line 405
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    :goto_0
    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 408
    iget-object p2, p2, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 7

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 155
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 156
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 157
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 158
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 159
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 160
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    const-wide/32 v3, 0x7d100000

    int-to-long v5, v1

    .line 161
    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 164
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 165
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    .line 186
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 208
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    .line 795
    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    .line 305
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 306
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 307
    instance-of v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    .line 308
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 309
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    .line 310
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 311
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 312
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 313
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 314
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 315
    iget-wide v2, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    const/16 p2, 0x20

    .line 316
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 317
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->iv:[B

    array-length v3, p2

    invoke-static {v2, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto/16 :goto_3

    .line 319
    :cond_1
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_3

    .line 320
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;-><init>()V

    .line 321
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 322
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 323
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 324
    iget-wide v2, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    .line 325
    iget v2, p1, Lorg/telegram/messenger/ImageLocation;->photoPeerType:I

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    .line 326
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 327
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 328
    :cond_3
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p2, :cond_4

    .line 329
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;-><init>()V

    .line 330
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 331
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 332
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 333
    iget v2, p1, Lorg/telegram/messenger/ImageLocation;->thumbVersion:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->thumb_version:I

    .line 334
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 335
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 336
    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 337
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    .line 338
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 339
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 340
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v4, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 341
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 342
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 343
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 344
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 345
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne p2, v2, :cond_6

    .line 346
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    goto :goto_2

    .line 349
    :cond_5
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 350
    iget-wide v2, p1, Lorg/telegram/messenger/ImageLocation;->documentId:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iput-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->documentId:J

    .line 351
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 352
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 353
    iget-wide v2, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 354
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 355
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 357
    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v2, :cond_9

    .line 358
    new-array v2, v0, [B

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    goto :goto_3

    .line 361
    :cond_7
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 362
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 363
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 364
    iget-wide v2, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 365
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v2, :cond_8

    .line 367
    new-array v2, v0, [B

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 369
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 371
    :cond_9
    :goto_3
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq p2, v1, :cond_a

    const/4 v2, 0x3

    if-ne p2, v2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 372
    iget p1, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/high16 p1, 0x1000000

    .line 373
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 374
    iput-wide p4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    if-eqz p3, :cond_c

    goto :goto_4

    .line 375
    :cond_c
    const-string/jumbo p3, "jpg"

    :goto_4
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SecureDocument;)V
    .locals 7

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 155
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 156
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 157
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 158
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 159
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 160
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    const-wide/32 v3, 0x7d100000

    int-to-long v5, v1

    .line 161
    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 164
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 165
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    .line 186
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 208
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    .line 795
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    .line 379
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 380
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 381
    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 382
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 383
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 384
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->size:J

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 p1, 0x1

    .line 385
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const/high16 p1, 0x4000000

    .line 386
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 387
    const-string p1, ".jpg"

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 11

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 155
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 156
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 157
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 158
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 159
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 160
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    const-wide/32 v3, 0x7d100000

    int-to-long v5, v1

    .line 161
    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 164
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 165
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    .line 186
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 208
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    .line 795
    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    .line 412
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    const/4 v1, 0x1

    .line 414
    :try_start_0
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 415
    instance-of v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    iput-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    .line 416
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 417
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz p2, :cond_0

    .line 418
    :try_start_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 419
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 420
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 421
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/16 p2, 0x20

    .line 422
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 423
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    array-length v4, p2

    invoke-static {v3, v0, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    .line 425
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz p2, :cond_3

    .line 426
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 427
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->documentId:J

    .line 428
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 429
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 430
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 432
    new-array v3, v0, [B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 434
    :cond_1
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 435
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 436
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_3

    .line 437
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_2

    .line 438
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    .line 439
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    :cond_3
    :goto_1
    const-string p2, "application/x-tgsticker"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "application/x-tgwallpattern"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v1

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 445
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 446
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz p2, :cond_6

    const-wide/16 v5, 0x10

    .line 448
    rem-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long p2, v7, v9

    if-eqz p2, :cond_6

    .line 449
    rem-long v7, v3, v5

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    add-long/2addr v3, v5

    .line 450
    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 453
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/16 v3, 0x2e

    .line 455
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    goto :goto_4

    .line 458
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_5

    .line 456
    :cond_8
    :goto_4
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 460
    :goto_5
    const-string p2, "audio/ogg"

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/high16 p2, 0x3000000

    .line 461
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    .line 462
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->isVideoMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x2000000

    .line 463
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    :cond_a
    const/high16 p2, 0x4000000

    .line 465
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 467
    :goto_6
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v1, :cond_b

    .line 468
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    return-void

    .line 471
    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 472
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method private addPart(Ljava/util/ArrayList;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJZ)V"
        }
    .end annotation

    move-wide/from16 v6, p4

    if-eqz p1, :cond_9

    cmp-long v0, v6, p2

    if-gez v0, :cond_0

    goto/16 :goto_5

    .line 573
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    const/4 v9, 0x1

    if-ge v1, v0, :cond_6

    .line 576
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 577
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gtz v2, :cond_3

    .line 578
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    .line 579
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    move-wide v3, p2

    :goto_2
    move v8, v9

    goto :goto_4

    .line 582
    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    .line 583
    invoke-static {v10, v6, v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputstart(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    goto :goto_1

    :cond_2
    move-wide v3, p2

    goto :goto_3

    .line 588
    :cond_3
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 589
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$Range;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v1

    const/4 v5, 0x0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    .line 590
    invoke-virtual {p1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    invoke-static {v10, v6, v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputstart(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    goto :goto_2

    :cond_4
    move-wide v3, p2

    .line 594
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v11

    cmp-long v2, v3, v11

    if-gez v2, :cond_5

    .line 595
    invoke-static {v10, v3, v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputend(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-wide v3, p2

    :goto_4
    if-eqz p6, :cond_9

    if-eqz v8, :cond_8

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 604
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 605
    sget-object p1, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 607
    :cond_7
    monitor-enter p0

    .line 608
    :try_start_0
    iput-boolean v9, p0, Lorg/telegram/messenger/FileLoadOperation;->writingToFilePartsStream:Z

    .line 609
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    sget-object p1, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 656
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 609
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 658
    :cond_8
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_9

    .line 659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " downloaded duplicate file part "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private canFinishPreload()Z
    .locals 2

    .line 2116
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cancel(Z)V
    .locals 2

    .line 1348
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelOnStage(Z)V
    .locals 2

    .line 1354
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    .line 1355
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1356
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->cancelRequests(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_5

    .line 1363
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 1365
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1366
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1369
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1372
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 1374
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1375
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1378
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1381
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 1383
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1384
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1387
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1390
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 1392
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1393
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1396
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1399
    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 1401
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1402
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 1405
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private cancelRequests(Ljava/lang/Runnable;)V
    .locals 11

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelRequests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with callback"

    if-eqz p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 1414
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 1415
    new-array v4, v3, [I

    const/4 v5, 0x0

    move v6, v5

    .line 1416
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1417
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1418
    iget v8, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    if-eqz v8, :cond_3

    .line 1419
    iput-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelling:Z

    .line 1420
    const-string v8, "cancelRequests cancel "

    if-nez p1, :cond_1

    .line 1421
    iput-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelled:Z

    .line 1422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1423
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    iget v9, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v8, v9, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_2

    .line 1425
    :cond_1
    new-instance v9, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;

    invoke-direct {v9, v7, v2, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;[ILjava/lang/Runnable;)V

    iput-object v9, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    .line 1433
    aget v9, v2, v5

    add-int/2addr v9, v0

    aput v9, v2, v5

    .line 1434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1435
    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    iget v9, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;

    invoke-direct {v10, v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    invoke-virtual {v8, v9, v0, v10}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZLjava/lang/Runnable;)V

    .line 1441
    :goto_2
    iget v8, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    if-ne v8, v3, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v0

    .line 1442
    :goto_3
    aget v9, v4, v8

    iget v7, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    add-int/2addr v9, v7

    aput v9, v4, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v5, v3, :cond_8

    if-nez v5, :cond_5

    move p1, v3

    goto :goto_5

    :cond_5
    const p1, 0x10002

    .line 1447
    :goto_5
    aget v0, v4, v5

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_7

    .line 1448
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_6

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 1449
    :goto_6
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->discardConnection(II)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private cleanup()V
    .locals 4

    const/4 v0, 0x0

    .line 1457
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 1459
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1461
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1463
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1464
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1467
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1470
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_1

    .line 1472
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 1474
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1476
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1477
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1480
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1483
    :cond_1
    :goto_3
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v1, :cond_2

    .line 1485
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 1487
    :try_start_8
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1489
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1490
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 1493
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1496
    :cond_2
    :goto_5
    :try_start_9
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_4

    .line 1497
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1498
    :try_start_a
    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->writingToFilePartsStream:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v1, :cond_3

    .line 1500
    :try_start_b
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    .line 1502
    :try_start_c
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1504
    :goto_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1505
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    goto :goto_7

    :cond_3
    const/4 v1, 0x1

    .line 1507
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->closeFilePartsStreamOnWriteEnd:Z

    .line 1509
    :goto_7
    monitor-exit p0

    goto :goto_9

    :goto_8
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    move-exception v1

    .line 1512
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1516
    :cond_4
    :goto_9
    :try_start_e
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_5

    .line 1517
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1518
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    .line 1521
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1523
    :cond_5
    :goto_a
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move v1, v0

    .line 1524
    :goto_b
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1525
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1526
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1527
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1528
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_c

    .line 1529
    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1530
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1531
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_c

    .line 1532
    :cond_7
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1533
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1534
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_8
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1537
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    return-void
.end method

.method private clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V
    .locals 15

    const/4 v6, 0x2

    .line 2149
    new-array v7, v6, [I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v8, 0x0

    move v9, v8

    .line 2150
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 2151
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 2152
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 2153
    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_0

    .line 2154
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v3, p1

    goto :goto_2

    .line 2156
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v13, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v13, v13

    add-long/2addr v4, v13

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    goto :goto_1

    :goto_2
    if-ne v3, v10, :cond_1

    goto :goto_3

    .line 2161
    :cond_1
    iget v1, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 2162
    iput-boolean v1, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelling:Z

    if-eqz p3, :cond_2

    .line 2164
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v10}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    iput-object v2, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    .line 2170
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v4, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    new-instance v5, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;

    invoke-direct {v5, v10}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    invoke-virtual {v2, v4, v1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2176
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v4, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v2, v4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2177
    iput-boolean v1, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelled:Z

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-wide v1, v11

    goto :goto_0

    :cond_4
    move v3, v8

    :goto_4
    if-ge v3, v6, :cond_8

    if-nez v3, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    const v4, 0x10002

    .line 2183
    :goto_5
    aget v5, v7, v3

    const/high16 v9, 0x100000

    if-le v5, v9, :cond_7

    .line 2184
    iget-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_6

    :cond_6
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 2185
    :goto_6
    iget v9, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager;->discardConnection(II)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2188
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2189
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v6, v1

    move v9, v8

    .line 2190
    :goto_7
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_d

    .line 2191
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 2192
    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_9

    .line 2193
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2195
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v11, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v11, v11

    add-long/2addr v4, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 2197
    :goto_8
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2198
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2199
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_9

    .line 2200
    :cond_a
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2201
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2202
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_9

    .line 2203
    :cond_b
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2204
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2205
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    .line 2207
    :cond_c
    :goto_9
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2209
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2210
    iput v8, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    if-nez p2, :cond_e

    .line 2211
    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_e

    .line 2212
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    return-void

    .line 2213
    :cond_e
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 2214
    iput-wide v6, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v6, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    :cond_f
    return-void
.end method

.method private copyNotLoadedRanges()V
    .locals 2

    .line 801
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 804
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    return-void
.end method

.method private delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 2

    .line 1707
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1709
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    return-void

    .line 1710
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    return-void

    .line 1712
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1713
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    :cond_2
    return-void
.end method

.method private findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 14

    move-object/from16 v0, p5

    .line 1718
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    move-wide v2, p1

    .line 1720
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    int-to-long v7, v4

    sub-long v7, p3, v7

    cmp-long v4, v2, v7

    if-ltz v4, :cond_2

    int-to-long v9, v1

    add-long v9, p3, v9

    cmp-long v4, v2, v9

    if-ltz v4, :cond_3

    :cond_2
    const-wide/16 p1, 0x0

    goto/16 :goto_2

    :cond_3
    const-wide/16 v11, 0x10

    sub-long v11, v9, v11

    cmp-long v4, v2, v11

    .line 1723
    const-string v11, "!!!"

    const-wide/32 v12, 0x7fffffff

    if-ltz v4, :cond_5

    sub-long v2, v9, v2

    cmp-long v1, v2, v12

    if-gtz v1, :cond_4

    long-to-int v1, v2

    .line 1728
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    .line 1729
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    long-to-int v1, v1

    .line 1731
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1732
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    invoke-virtual {v0, v1, v6, v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    return-wide v9

    .line 1726
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1735
    :cond_5
    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    if-eqz v4, :cond_6

    .line 1736
    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1737
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v11, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    rsub-int/lit8 v12, v11, 0x10

    invoke-virtual {v0, v4, v11, v12, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1738
    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 p1, 0x0

    sub-long v7, v2, p3

    cmp-long v4, v7, v12

    if-gtz v4, :cond_a

    long-to-int v4, v7

    .line 1744
    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1745
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    invoke-virtual {v0, v4, v6, v5, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1747
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x1

    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    add-int/2addr v6, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v6, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    if-nez v6, :cond_7

    return-wide p1

    :cond_7
    if-ne v6, v7, :cond_8

    const/16 v6, 0xc

    .line 1752
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/16 v7, 0xd

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v5, v7, 0x10

    add-int/2addr v6, v5

    const/16 v5, 0xe

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v6, v5

    const/16 v5, 0xf

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v6, v5

    :cond_8
    const/4 v5, 0x4

    .line 1754
    aget-byte v5, v4, v5

    const/16 v7, 0x6d

    if-ne v5, v7, :cond_9

    const/4 v5, 0x5

    aget-byte v5, v4, v5

    const/16 v7, 0x6f

    if-ne v5, v7, :cond_9

    const/4 v5, 0x6

    aget-byte v5, v4, v5

    if-ne v5, v7, :cond_9

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0x76

    if-ne v4, v5, :cond_9

    neg-int v0, v6

    int-to-long v0, v0

    return-wide v0

    :cond_9
    int-to-long v4, v6

    add-long/2addr v2, v4

    cmp-long v4, v2, v9

    if-ltz v4, :cond_0

    return-wide v2

    .line 1742
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    return-wide p1
.end method

.method public static floorDiv(JJ)J
    .locals 6

    .line 2631
    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    mul-long/2addr p2, v0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method private getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)J"
        }
    .end annotation

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_7

    .line 706
    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v3, v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 716
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 721
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 722
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    cmp-long v6, p2, v6

    if-gtz v6, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    move-object v3, v5

    .line 725
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-gtz v6, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_3

    move-wide v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-wide v4, p4

    :goto_1
    cmp-long p1, v4, v1

    if-nez p1, :cond_5

    return-wide v1

    :cond_5
    if-eqz v3, :cond_6

    .line 733
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 735
    :cond_6
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    sub-long/2addr v3, p2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 707
    :cond_7
    :goto_2
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne p1, v0, :cond_8

    return-wide p4

    .line 710
    :cond_8
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_9

    return-wide v1

    :cond_9
    sub-long/2addr v3, p2

    .line 713
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private synthetic lambda$addPart$2(Ljava/util/ArrayList;)V
    .locals 10

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 613
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v3, v2, 0x10

    add-int/lit8 v3, v3, 0x4

    .line 618
    sget-object v4, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    if-nez v4, :cond_1

    .line 619
    new-instance v4, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-direct {v4, v3}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;-><init>(I)V

    sput-object v4, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 621
    :cond_1
    invoke-virtual {v4}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->reset()V

    .line 623
    :goto_0
    sget-object v4, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_2

    .line 625
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 626
    sget-object v7, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeLong(J)V

    .line 627
    sget-object v7, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 629
    :cond_2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_3

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x0

    .line 633
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 634
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    sget-object v2, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    iget-object v2, v2, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->buf:[B

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 635
    iput-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->writingToFilePartsStream:Z

    .line 636
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->closeFilePartsStreamOnWriteEnd:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 638
    :try_start_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 640
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 642
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p1, 0x0

    .line 643
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 645
    :cond_4
    monitor-exit p0

    goto :goto_5

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 647
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 648
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p1, 0x1

    .line 649
    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    goto :goto_5

    .line 650
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 651
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 654
    :cond_6
    :goto_5
    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    return-void
.end method

.method private synthetic lambda$cancel$13(Z)V
    .locals 0

    .line 1349
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->cancelOnStage(Z)V

    return-void
.end method

.method private synthetic lambda$cancelOnStage$14()V
    .locals 2

    .line 1357
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1358
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$clearOperation$24(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2166
    iput-object v0, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    .line 2167
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2168
    iput-boolean v0, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelled:Z

    return-void
.end method

.method private synthetic lambda$clearOperation$26()V
    .locals 1

    .line 2189
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$getCurrentFile$3([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 682
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    aput-object v0, p1, v2

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    aput-object v0, p1, v2

    .line 687
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$getDownloadedLengthFromOffset$4([JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 8

    const/4 v1, 0x0

    .line 753
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide p2

    aput-wide p2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 755
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-wide/16 p2, 0x0

    .line 756
    aput-wide p2, p1, v1

    .line 758
    :goto_2
    iget p2, v2, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    const-wide/16 p3, 0x1

    .line 759
    aput-wide p3, p1, p2

    .line 761
    :cond_0
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    .line 796
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->pause()V

    .line 797
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFail$23(I)V
    .locals 1

    .line 2134
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v0, :cond_0

    .line 2135
    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    .line 2137
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$17(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1654
    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1656
    :catch_0
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$18()V
    .locals 1

    const/4 v0, 0x0

    .line 1671
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$19(Z)V
    .locals 5

    .line 1677
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished downloading file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 1681
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v0, 0x3000000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1682
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_2

    .line 1684
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ne p1, v0, :cond_3

    .line 1686
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_6

    .line 1688
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1689
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    .line 1691
    :cond_5
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 1695
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, v0}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$20(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1574
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1577
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz p3, :cond_2

    .line 1580
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p4, :cond_e

    .line 1584
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 1586
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1587
    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    const/high16 v0, 0x200000

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/FileLoader;->copyFile(Ljava/io/InputStream;Ljava/io/File;I)Z

    .line 1588
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1589
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1590
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1591
    :try_start_1
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    move-object p4, p1

    goto :goto_3

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-object p4, p1

    goto :goto_2

    :catchall_1
    move-exception p3

    move-object p1, p4

    .line 1595
    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1596
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_3

    .line 1597
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to ungzip temp = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " to final = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :catch_1
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 1601
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-nez p1, :cond_d

    .line 1603
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    .line 1605
    :try_start_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p4, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception p1

    .line 1608
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    move p1, p2

    goto/16 :goto_a

    .line 1612
    :cond_5
    :try_start_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_8

    .line 1613
    sget-object p1, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1614
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    move v0, p3

    .line 1616
    :goto_5
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1617
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    .line 1620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 1622
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1624
    :goto_6
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1627
    :cond_7
    monitor-exit p1

    goto :goto_8

    :goto_7
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :catch_3
    move-exception p1

    goto :goto_9

    .line 1629
    :cond_8
    :goto_8
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    .line 1632
    :goto_9
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :goto_a
    const/4 v0, 0x3

    if-nez p1, :cond_9

    .line 1635
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ne v1, v0, :cond_9

    .line 1637
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p4, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1639
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v1

    .line 1642
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_b
    if-nez p1, :cond_c

    .line 1646
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_a

    .line 1647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to rename temp = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to final = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retry = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1649
    :cond_a
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge p1, v0, :cond_b

    .line 1651
    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1652
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void

    .line 1661
    :cond_b
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 1662
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinalReady:Z

    goto :goto_c

    .line 1664
    :cond_c
    iput-boolean p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinalReady:Z

    .line 1665
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1666
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V

    goto :goto_c

    .line 1670
    :cond_d
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1676
    :cond_e
    :goto_c
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$pause$7()V
    .locals 3

    .line 813
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 814
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug_loading: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pause operation, clear requests"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 817
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    return-void

    .line 819
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 820
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget v2, v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->failNotRunningRequest(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$processRequestResult$22(I)V
    .locals 1

    .line 1819
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeStreamListener$5(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileLoadOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removing stream listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$requestFileOffsets$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1774
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void

    .line 1775
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz p2, :cond_7

    .line 1776
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1777
    check-cast p1, Lorg/telegram/tgnet/Vector;

    .line 1778
    iget-object p2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1779
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_1

    .line 1780
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_1
    move p2, v0

    .line 1782
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1783
    iget-object v1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1784
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1787
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 1788
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1789
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1790
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1791
    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1792
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1793
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1794
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    return-void

    .line 1795
    :cond_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1796
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1797
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    return-void

    .line 1798
    :cond_6
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1799
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1800
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$setIsPreloadVideoOperation$12(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1322
    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1323
    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    .line 1324
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 p1, -0x1

    .line 1325
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void
.end method

.method private synthetic lambda$setStream$0(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 69
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {p1}, Lorg/telegram/messenger/FileLoadOperationStream;->newDataAvailable()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$start$10()V
    .locals 1

    const/4 v0, -0x1

    .line 905
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void
.end method

.method private synthetic lambda$start$11([Z)V
    .locals 7

    .line 1263
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1264
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v0, :cond_1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1265
    :goto_1
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    if-nez p1, :cond_2

    iget-wide v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    .line 1267
    :cond_2
    :try_start_0
    invoke-direct {p0, v2, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1269
    :catch_0
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void

    :cond_3
    const/4 p1, -0x1

    .line 1272
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void
.end method

.method private synthetic lambda$start$8(I)V
    .locals 1

    .line 865
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$start$9(ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V
    .locals 12

    move-object/from16 v6, p4

    .line 857
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    :cond_0
    const/4 v7, 0x1

    if-eqz p1, :cond_4

    .line 861
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v1

    div-long v2, p2, v2

    int-to-long v4, v1

    mul-long v8, v2, v4

    .line 862
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_3

    .line 863
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    .line 864
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 865
    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 866
    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 867
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v10, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v10, v10

    add-long/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 868
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget v1, v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    if-eqz v1, :cond_1

    .line 869
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget v2, v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v1, v2, v7}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 870
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    sub-int/2addr v1, v7

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 872
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_2

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame get cancel request at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 875
    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 877
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-nez v1, :cond_5

    .line 878
    iput-wide v8, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    goto :goto_0

    .line 881
    :cond_4
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v1

    div-long v2, p2, v2

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 883
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 884
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileLoadOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start, adding stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 887
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 888
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelAfterNoStreamListeners:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz p5, :cond_9

    .line 891
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 892
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 893
    iput-boolean v7, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    :cond_8
    const/4 v1, -0x1

    .line 896
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    const/4 v1, 0x0

    .line 897
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    .line 899
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 900
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$27(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2424
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    .line 2425
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    return-void
.end method

.method private synthetic lambda$startDownloadRequest$28(ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    .line 2562
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    .line 2563
    instance-of v1, p3, Lorg/telegram/tgnet/Vector;

    if-eqz v1, :cond_2

    .line 2564
    check-cast p3, Lorg/telegram/tgnet/Vector;

    .line 2565
    iget-object p2, p3, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2566
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 2567
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    .line 2569
    :cond_0
    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 2570
    iget-object p2, p3, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2571
    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2574
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void

    :cond_2
    if-eqz p4, :cond_5

    .line 2576
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FILE_TOKEN_INVALID"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "REQUEST_TOKEN_INVALID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 2581
    :cond_3
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void

    .line 2577
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2578
    invoke-direct {p0, p2, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    .line 2579
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$29(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2455
    iget-boolean v3, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelled:Z

    const-string v4, " token="

    const-string v5, " size="

    if-eqz v3, :cond_0

    .line 2456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received chunk but definitely cancelled offset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 2459
    :cond_0
    iget-boolean v3, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->cancelling:Z

    if-eqz v3, :cond_1

    .line 2460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received cancelled chunk after cancelRequests! offset="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2462
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    .line 2463
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    move v3, v5

    move v6, v3

    .line 2468
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 2469
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-eqz v7, :cond_4

    if-eq v7, p1, :cond_4

    .line 2470
    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v8

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget v8, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    iget v9, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    if-ne v8, v9, :cond_4

    .line 2471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received cancelled chunk faster than new one! received="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-nez v6, :cond_3

    .line 2473
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v6, v4

    goto :goto_1

    .line 2476
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_4
    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    .line 2482
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 2483
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-eqz v6, :cond_6

    if-eq v6, p1, :cond_6

    .line 2484
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v7

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget v7, v6, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    iget v8, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    if-ne v7, v8, :cond_6

    .line 2485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received new chunk faster than cancelled one! received="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cancelled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2486
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_6
    add-int/2addr v3, v4

    goto :goto_2

    .line 2491
    :cond_7
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_8

    .line 2492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debug_loading: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " time="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " dcId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cdn="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " conType="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reqId"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2494
    :cond_8
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-ne p1, p2, :cond_a

    .line 2495
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p2, :cond_9

    .line 2496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame get request completed "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_9
    const/4 p2, 0x0

    .line 2498
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    :cond_a
    if-eqz v2, :cond_e

    .line 2501
    iget-object p2, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz p2, :cond_b

    .line 2502
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2504
    :cond_b
    iget p2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, -0x7d0

    if-ne p2, v3, :cond_c

    .line 2505
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2506
    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget p2, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2507
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    iget p1, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    move-object p1, p0

    move-wide p3, v0

    move-wide/from16 p5, v2

    invoke-direct/range {p1 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    return-void

    .line 2509
    :cond_c
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2510
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void

    :cond_d
    move-object/from16 v3, p4

    .line 2512
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    if-eqz v3, :cond_e

    .line 2513
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "FILE_TOKEN_INVALID"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2514
    iput-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2515
    invoke-direct {p0, p1, v5, v5}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    .line 2516
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void

    .line 2521
    :cond_e
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    if-eqz v3, :cond_15

    .line 2522
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    .line 2523
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2524
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez v2, :cond_f

    .line 2525
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_f
    move v2, v5

    .line 2527
    :goto_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 2528
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2529
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2532
    :cond_10
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    if-eqz v2, :cond_13

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    if-eqz v3, :cond_13

    array-length v2, v2

    const/16 v6, 0x10

    if-ne v2, v6, :cond_13

    array-length v2, v3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_11

    goto :goto_4

    .line 2541
    :cond_11
    iput-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2542
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    if-nez v2, :cond_12

    .line 2543
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    .line 2544
    new-instance v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    int-to-long v9, v3

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    :cond_12
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->dc_id:I

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    .line 2547
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    .line 2548
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    .line 2549
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->file_token:[B

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    .line 2550
    invoke-direct {p0, p1, v5, v5}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    .line 2551
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void

    .line 2533
    :cond_13
    :goto_4
    iget-object v0, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 2534
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2536
    :cond_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 2537
    const-string v1, "bad redirect response"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 v1, 0x190

    .line 2538
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 2539
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    return-void

    .line 2553
    :cond_15
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    if-eqz v3, :cond_16

    .line 2554
    iget-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez v2, :cond_20

    .line 2555
    invoke-direct {p0, p1, v5, v5}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    .line 2556
    iput-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    .line 2557
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    .line 2558
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;-><init>()V

    .line 2559
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->file_token:[B

    .line 2560
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->request_token:[B

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->request_token:[B

    .line 2561
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p3, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileLoadOperation;ILorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    return-void

    .line 2587
    :cond_16
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    if-eqz v0, :cond_17

    .line 2588
    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)V

    goto :goto_5

    .line 2589
    :cond_17
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    if-eqz v0, :cond_18

    .line 2590
    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)V

    .line 2591
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_19

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    if-eqz v0, :cond_19

    .line 2592
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    int-to-long v3, v0

    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    goto :goto_5

    .line 2595
    :cond_18
    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;)V

    :cond_19
    :goto_5
    if-eqz v1, :cond_1f

    .line 2598
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v3, 0x3000000

    const/4 v4, 0x4

    if-ne v0, v3, :cond_1a

    .line 2599
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v3, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    add-int/2addr v1, v4

    int-to-long v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto/16 :goto_6

    :cond_1a
    const/high16 v3, 0x2000000

    if-ne v0, v3, :cond_1b

    .line 2601
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v3, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    add-int/2addr v1, v4

    int-to-long v4, v1

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_6

    :cond_1b
    const/high16 v3, 0x1000000

    if-ne v0, v3, :cond_1c

    .line 2603
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v3, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    add-int/2addr v1, v4

    int-to-long v5, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_6

    :cond_1c
    const/high16 v3, 0x4000000

    if-ne v0, v3, :cond_1f

    .line 2605
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "m4a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2606
    :cond_1d
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v3, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    add-int/2addr v1, v4

    int-to-long v4, v1

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_6

    .line 2608
    :cond_1e
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v3, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    add-int/2addr v1, v4

    int-to-long v4, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 2612
    :cond_1f
    :goto_6
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    .line 2613
    iget-object p1, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz p1, :cond_20

    .line 2614
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_20
    :goto_7
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$30(I)V
    .locals 1

    .line 2621
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->uiRequestTokens:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyStreamListeners()V
    .locals 3

    .line 666
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 669
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperationStream;

    invoke-interface {v2}, Lorg/telegram/messenger/FileLoadOperationStream;->newDataAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishLoadingFile(ZIZ)V
    .locals 9

    .line 1542
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1545
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1546
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    .line 1547
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 1548
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    move-object v3, p0

    goto :goto_0

    .line 1568
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1569
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1570
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1571
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 1572
    sget-object p2, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1698
    iput-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1699
    iput-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1700
    iput-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1701
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didPreFinishLoading(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    return-void

    .line 1549
    :goto_0
    iput-boolean v1, v3, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1550
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_4

    if-ne p2, v1, :cond_3

    .line 1552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "file already exist "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1554
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finished preloading file to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " loaded "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v3, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v3, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " prefSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v3, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1557
    :cond_4
    :goto_1
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz p1, :cond_6

    .line 1558
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 1559
    iget p1, v3, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object p3, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1561
    :cond_5
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_6

    .line 1562
    iget p1, v3, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object p3, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1565
    :cond_6
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didPreFinishLoading(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    .line 1566
    iget-object p1, v3, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, v3, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    return-void
.end method

.method private removePart(Ljava/util/ArrayList;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    cmp-long v0, p4, p2

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 528
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 532
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 533
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-nez v5, :cond_1

    .line 534
    invoke-static {v4, p4, p5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputend(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    :goto_1
    move v0, v3

    goto :goto_2

    .line 537
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, p4, v5

    if-nez v5, :cond_2

    .line 538
    invoke-static {v4, p2, p3}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputstart(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 543
    :goto_2
    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 552
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$Range;

    add-int/lit8 v4, v1, 0x1

    .line 553
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 554
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 555
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fputend(Lorg/telegram/messenger/FileLoadOperation$Range;J)V

    .line 556
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 561
    new-instance v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/4 v9, 0x0

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private requestFileOffsets(J)V
    .locals 10

    .line 1765
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1768
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1769
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;-><init>()V

    .line 1770
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->file_token:[B

    .line 1771
    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->offset:J

    .line 1772
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    return-void
.end method

.method private requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 6

    .line 2219
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2222
    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperation(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;ZZ)V

    const/4 v0, 0x1

    .line 2223
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 2224
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedReference:Z

    .line 2225
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    .line 2226
    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2227
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-gez v3, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_1

    .line 2228
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 2229
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    .line 2232
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    .line 2233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file reference expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2235
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object p0, v5, v0

    const/4 v0, 0x2

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateParams()V
    .locals 4

    .line 291
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->downloadSpeedBoost:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x100000

    .line 292
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/16 v0, 0xc

    .line 293
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    goto :goto_0

    .line 294
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->getfileExperimentalParams:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x80000

    .line 295
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/16 v0, 0x8

    .line 296
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x20000

    .line 298
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/4 v0, 0x4

    .line 299
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 301
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    int-to-long v0, v0

    const-wide/32 v2, 0x7d100000

    div-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1344
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->cancel(Z)V

    return-void
.end method

.method public checkPrefixPreloadFinished()Z
    .locals 8

    .line 80
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    move v5, v1

    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 89
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 95
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return v2

    .line 92
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2

    :cond_2
    return v1
.end method

.method protected getCacheFileFinal()Ljava/io/File;
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    return-object v0
.end method

.method protected getCurrentFile()Ljava/io/File;
    .locals 4

    .line 679
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 680
    new-array v1, v1, [Ljava/io/File;

    .line 681
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 690
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 692
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 694
    aget-object v0, v1, v0

    return-object v0
.end method

.method protected getCurrentFileFast()Ljava/io/File;
    .locals 2

    .line 698
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinalReady:Z

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    return-object v0

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 521
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getDatacenterId()I
    .locals 1

    .line 484
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    return v0
.end method

.method public getDocumentId()J
    .locals 2

    .line 776
    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->documentId:J

    return-wide v0
.end method

.method protected getDownloadedLengthFromOffset(F)F
    .locals 6

    .line 741
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    .line 742
    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    long-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-long v2, v0

    move-object v0, p0

    .line 745
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getDownloadedLengthFromOffset(JJ)[J
    .locals 9

    .line 749
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x2

    .line 750
    new-array v2, v0, [J

    .line 751
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda23;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 764
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInQueue()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getPosition(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 500
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return v0
.end method

.method public getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-object v0
.end method

.method public isFinished()Z
    .locals 2

    .line 2640
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForceRequest()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1306
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    return v0
.end method

.method public isPreloadFinished()Z
    .locals 1

    .line 1340
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    return v0
.end method

.method public isPreloadVideoOperation()Z
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    return v0
.end method

.method protected onFail(ZI)V
    .locals 7

    .line 2120
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 2121
    :goto_0
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 2122
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v1, :cond_3

    .line 2123
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_3

    .line 2124
    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    sub-long v3, v1, v3

    .line 2125
    :goto_1
    const-string v1, " size = "

    const-string v2, " dc = "

    const-string v5, " time = "

    if-ne p2, v0, :cond_2

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel downloading file to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 2128
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed downloading file to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " reason = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 2133
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 2140
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz p1, :cond_5

    .line 2141
    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    .line 2143
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 808
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 811
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    .line 812
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 1811
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const-string v3, " offset "

    const/4 v9, 0x5

    const-string v4, " "

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v2, v9, :cond_1

    .line 1812
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1813
    new-instance v0, Lorg/telegram/messenger/FileLog$IgnoreSentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to write to finished file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " reqToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLog$IgnoreSentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return v10

    .line 1817
    :cond_1
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    .line 1818
    iget-object v5, v1, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1819
    new-instance v5, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1, v2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1820
    const-string v13, " secret = "

    const-string v14, " volume_id = "

    const-string v15, " access_hash = "

    const-string v2, " local_id = "

    const-string v5, " id = "

    move-object/from16 v16, v13

    if-nez v0, :cond_39

    .line 1822
    :try_start_0
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const-wide/16 v17, 0x0

    iget-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v19

    cmp-long v0, v12, v19

    if-eqz v0, :cond_3

    .line 1823
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return v10

    :catch_0
    move-exception v0

    goto/16 :goto_1c

    :cond_2
    const-wide/16 v17, 0x0

    .line 1827
    :cond_3
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1828
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    .line 1829
    :cond_4
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1830
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    .line 1831
    :cond_5
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1832
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 1836
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move v13, v10

    move v2, v11

    goto/16 :goto_1b

    .line 1840
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v4

    .line 1841
    iget-boolean v12, v1, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v12, :cond_a

    .line 1842
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v12

    iget v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v7, v6

    div-long/2addr v12, v7

    int-to-long v6, v6

    mul-long/2addr v12, v6

    .line 1844
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-eqz v6, :cond_9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_a

    .line 1846
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 1847
    invoke-direct {v1, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;->requestFileOffsets(J)V

    return v11

    .line 1852
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v6

    const/16 v21, 0xe

    const/16 v22, 0xf

    const-wide/16 v23, 0x10

    const/16 v25, 0x18

    const/16 v26, 0x10

    const-wide/16 v27, 0xff

    if-eqz v6, :cond_b

    .line 1853
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    div-long v6, v6, v23

    const/16 p2, 0xc

    .line 1854
    iget-object v8, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/16 v29, 0xd

    const/16 v30, 0x8

    and-long v12, v6, v27

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v22

    shr-long v12, v6, v30

    and-long v12, v12, v27

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 1855
    aput-byte v12, v8, v21

    shr-long v12, v6, v26

    and-long v12, v12, v27

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 1856
    aput-byte v12, v8, v29

    shr-long v6, v6, v25

    and-long v6, v6, v27

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1857
    aput-byte v6, v8, p2

    .line 1858
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v12

    invoke-static {v6, v7, v8, v10, v12}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    goto :goto_2

    :cond_b
    const/16 p2, 0xc

    const/16 v29, 0xd

    const/16 v30, 0x8

    .line 1863
    :goto_2
    iget-boolean v6, v1, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v6, :cond_16

    .line 1864
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1865
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1866
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1867
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 1868
    iget-object v7, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1869
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_c

    .line 1870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save preload file part "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1872
    :cond_c
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v2, :cond_d

    .line 1873
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 1875
    :cond_d
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v27, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    iget v7, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v7, v7

    const/16 v32, 0x0

    move-wide/from16 v30, v5

    move-wide/from16 v28, v7

    invoke-direct/range {v27 .. v32}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    move-object/from16 v5, v27

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    add-int/2addr v2, v4

    iput v2, v1, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 1878
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/2addr v2, v4

    iput v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1880
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-nez v2, :cond_10

    .line 1881
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    move-object v6, v0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v2

    cmp-long v0, v2, v17

    if-gez v0, :cond_f

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    .line 1884
    iget-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v12, v0

    add-long/2addr v6, v12

    iput-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1885
    iget-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    cmp-long v0, v6, v12

    if-gez v0, :cond_e

    const-wide/32 v6, 0x100000

    add-long/2addr v6, v2

    .line 1886
    iput-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    .line 1887
    iput v11, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    goto :goto_3

    :cond_e
    const-wide/32 v6, 0x200000

    .line 1889
    iput-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    const/4 v0, 0x2

    .line 1890
    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    .line 1892
    :goto_3
    iput-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    goto :goto_4

    .line 1894
    :cond_f
    iget-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1896
    :goto_4
    iput-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    goto :goto_5

    :cond_10
    const/4 v8, 0x0

    .line 1898
    :goto_5
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1899
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1900
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1901
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v0, v0, 0x18

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1902
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    cmp-long v0, v2, v17

    if-eqz v0, :cond_13

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_11

    iget-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    cmp-long v0, v4, v17

    if-ltz v0, :cond_13

    :cond_11
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    const/high16 v4, 0x200000

    if-gt v0, v4, :cond_13

    iget-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_12

    goto :goto_6

    :cond_12
    move v0, v10

    goto :goto_7

    :cond_13
    :goto_6
    move v0, v11

    :goto_7
    if-eqz v0, :cond_14

    .line 1904
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    move-wide/from16 v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1905
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v11}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_8

    .line 1906
    :cond_14
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v2, :cond_15

    .line 1907
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iget v4, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    :cond_15
    :goto_8
    move v12, v10

    goto/16 :goto_16

    :cond_16
    move-object v6, v0

    const/4 v8, 0x0

    .line 1910
    iget-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v8, v4

    add-long/2addr v12, v8

    iput-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    move-wide/from16 v33, v12

    .line 1911
    iget-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v17, 0x0

    cmp-long v0, v11, v17

    if-lez v0, :cond_1a

    cmp-long v0, v33, v11

    if-gez v0, :cond_18

    .line 1912
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v0, :cond_17

    int-to-long v3, v0

    cmp-long v0, v33, v3

    if-ltz v0, :cond_17

    invoke-direct {v1}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    move v0, v10

    goto :goto_a

    :cond_18
    :goto_9
    const/4 v0, 0x1

    .line 1913
    :goto_a
    iget-wide v3, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v3, v3, v11

    if-gez v3, :cond_19

    move v11, v0

    const/4 v12, 0x1

    goto :goto_e

    :cond_19
    :goto_b
    move v11, v0

    move v12, v10

    goto :goto_e

    .line 1917
    :cond_1a
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v4, v0, :cond_1d

    cmp-long v3, v11, v33

    if-eqz v3, :cond_1b

    int-to-long v3, v0

    rem-long v3, v33, v3

    const-wide/16 v17, 0x0

    cmp-long v0, v3, v17

    if-eqz v0, :cond_1c

    goto :goto_c

    :cond_1b
    const-wide/16 v17, 0x0

    :goto_c
    cmp-long v0, v11, v17

    if-lez v0, :cond_1d

    cmp-long v0, v11, v33

    if-gtz v0, :cond_1c

    goto :goto_d

    :cond_1c
    move v0, v10

    goto :goto_b

    :cond_1d
    :goto_d
    const/4 v0, 0x1

    goto :goto_b

    .line 1919
    :goto_e
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 1922
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    const-wide/32 v40, 0x7fffffff

    if-eqz v0, :cond_20

    .line 1923
    iget-object v3, v6, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v39

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v34, v0

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    invoke-static/range {v33 .. v39}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    if-eqz v11, :cond_20

    .line 1924
    iget-wide v3, v1, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    const-wide/16 v17, 0x0

    cmp-long v0, v3, v17

    if-eqz v0, :cond_20

    .line 1925
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    int-to-long v3, v0

    move/from16 v20, v11

    iget-wide v10, v1, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    sub-long/2addr v3, v10

    .line 1926
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1f

    cmp-long v0, v3, v40

    if-gtz v0, :cond_1e

    goto :goto_f

    .line 1927
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_f
    long-to-int v0, v3

    .line 1929
    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    goto :goto_10

    :cond_20
    move/from16 v20, v11

    .line 1932
    :goto_10
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_21

    .line 1933
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    div-long v3, v3, v23

    .line 1934
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    and-long v10, v3, v27

    long-to-int v7, v10

    int-to-byte v7, v7

    aput-byte v7, v0, v22

    shr-long v10, v3, v30

    and-long v10, v10, v27

    long-to-int v7, v10

    int-to-byte v7, v7

    .line 1935
    aput-byte v7, v0, v21

    shr-long v10, v3, v26

    and-long v10, v10, v27

    long-to-int v7, v10

    int-to-byte v7, v7

    .line 1936
    aput-byte v7, v0, v29

    shr-long v3, v3, v25

    and-long v3, v3, v27

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 1937
    aput-byte v3, v0, p2

    .line 1938
    iget-object v3, v6, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v7

    const/4 v13, 0x0

    invoke-static {v3, v4, v0, v13, v7}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 1941
    :cond_21
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 1942
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1943
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_22

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save file part "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " chunk_size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isCdn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1947
    :cond_22
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1948
    iget-object v3, v6, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object v0, v2

    .line 1949
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    add-long/2addr v6, v8

    move-object v8, v5

    move-wide v5, v6

    const/4 v7, 0x1

    move-object v9, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 1954
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v0, :cond_2d

    .line 1955
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v4, v0

    div-long v10, v2, v4

    .line 1957
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_2d

    .line 1961
    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1962
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gtz v4, :cond_2c

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gtz v3, :cond_2c

    .line 1968
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v2, v0

    mul-long v3, v10, v2

    .line 1969
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    int-to-long v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v0, v5, v17

    if-eqz v0, :cond_2d

    .line 1970
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    move-object/from16 v42, v14

    int-to-long v13, v0

    cmp-long v0, v5, v13

    if-eqz v0, :cond_24

    iget-wide v13, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v13, v17

    if-lez v0, :cond_23

    sub-long v33, v13, v3

    cmp-long v0, v5, v33

    if-eqz v0, :cond_24

    :cond_23
    cmp-long v0, v13, v17

    if-gtz v0, :cond_2d

    if-eqz v20, :cond_2d

    .line 1971
    :cond_24
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1972
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_25

    .line 1973
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    .line 1974
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v14, "r"

    invoke-direct {v2, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    .line 1976
    :cond_25
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1977
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_27

    cmp-long v2, v5, v40

    if-gtz v2, :cond_26

    goto :goto_12

    .line 1978
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "!!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1980
    :cond_27
    :goto_12
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    long-to-int v14, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v13, v7, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1982
    iget-boolean v2, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v2, :cond_28

    .line 1983
    div-long v23, v3, v23

    .line 1984
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    and-long v13, v23, v27

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v22

    shr-long v13, v23, v30

    and-long v13, v13, v27

    long-to-int v13, v13

    int-to-byte v13, v13

    .line 1985
    aput-byte v13, v2, v21

    shr-long v13, v23, v26

    and-long v13, v13, v27

    long-to-int v13, v13

    int-to-byte v13, v13

    .line 1986
    aput-byte v13, v2, v29

    shr-long v13, v23, v25

    and-long v13, v13, v27

    long-to-int v13, v13

    int-to-byte v13, v13

    .line 1987
    aput-byte v13, v2, p2

    .line 1988
    iget-object v13, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    iget-object v14, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v36, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, v2

    move-wide/from16 v37, v5

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    invoke-static/range {v33 .. v39}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    .line 1991
    :cond_28
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    const/4 v13, 0x0

    invoke-static {v2, v13, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v2

    .line 1992
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->hash:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1993
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_29

    .line 1994
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_2a

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cdn hash "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_29
    :goto_13
    const/4 v13, 0x0

    goto :goto_14

    .line 1996
    :cond_2a
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v0, :cond_29

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cdn hash  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 2000
    :goto_14
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 2001
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v13

    .line 2004
    :cond_2b
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    const-wide/16 v3, 0x1

    add-long v5, v10, v3

    const/4 v7, 0x0

    move-wide v3, v10

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    goto :goto_15

    :cond_2c
    move-wide v6, v10

    move-object v3, v14

    move-object/from16 v5, v16

    add-int/lit8 v2, v2, 0x1

    move-object v14, v3

    move-object/from16 v16, v5

    move-wide v10, v6

    goto/16 :goto_11

    .line 2009
    :cond_2d
    :goto_15
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2e

    const-wide/16 v3, 0x0

    .line 2010
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2011
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2013
    :cond_2e
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-lez v0, :cond_2f

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 2014
    invoke-direct {v1}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 2015
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_2f
    move/from16 v0, v20

    :goto_16
    const/4 v2, 0x0

    .line 2019
    :goto_17
    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 2020
    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 2021
    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v4, :cond_31

    iget-wide v4, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_30

    goto :goto_18

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2022
    :cond_31
    :goto_18
    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2023
    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2024
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2025
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v13, 0x0

    iput-boolean v13, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2026
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_19

    .line 2027
    :cond_32
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2028
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    const/4 v13, 0x0

    iput-boolean v13, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2029
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseWeb(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_19

    .line 2030
    :cond_33
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 2031
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    const/4 v13, 0x0

    iput-boolean v13, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2032
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponseCdn(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_34
    :goto_19
    if-eqz v0, :cond_35

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 2040
    invoke-direct {v1, v2, v13, v12}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V

    goto :goto_1a

    .line 2041
    :cond_35
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_36

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_36

    move-object/from16 v7, p1

    .line 2042
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :cond_36
    :goto_1a
    const/4 v13, 0x0

    goto/16 :goto_20

    .line 1837
    :goto_1b
    invoke-direct {v1, v2, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    .line 2045
    :goto_1c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2046
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_37

    const/4 v13, 0x0

    .line 2047
    invoke-virtual {v1, v13, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1a

    :cond_37
    const/4 v13, 0x0

    .line 2048
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2049
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    const/4 v2, 0x1

    .line 2050
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1a

    .line 2052
    :cond_38
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1a

    :cond_39
    move-object v9, v5

    move-object v7, v8

    move-object v3, v14

    move-object/from16 v5, v16

    move-object v8, v2

    const/4 v2, 0x0

    .line 2056
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v10, "LIMIT_INVALID"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetforceSmallChunk(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 2057
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->whenCancelled:Ljava/lang/Runnable;

    if-eqz v0, :cond_3a

    .line 2058
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2060
    :cond_3a
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v8, v0

    add-long/2addr v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 2061
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v0, :cond_3b

    const/4 v2, 0x1

    .line 2062
    iput-boolean v2, v1, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    const v0, 0x8000

    .line 2063
    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v2, 0x4

    .line 2064
    iput v2, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 2066
    :cond_3b
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto :goto_1a

    .line 2067
    :cond_3c
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v10, "FILE_MIGRATE_"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 2068
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v4, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 2073
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1d

    :catch_1
    move-object v6, v2

    :goto_1d
    if-nez v6, :cond_3d

    const/4 v13, 0x0

    .line 2078
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_1a

    .line 2080
    :cond_3d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const-wide/16 v3, 0x0

    .line 2081
    iput-wide v3, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v3, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2082
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto/16 :goto_1a

    .line 2084
    :cond_3e
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "OFFSET_INVALID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2085
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-nez v0, :cond_3f

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 2087
    :try_start_2
    invoke-direct {v1, v2, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_20

    :catch_2
    move-exception v0

    .line 2089
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2090
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_20

    :cond_3f
    const/4 v13, 0x0

    .line 2093
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_20

    :cond_40
    const/4 v13, 0x0

    .line 2095
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "RETRY_LIMIT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x2

    .line 2096
    invoke-virtual {v1, v13, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_1a

    .line 2098
    :cond_41
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_42

    .line 2099
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_44

    .line 2100
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v2, :cond_43

    .line 2101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " peer_did = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " peer_access_hash="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " photo_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " big="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_42
    :goto_1e
    const/4 v13, 0x0

    goto :goto_1f

    .line 2103
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1e

    .line 2105
    :cond_44
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v2, :cond_42

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1e

    .line 2109
    :goto_1f
    invoke-virtual {v1, v13, v13}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_20
    return v13
.end method

.method protected removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 780
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0

    .line 2627
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-void
.end method

.method public setEncryptFile(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    :cond_0
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public setIsPreloadVideoOperation(Z)V
    .locals 4

    .line 1310
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsPreloadVideoOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 1314
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_3

    .line 1315
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1316
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 p1, 0x0

    .line 1317
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1318
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1319
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    return-void

    .line 1320
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1321
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1328
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    return-void

    .line 1331
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setPaths(ILjava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 505
    iput-object p5, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 506
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 507
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    .line 508
    iput-object p6, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    .line 509
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 496
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return-void
.end method

.method public setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    .line 57
    iput-wide p3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    .line 58
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    .line 59
    sget-object p2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()Z
    .locals 4

    .line 827
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z

    move-result v0

    return v0
.end method

.method public start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z
    .locals 30

    move-object/from16 v1, p0

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    .line 832
    invoke-direct {v1}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 833
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_7

    .line 834
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-eqz v0, :cond_1

    .line 835
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 836
    const-string v0, "debug_loading: restart with small chunk"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const v0, 0x8000

    .line 838
    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v0, 0x4

    .line 839
    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    .line 840
    :cond_1
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    if-eqz v0, :cond_2

    .line 841
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 842
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    .line 843
    :cond_2
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    if-eqz v0, :cond_3

    .line 844
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 845
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    .line 847
    :cond_3
    iget-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v7

    :goto_0
    if-eqz v0, :cond_5

    .line 848
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    goto :goto_1

    :cond_5
    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    :goto_1
    iput v2, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-eqz v0, :cond_6

    .line 849
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    goto :goto_2

    :cond_6
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    :goto_2
    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 852
    :cond_7
    :goto_3
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v0, :cond_8

    move v6, v8

    goto :goto_4

    :cond_8
    move v6, v7

    .line 853
    :goto_4
    iget-boolean v9, v1, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    .line 854
    iput-boolean v7, v1, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-eqz p1, :cond_9

    .line 856
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;

    move-object/from16 v5, p1

    move-wide/from16 v3, p2

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FileLoadOperation;ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    .line 904
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    return v9

    .line 911
    :cond_b
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v0, :cond_d

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-nez v0, :cond_d

    .line 912
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_c

    .line 913
    const-string/jumbo v0, "loadOperation: no location, failing"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 915
    :cond_c
    invoke-virtual {v1, v8, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v7

    .line 919
    :cond_d
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v0

    div-long v2, p2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 921
    iget-boolean v2, v1, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_e

    iget-wide v5, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_e

    int-to-long v9, v0

    cmp-long v0, v5, v9

    if-lez v0, :cond_e

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    .line 931
    :cond_e
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    const-string v2, "_64.iv"

    const-string v5, ".temp"

    const-string v6, "_64.iv.enc"

    const-string v9, ".enc"

    const-string v10, ".temp.enc"

    const-string v11, "."

    if-eqz v0, :cond_12

    .line 932
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v0, v0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    iget-boolean v13, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v13, :cond_10

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 936
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v9, :cond_f

    .line 937
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    .line 940
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 942
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v9, :cond_11

    .line 943
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v5

    move-object v5, v6

    goto :goto_7

    :cond_11
    move-object v2, v5

    move-object v5, v6

    goto :goto_6

    :goto_7
    move-object/from16 p1, v2

    move-object v2, v0

    move-object/from16 v0, p1

    move-wide/from16 p1, v3

    :goto_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_f

    .line 947
    :cond_12
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    cmp-long v15, v13, v3

    move-wide/from16 p1, v3

    const-string v3, "_64.preload"

    const-string v4, "_64.pt"

    const-string v12, "_"

    if-eqz v15, :cond_19

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v15, :cond_19

    .line 948
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/high16 v15, -0x80000000

    if-eq v0, v15, :cond_18

    const-wide/32 v15, -0x80000000

    cmp-long v13, v13, v15

    if-eqz v13, :cond_18

    if-nez v0, :cond_13

    goto/16 :goto_c

    .line 953
    :cond_13
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_15

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 956
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_14

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_8

    :cond_14
    move-object v0, v2

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 960
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 962
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_16

    .line 963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    .line 965
    :goto_a
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v6, :cond_17

    .line 966
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    .line 968
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    .line 949
    :cond_18
    :goto_c
    invoke-virtual {v1, v8, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v7

    .line 971
    :cond_19
    iget v11, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    if-eqz v11, :cond_1a

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long v0, v13, p1

    if-nez v0, :cond_1b

    :cond_1a
    move v3, v8

    goto/16 :goto_2d

    .line 975
    :cond_1b
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_1c

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 978
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_14

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 982
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 984
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_1d

    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1d
    const/4 v2, 0x0

    .line 987
    :goto_d
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    .line 988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_1e
    const/4 v4, 0x0

    .line 990
    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 995
    :goto_f
    new-instance v6, Ljava/util/ArrayList;

    iget v9, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 996
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cancelledRequestInfos:Ljava/util/ArrayList;

    .line 997
    new-instance v6, Ljava/util/ArrayList;

    iget v9, v1, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 998
    iput v8, v1, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1000
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v9, :cond_1f

    .line 1001
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 1002
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remote"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".attheme"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_10

    .line 1004
    :cond_1f
    iget-boolean v6, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-nez v6, :cond_20

    .line 1005
    new-instance v6, Ljava/io/File;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_10

    .line 1007
    :cond_20
    new-instance v6, Ljava/io/File;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 1010
    :goto_10
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinalReady:Z

    if-eqz v6, :cond_24

    .line 1011
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez v9, :cond_21

    iget-wide v9, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v11, v9, p1

    if-eqz v11, :cond_24

    iget-boolean v11, v1, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-nez v11, :cond_24

    iget-object v11, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_24

    :cond_21
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->isLocallyCreatedFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 1012
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_22

    .line 1013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "debug_loading: delete existing file cause file size mismatch "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " totalSize="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " existingFileSize="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1015
    :cond_22
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->hasAnotherRefOnFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1016
    iget-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_23
    move v6, v7

    :cond_24
    if-nez v6, :cond_4c

    .line 1023
    new-instance v6, Ljava/io/File;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v6, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 1024
    iget-boolean v6, v1, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-eqz v6, :cond_25

    .line 1025
    new-instance v6, Ljava/io/File;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".gz"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    .line 1029
    :cond_25
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    const-string/jumbo v6, "rws"

    if-eqz v0, :cond_29

    .line 1030
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".key"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1032
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const/16 v0, 0x20

    .line 1034
    new-array v12, v0, [B

    iput-object v12, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v13, 0x10

    .line 1035
    new-array v14, v13, [B

    iput-object v14, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    cmp-long v14, v10, p1

    if-lez v14, :cond_26

    const-wide/16 v14, 0x30

    .line 1036
    rem-long/2addr v10, v14

    cmp-long v10, v10, p1

    if-nez v10, :cond_26

    .line 1037
    invoke-virtual {v5, v12, v7, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1038
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0, v7, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move v10, v7

    goto :goto_11

    :catch_0
    move-exception v0

    move v10, v7

    goto :goto_13

    .line 1040
    :cond_26
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1041
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v10, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1042
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1043
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v8

    .line 1047
    :goto_11
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_1
    move-exception v0

    .line 1049
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1051
    :goto_12
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    .line 1053
    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1054
    invoke-static {v8}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    .line 1055
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 1056
    :cond_27
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1057
    iget-object v5, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1058
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 1060
    :cond_28
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_29
    move v10, v7

    .line 1065
    :goto_14
    new-array v5, v8, [Z

    aput-boolean v7, v5, v7

    .line 1066
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    const-wide/16 v13, 0x8

    if-eqz v0, :cond_35

    if-eqz v3, :cond_35

    .line 1067
    new-instance v0, Ljava/io/File;

    iget-object v15, v1, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1070
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-direct {v0, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    .line 1071
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    .line 1073
    iput v8, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    const-wide/16 v17, 0x1

    cmp-long v0, v15, v17

    if-lez v0, :cond_2b

    .line 1075
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v8

    goto :goto_15

    :cond_2a
    move v0, v7

    :goto_15
    aput-boolean v0, v5, v7

    :goto_16
    cmp-long v0, v17, v15

    if-gez v0, :cond_2b

    sub-long v19, v15, v17

    cmp-long v0, v19, v13

    if-gez v0, :cond_2c

    :cond_2b
    move v3, v8

    move-wide/from16 v17, v13

    const-wide/16 v21, 0x2

    goto/16 :goto_1a

    .line 1081
    :cond_2c
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-long v21, v17, v13

    sub-long v21, v15, v21

    cmp-long v0, v21, v13

    if-ltz v0, :cond_2b

    cmp-long v0, v19, p1

    if-ltz v0, :cond_2b

    const-wide/16 v21, 0x2

    .line 1083
    :try_start_4
    iget-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v19, v11

    if-lez v0, :cond_2e

    :cond_2d
    :goto_17
    move v3, v8

    move-wide/from16 v17, v13

    goto/16 :goto_1a

    .line 1086
    :cond_2e
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v26

    const-wide/16 v11, 0x10

    add-long v24, v17, v11

    sub-long v11, v15, v24

    cmp-long v0, v11, v26

    if-ltz v0, :cond_2d

    .line 1088
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v11, v0

    cmp-long v0, v26, v11

    if-lez v0, :cond_2f

    goto :goto_17

    .line 1091
    :cond_2f
    new-instance v23, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    const/16 v28, 0x0

    invoke-direct/range {v23 .. v28}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    move-object/from16 v0, v23

    add-long v11, v24, v26

    .line 1093
    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v17, v15, v11

    const-wide/16 v23, 0x18

    cmp-long v3, v17, v23

    if-gez v3, :cond_30

    goto :goto_17

    .line 1097
    :cond_30
    iget-object v3, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-wide/from16 v17, v13

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    cmp-long v3, v13, p1

    if-eqz v3, :cond_32

    move v3, v8

    .line 1099
    :try_start_6
    iget-wide v8, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    move-wide/from16 v28, v8

    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    div-long v7, v7, v21

    cmp-long v7, v28, v7

    if-lez v7, :cond_31

    const/4 v7, 0x2

    goto :goto_18

    :cond_31
    move v7, v3

    :goto_18
    iput v7, v1, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    .line 1100
    iput-wide v13, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    goto :goto_19

    :catch_3
    move-exception v0

    goto/16 :goto_1b

    :cond_32
    move v3, v8

    .line 1102
    :goto_19
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1103
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    add-long v7, v11, v23

    .line 1106
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v9, :cond_33

    .line 1107
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 1109
    :cond_33
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v9, :cond_34

    .line 1110
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 1112
    :cond_34
    iget-object v9, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long v11, v0

    add-long v11, v11, v26

    long-to-int v0, v11

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 1116
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v11, v0

    const-wide/16 v13, 0x24

    add-long v26, v26, v13

    add-long v11, v11, v26

    long-to-int v0, v11

    iput v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    move-wide/from16 v13, v17

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    move v8, v3

    goto/16 :goto_16

    :catch_4
    move-exception v0

    move v3, v8

    goto :goto_1b

    :catch_5
    move-exception v0

    move v3, v8

    move-wide/from16 v17, v13

    goto :goto_1b

    :catch_6
    move-exception v0

    move v3, v8

    move-wide/from16 v17, v13

    const-wide/16 v21, 0x2

    goto :goto_1b

    .line 1119
    :goto_1a
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget v7, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1c

    .line 1121
    :goto_1b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1123
    :goto_1c
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_36

    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v0, :cond_36

    const/4 v7, 0x0

    .line 1124
    iput-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1126
    :try_start_7
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_36

    .line 1128
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1d

    :catch_7
    move-exception v0

    .line 1130
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1132
    :goto_1d
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v7, 0x0

    .line 1133
    iput-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1e

    :catch_8
    move-exception v0

    .line 1136
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_35
    move v3, v8

    move-wide/from16 v17, v13

    const-wide/16 v21, 0x2

    :cond_36
    :goto_1e
    if-eqz v4, :cond_38

    .line 1142
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1143
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1144
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1147
    :cond_37
    :try_start_a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {v0, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 1148
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    .line 1149
    rem-long v11, v7, v17

    const-wide/16 v13, 0x4

    cmp-long v0, v11, v13

    if-nez v0, :cond_38

    sub-long/2addr v7, v13

    .line 1151
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v11, v0

    .line 1152
    div-long v7, v7, v21

    cmp-long v4, v11, v7

    if-gtz v4, :cond_38

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v0, :cond_38

    .line 1154
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v12

    .line 1155
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 1156
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :catch_9
    move-exception v0

    .line 1162
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1166
    :cond_38
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz v0, :cond_39

    .line 1167
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v4, v7}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 1168
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v4, v7}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 1172
    :cond_39
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v10, :cond_3a

    .line 1174
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_21

    .line 1176
    :cond_3a
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    if-eqz v2, :cond_3b

    .line 1177
    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v11, v0

    rem-long/2addr v7, v11

    cmp-long v0, v7, p1

    if-eqz v0, :cond_3b

    move-wide/from16 v7, p1

    .line 1178
    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_20

    .line 1180
    :cond_3b
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v11, v0

    invoke-static {v7, v8, v11, v12}, Lorg/telegram/messenger/FileLoadOperation;->floorDiv(JJ)J

    move-result-wide v7

    iget v0, v1, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v11, v0

    mul-long/2addr v7, v11

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1182
    :goto_20
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1183
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v14, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v12, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v14, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1187
    :cond_3c
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1188
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v14, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v14, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-direct/range {v11 .. v16}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation-IA;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_3d
    :goto_21
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    .line 1192
    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    .line 1193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v0, :cond_3e

    .line 1196
    iget-object v7, v1, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1197
    iget-wide v8, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v11

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    sub-long/2addr v8, v11

    iput-wide v8, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1199
    :cond_3e
    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1202
    :cond_3f
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_41

    .line 1203
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_40

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start preloading file to temp = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_23

    .line 1206
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start loading file to temp = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " final = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " priority"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_41
    :goto_23
    if-eqz v2, :cond_46

    .line 1211
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1213
    :try_start_b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-direct {v0, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 1214
    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-eqz v0, :cond_46

    if-nez v10, :cond_46

    .line 1215
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-lez v0, :cond_43

    const-wide/16 v9, 0x40

    .line 1216
    rem-long/2addr v7, v9

    cmp-long v0, v7, v11

    if-nez v0, :cond_42

    .line 1217
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v4, 0x40

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_25

    :catch_a
    move-exception v0

    const-wide/16 v11, 0x0

    goto :goto_24

    :cond_42
    const-wide/16 v11, 0x0

    .line 1219
    :cond_43
    iput-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_25

    .line 1223
    :goto_24
    iput-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v11, v1, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1224
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1225
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    .line 1226
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 1227
    :cond_44
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1228
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1229
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 1231
    :cond_45
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1235
    :cond_46
    :goto_25
    iget-boolean v0, v1, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_47

    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-eqz v0, :cond_47

    iget-wide v7, v1, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v7, v11

    if-lez v0, :cond_47

    .line 1236
    invoke-direct {v1}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 1238
    :cond_47
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->updateProgress()V

    .line 1240
    :try_start_c
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {v0, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 1241
    iget-wide v6, v1, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v11, 0x0

    cmp-long v2, v6, v11

    if-eqz v2, :cond_48

    .line 1242
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_26

    :catch_b
    move-exception v0

    goto :goto_27

    :cond_48
    :goto_26
    const/4 v7, 0x0

    goto :goto_28

    .line 1245
    :goto_27
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1246
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1247
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v2, -0x1

    .line 1248
    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v7, 0x0

    return v7

    :cond_49
    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 1250
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1251
    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1252
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1253
    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v7

    .line 1257
    :cond_4a
    :goto_28
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_4b

    .line 1258
    invoke-virtual {v1, v3, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v7

    .line 1261
    :cond_4b
    iput-boolean v3, v1, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1262
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, v5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2c

    :cond_4c
    move v3, v8

    .line 1276
    iput-boolean v3, v1, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1278
    :try_start_d
    invoke-direct {v1, v7, v3, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V

    .line 1279
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz v0, :cond_4d

    .line 1280
    iget-object v2, v1, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v4, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v2, v0, v4}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_29

    :catch_c
    move-exception v0

    goto :goto_2a

    :cond_4d
    :goto_29
    const/4 v3, 0x1

    goto :goto_2c

    .line 1283
    :goto_2a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1284
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x1

    .line 1285
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v2, -0x1

    .line 1286
    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2b

    :cond_4e
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1287
    :goto_2b
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1288
    iget-object v0, v1, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1289
    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v7, 0x0

    return v7

    :cond_4f
    const/4 v7, 0x0

    .line 1292
    invoke-virtual {v1, v3, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_2c
    return v3

    .line 972
    :goto_2d
    invoke-virtual {v1, v3, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v7
.end method

.method protected startDownloadRequest(I)V
    .locals 30

    move-object/from16 v0, p0

    .line 2239
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_1

    .line 2240
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong thread!!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2247
    :cond_1
    :goto_0
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x5

    const/4 v7, 0x1

    if-ne v1, v2, :cond_2

    .line 2248
    iput v7, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 2250
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-nez v1, :cond_2c

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez v1, :cond_2c

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v1, v7, :cond_2c

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    if-nez v1, :cond_2c

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const-wide/16 v8, 0x0

    if-nez v1, :cond_3

    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 2251
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-ge v1, v2, :cond_2c

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_4

    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const-wide/32 v3, 0x200000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2c

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 2252
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    goto/16 :goto_17

    .line 2259
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_5

    .line 2260
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    move v11, v1

    goto :goto_2

    .line 2262
    :cond_5
    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v1, :cond_7

    :cond_6
    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_7

    .line 2263
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_7
    move v11, v7

    .line 2267
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedReference:Z

    const/4 v12, 0x2

    if-nez v1, :cond_8

    .line 2268
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v3, v4, v10

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/FileRefController;->applyCachedFileReference(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before download updated file ref from file ref cache!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    move v13, v10

    :goto_3
    if-ge v13, v11, :cond_2c

    .line 2275
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v1, :cond_11

    .line 2276
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v1, :cond_9

    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    cmp-long v1, v1, v8

    if-gtz v1, :cond_9

    .line 2277
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    return-void

    .line 2282
    :cond_9
    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_e

    const/high16 v1, 0x200000

    .line 2285
    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v1, v2

    add-int/2addr v1, v12

    move-wide v2, v8

    :goto_4
    if-eqz v1, :cond_b

    .line 2287
    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-wide v1, v2

    move v3, v7

    goto :goto_5

    .line 2291
    :cond_a
    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 2292
    iget-wide v5, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v14, v2, v5

    if-lez v14, :cond_c

    :cond_b
    move-wide v1, v2

    move v3, v10

    goto :goto_5

    .line 2295
    :cond_c
    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-ne v14, v12, :cond_d

    mul-int/lit8 v14, v4, 0x8

    int-to-long v14, v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_d

    const-wide/32 v2, 0x100000

    sub-long/2addr v5, v2

    int-to-long v2, v4

    .line 2296
    div-long/2addr v5, v2

    int-to-long v2, v4

    mul-long/2addr v5, v2

    move-wide v2, v5

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :goto_5
    if-nez v3, :cond_e

    .line 2300
    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2301
    invoke-direct {v0, v10, v10, v10}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V

    .line 2306
    :cond_e
    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v3, :cond_f

    .line 2307
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 2309
    :cond_f
    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_10

    .line 2311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start next preload from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2313
    :cond_10
    iget-wide v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    move-wide v2, v1

    move-wide/from16 v19, v8

    move/from16 v18, v12

    goto/16 :goto_b

    .line 2315
    :cond_11
    iget-object v1, v0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 2316
    iget-wide v2, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    iget-wide v2, v0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 2317
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v10

    const-wide v4, 0x7fffffffffffffffL

    const-wide v14, 0x7fffffffffffffffL

    const-wide v16, 0x7fffffffffffffffL

    :goto_7
    move/from16 v18, v12

    if-ge v6, v1, :cond_15

    .line 2321
    iget-object v12, v0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/FileLoadOperation$Range;

    cmp-long v19, v2, v8

    if-eqz v19, :cond_14

    .line 2323
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v19

    cmp-long v19, v19, v2

    if-gtz v19, :cond_13

    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetend(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v19

    cmp-long v19, v19, v2

    if-lez v19, :cond_13

    move-wide/from16 v4, v16

    :goto_8
    move-wide/from16 v19, v8

    goto :goto_9

    .line 2328
    :cond_13
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v19

    cmp-long v19, v2, v19

    if-gez v19, :cond_14

    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v19

    cmp-long v19, v19, v14

    if-gez v19, :cond_14

    .line 2329
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v14

    :cond_14
    move-wide/from16 v19, v8

    .line 2332
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$Range;->-$$Nest$fgetstart(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v18

    move-wide/from16 v8, v19

    goto :goto_7

    :cond_15
    move-wide v2, v14

    goto :goto_8

    :goto_9
    cmp-long v1, v2, v16

    if-eqz v1, :cond_16

    move-wide v1, v2

    goto :goto_a

    :cond_16
    cmp-long v1, v4, v16

    if-eqz v1, :cond_17

    move-wide v1, v4

    :goto_a
    move-wide v2, v1

    goto :goto_b

    .line 2339
    :cond_17
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    goto/16 :goto_17

    :cond_18
    move-wide/from16 v19, v8

    move/from16 v18, v12

    .line 2345
    iget-wide v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_a

    .line 2348
    :goto_b
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v1, :cond_19

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_19

    invoke-direct {v0}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2349
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    goto/16 :goto_17

    .line 2354
    :cond_19
    iget-wide v4, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v4, v19

    if-lez v1, :cond_1a

    cmp-long v1, v2, v19

    if-lez v1, :cond_1a

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1a

    .line 2355
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    goto/16 :goto_17

    .line 2360
    :cond_1a
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 2361
    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 2362
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 2368
    :cond_1b
    iget-wide v4, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v4, v19

    if-lez v1, :cond_1d

    add-int/lit8 v1, v11, -0x1

    if-eq v13, v1, :cond_1d

    cmp-long v1, v4, v19

    if-lez v1, :cond_1c

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v8, v1

    add-long/2addr v8, v2

    cmp-long v1, v8, v4

    if-ltz v1, :cond_1c

    goto :goto_c

    :cond_1c
    move/from16 v29, v10

    goto :goto_d

    :cond_1d
    :goto_c
    move/from16 v29, v7

    :goto_d
    const/4 v1, -0x1

    move/from16 v6, p1

    if-ne v6, v1, :cond_1f

    .line 2372
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1e

    move/from16 v1, v18

    goto :goto_e

    :cond_1e
    const v1, 0x10002

    :goto_e
    move v4, v1

    goto :goto_f

    :cond_1f
    move v4, v6

    .line 2378
    :goto_f
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v1, :cond_20

    const/16 v1, 0x20

    goto :goto_10

    :cond_20
    move v1, v10

    .line 2379
    :goto_10
    iget-boolean v5, v0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v5, :cond_21

    .line 2380
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;-><init>()V

    .line 2381
    iget-object v8, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->file_token:[B

    .line 2382
    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->offset:J

    .line 2383
    iget v8, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I

    or-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2387
    :cond_21
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v5, :cond_22

    .line 2388
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 2389
    iget-object v8, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    long-to-int v8, v2

    .line 2390
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 2391
    iget v8, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    goto :goto_11

    .line 2394
    :cond_22
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 2395
    iget-object v8, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2396
    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:J

    .line 2397
    iget v8, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 2398
    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->cdn_supported:Z

    .line 2402
    :goto_11
    iget-wide v8, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget v12, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v14, v12

    add-long/2addr v8, v14

    iput-wide v8, v0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2403
    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>()V

    .line 2404
    iget-object v9, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    invoke-static {v8, v2, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;J)V

    .line 2406
    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    .line 2407
    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v8, v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputforceSmallChunk(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2408
    iput v4, v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    .line 2410
    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v2, :cond_25

    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    if-eqz v2, :cond_25

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_25

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz v2, :cond_25

    .line 2411
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    if-eqz v2, :cond_25

    .line 2413
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    invoke-static {v8, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)V

    .line 2415
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_24

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->-$$Nest$fgetlength(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v14

    const-wide/32 v16, 0x7fffffff

    cmp-long v3, v14, v16

    if-gtz v3, :cond_23

    goto :goto_12

    .line 2416
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cast long to integer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2418
    :cond_24
    :goto_12
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->-$$Nest$fgetlength(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v14

    long-to-int v9, v14

    invoke-direct {v3, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2419
    iget-object v9, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->-$$Nest$fgetfileOffset(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2420
    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v9, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 2421
    iget-object v2, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2422
    invoke-static {v8}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 2423
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v8}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v14, v19

    goto/16 :goto_16

    .line 2434
    :catch_0
    :cond_25
    iget-wide v2, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v2, v2, v19

    if-eqz v2, :cond_27

    .line 2435
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_26

    .line 2436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame get offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_26
    move-wide/from16 v14, v19

    .line 2438
    iput-wide v14, v0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    .line 2439
    iput-object v8, v0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    goto :goto_13

    :cond_27
    move-wide/from16 v14, v19

    .line 2441
    :goto_13
    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v3, :cond_28

    .line 2442
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    .line 2443
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_28

    .line 2444
    invoke-direct {v0, v8}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    goto/16 :goto_16

    .line 2448
    :cond_28
    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v8, v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fputforceSmallChunk(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2449
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_29

    .line 2450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestStartTime:J

    :cond_29
    or-int/lit16 v9, v1, 0x800

    .line 2453
    iget-boolean v1, v0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v1, :cond_2a

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    :goto_14
    move v3, v1

    goto :goto_15

    :cond_2a
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    goto :goto_14

    .line 2454
    :goto_15
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    new-instance v23, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;)V

    move-object v0, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v22, v5

    move/from16 v26, v9

    invoke-virtual/range {v21 .. v29}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestSync(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v1

    iput v1, v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    .line 2618
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_2b

    .line 2619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "debug_loading: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " dc="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " send reqId "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->-$$Nest$fgetoffset(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " conType="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " priority="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2621
    :cond_2b
    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2622
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/2addr v1, v7

    iput v1, v0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    :goto_16
    add-int/lit8 v13, v13, 0x1

    move-wide v8, v14

    move/from16 v12, v18

    goto/16 :goto_3

    :cond_2c
    :goto_17
    return-void
.end method

.method public updateProgress()V
    .locals 8

    .line 1300
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move-object v1, p0

    .line 1301
    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_0
    return-void
.end method

.method public wasStarted()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
