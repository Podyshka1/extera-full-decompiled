.class Landroidx/camera/video/Recorder$SetupVideoTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupVideoTask"
.end annotation


# instance fields
.field private mIsFailedRetryCanceled:Z

.field private final mMaxRetryCount:I

.field private mRetryCount:I

.field private mRetryFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field private final mTimebase:Landroidx/camera/core/impl/Timebase;

.field final synthetic this$0:Landroidx/camera/video/Recorder;


# direct methods
.method public static synthetic $r8$lambda$w-czg8Yls85xyXF3E2b7y2H0JVo(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1341
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object v0, v0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    .line 1342
    invoke-virtual {v0, p1}, Landroidx/camera/video/VideoEncoderSession;->isConfiguredSurfaceRequest(Landroidx/camera/core/SurfaceRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    .line 1343
    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    new-instance v0, Landroidx/camera/video/VideoEncoderSession;

    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    .line 1353
    invoke-static {v1}, Landroidx/camera/video/Recorder;->access$200(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/encoder/EncoderFactory;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object v3, v2, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 1354
    invoke-static {v2}, Landroidx/camera/video/Recorder;->access$300(Landroidx/camera/video/Recorder;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroidx/camera/video/VideoEncoderSession;-><init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 1355
    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object v2, v1, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {v1, v2}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/MediaSpec;

    .line 1356
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v6

    .line 1357
    iget-object v2, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    .line 1358
    invoke-static {v2}, Landroidx/camera/video/Recorder;->access$400(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v2

    .line 1357
    invoke-static {v1, v6, v2}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveVideoMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo;

    move-result-object v2

    .line 1366
    invoke-virtual {v1}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    move-result-object v4

    .line 1367
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v5

    .line 1369
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getExpectedFrameRate()Landroid/util/Range;

    move-result-object v7

    move-object v3, p2

    .line 1363
    invoke-static/range {v2 .. v7}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveVideoEncoderConfig(Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object p2

    .line 1370
    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    invoke-static {v1}, Landroidx/camera/video/Recorder;->access$000(Landroidx/camera/video/Recorder;)Z

    move-result v1

    invoke-static {p2, v1}, Landroidx/camera/video/internal/config/VideoConfigUtil;->workaroundDataSpaceIfRequired(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Z)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object p2

    .line 1371
    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    invoke-static {v1, p2}, Landroidx/camera/video/Recorder;->access$502(Landroidx/camera/video/Recorder;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 1373
    invoke-virtual {v0, p1, p2}, Landroidx/camera/video/VideoEncoderSession;->configure(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1375
    iget-object p2, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iput-object v0, p2, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    .line 1376
    new-instance p2, Landroidx/camera/video/Recorder$SetupVideoTask$1;

    invoke-direct {p2, p0, v0}, Landroidx/camera/video/Recorder$SetupVideoTask$1;-><init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/video/VideoEncoderSession;)V

    iget-object p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    .line 1347
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore the SurfaceRequest "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isServiced: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " VideoEncoderSession: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has been configured with a persistent in-progress recording."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1347
    const-string p1, "Recorder"

    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;ZI)V
    .locals 1

    .line 1313
    iput-object p1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mIsFailedRetryCanceled:Z

    .line 1309
    iput v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryCount:I

    const/4 v0, 0x0

    .line 1310
    iput-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1314
    iput-object p2, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 1315
    iput-object p3, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mTimebase:Landroidx/camera/core/impl/Timebase;

    .line 1316
    invoke-static {p1, p4}, Landroidx/camera/video/Recorder;->access$002(Landroidx/camera/video/Recorder;Z)Z

    .line 1317
    iput p5, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mMaxRetryCount:I

    return-void
.end method

.method static synthetic access$1000(Landroidx/camera/video/Recorder$SetupVideoTask;)Z
    .locals 0

    .line 1303
    iget-boolean p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mIsFailedRetryCanceled:Z

    return p0
.end method

.method static synthetic access$1100(Landroidx/camera/video/Recorder$SetupVideoTask;)Landroidx/camera/core/SurfaceRequest;
    .locals 0

    .line 1303
    iget-object p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/camera/video/Recorder$SetupVideoTask;)Landroidx/camera/core/impl/Timebase;
    .locals 0

    .line 1303
    iget-object p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mTimebase:Landroidx/camera/core/impl/Timebase;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 1303
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder$SetupVideoTask;->setupVideo(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/camera/video/Recorder$SetupVideoTask;)I
    .locals 0

    .line 1303
    iget p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryCount:I

    return p0
.end method

.method static synthetic access$608(Landroidx/camera/video/Recorder$SetupVideoTask;)I
    .locals 2

    .line 1303
    iget v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryCount:I

    return v0
.end method

.method static synthetic access$700(Landroidx/camera/video/Recorder$SetupVideoTask;)I
    .locals 0

    .line 1303
    iget p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mMaxRetryCount:I

    return p0
.end method

.method static synthetic access$802(Landroidx/camera/video/Recorder$SetupVideoTask;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1303
    iput-object p1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private setupVideo(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 2

    .line 1340
    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    invoke-static {v0}, Landroidx/camera/video/Recorder;->access$100(Landroidx/camera/video/Recorder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/video/Recorder$SetupVideoTask$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    iget-object p1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->this$0:Landroidx/camera/video/Recorder;

    iget-object p1, p1, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method cancelFailedRetry()V
    .locals 2

    .line 1327
    iget-boolean v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mIsFailedRetryCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1330
    iput-boolean v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mIsFailedRetryCanceled:Z

    .line 1331
    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1332
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1333
    iput-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mRetryFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method start()V
    .locals 2

    .line 1322
    iget-object v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->mTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-direct {p0, v0, v1}, Landroidx/camera/video/Recorder$SetupVideoTask;->setupVideo(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method
