.class final Landroidx/camera/video/VideoEncoderSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;
    }
.end annotation


# instance fields
.field private mActiveSurface:Landroid/view/Surface;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mReadyToReleaseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field private mReadyToReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field private mReleasedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field private mReleasedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final mSequentialExecutor:Ljava/util/concurrent/Executor;

.field private mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field private mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

.field private final mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field private mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;


# direct methods
.method public static synthetic $r8$lambda$3VS9N96niRhWMq3xwyNPJVrofi8(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface can be closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$Result;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoEncoderSession"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 286
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mActiveSurface:Landroid/view/Surface;

    .line 287
    iget-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 288
    invoke-direct {p0}, Landroidx/camera/video/VideoEncoderSession;->closeInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$9aRIKLhGw4HdbXHWbcb-CRBROM0(Landroidx/camera/video/VideoEncoderSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 106
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReleasedFuture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZLC1K-C9Zm2TrPhY8fvnpDchR4(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 1

    .line 214
    iget-object p0, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$PD_k74jzItzsG1xTdgZ6Wanfs0k(Landroidx/camera/video/VideoEncoderSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 111
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReadyToReleaseFuture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UMKB9ijC89XfXZJjfTuNJgEk90w(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/VideoEncoderSession;->configureVideoEncoderInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ConfigureVideoEncoderFuture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 79
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mActiveSurface:Landroid/view/Surface;

    .line 80
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 81
    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->NOT_INITIALIZED:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot close the encoder before configuring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 84
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 87
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 91
    iput-object p3, p0, Landroidx/camera/video/VideoEncoderSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Landroidx/camera/video/VideoEncoderSession;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    return-void
.end method

.method private closeInternal()V
    .locals 3

    .line 241
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "VideoEncoderSession"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 255
    const-string v0, "closeInternal in RELEASED state, No-op"

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeInternal in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->PENDING_RELEASE:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/video/VideoEncoderSession;->terminateNow()V

    return-void
.end method

.method private configureVideoEncoderInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4

    .line 267
    const-string v0, "VideoEncoderSession"

    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v2, p0, Landroidx/camera/video/VideoEncoderSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 268
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getSessionType()I

    move-result v3

    .line 267
    invoke-interface {v1, v2, p2, v3}, Landroidx/camera/video/internal/encoder/EncoderFactory;->createEncoder(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;I)Landroidx/camera/video/internal/encoder/Encoder;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/Encoder;->getInput()Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    move-result-object p2

    .line 276
    instance-of p2, p2, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;

    if-nez p2, :cond_0

    .line 277
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The EncoderInput of video isn\'t a SurfaceInput."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 281
    :cond_0
    iget-object p2, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/Encoder;->getInput()Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    move-result-object p2

    check-cast p2, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;

    invoke-interface {p2}, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;->getSurface()Landroid/view/Surface;

    move-result-object p2

    .line 282
    iput-object p2, p0, Landroidx/camera/video/VideoEncoderSession;->mActiveSurface:Landroid/view/Surface;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provide surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 290
    sget-object p1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->READY:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    .line 291
    iget-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    .line 270
    const-string p2, "Unable to initialize video encoder."

    invoke-static {v0, p2, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method configure(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configure() shouldn\'t be called in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->INITIALIZING:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    .line 103
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create VideoEncoderSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEncoderSession"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 109
    new-instance v0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 114
    new-instance v0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 120
    new-instance p2, Landroidx/camera/video/VideoEncoderSession$1;

    invoke-direct {p2, p0}, Landroidx/camera/video/VideoEncoderSession$1;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 133
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method getActiveSurface()Landroid/view/Surface;
    .locals 2

    .line 228
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    sget-object v1, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->READY:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mActiveSurface:Landroid/view/Surface;

    return-object v0
.end method

.method getReadyToReleaseFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method getVideoEncoder()Landroidx/camera/video/internal/encoder/Encoder;
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    return-object v0
.end method

.method isConfiguredSurfaceRequest(Landroidx/camera/core/SurfaceRequest;)Z
    .locals 4

    .line 150
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method signalTermination()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 188
    invoke-direct {p0}, Landroidx/camera/video/VideoEncoderSession;->closeInternal()V

    .line 189
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method terminateNow()V
    .locals 4

    .line 194
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const-string v2, "VideoEncoderSession"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminateNow in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", No-op"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->RELEASED:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    .line 208
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mReadyToReleaseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 210
    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v1, :cond_2

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEncoder is releasing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/Encoder;->release()V

    .line 213
    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/Encoder;->getReleasedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    iget-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 215
    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    return-void

    .line 217
    :cond_2
    const-string v1, "There\'s no VideoEncoder to release! Finish release completer."

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mReleasedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    .line 197
    :cond_3
    sget-object v0, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->RELEASED:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v0, p0, Landroidx/camera/video/VideoEncoderSession;->mVideoEncoderState:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoEncoderSession@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    const-string v2, "SURFACE_REQUEST_NOT_CONFIGURED"

    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
