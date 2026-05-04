.class public Landroidx/camera/video/internal/encoder/EncodedDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncodedData;


# instance fields
.field private final mBufferIndex:I

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field private final mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final mMediaCodec:Landroid/media/MediaCodec;


# direct methods
.method public static synthetic $r8$lambda$gWFewtZsIRF8vB36WzpA_DL-50k(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    const-string p0, "Data closed"

    return-object p0
.end method

.method constructor <init>(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 47
    iput p2, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferIndex:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 49
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    new-instance p2, Landroidx/camera/video/internal/encoder/EncodedDataImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 95
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mMediaCodec:Landroid/media/MediaCodec;

    iget v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public getClosedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mClosedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationTimeUs()J
    .locals 2

    .line 77
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    return-wide v0
.end method

.method public isKeyFrame()Z
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()J
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v0, v0

    return-wide v0
.end method
