.class Lorg/webrtc/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/VideoEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/HardwareVideoEncoder$BusyCount;
    }
.end annotation


# static fields
.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final REQUIRED_RESOLUTION_ALIGNMENT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"


# instance fields
.field private adjustedBitrate:I

.field private automaticResizeOn:Z

.field private final bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

.field private callback:Lorg/webrtc/VideoEncoder$Callback;

.field private codec:Lorg/webrtc/MediaCodecWrapper;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/VideoCodecMimeType;

.field private configBuffer:Ljava/nio/ByteBuffer;

.field private final encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final forcedKeyFrameNs:J

.field private frameSizeBytes:I

.field private height:I

.field private isEncodingStatisticsEnabled:Z

.field private isSemiPlanar:Z

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameNs:J

.field private final mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

.field private nextPresentationTimestampUs:J

.field private final outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

.field private final outputBuilders:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/webrtc/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;

.field private final outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private final sharedContext:Lorg/webrtc/EglBase14$Context;

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private final surfaceColorFormat:Ljava/lang/Integer;

.field private final textureDrawer:Lorg/webrtc/GlRectDrawer;

.field private textureEglBase:Lorg/webrtc/EglBase14;

.field private textureInputSurface:Landroid/view/Surface;

.field private useSurfaceMode:Z

.field private final videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

.field private width:I

.field private final yuvColorFormat:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$y4IJntadnwqegO9qiJSAGAUhlDo(Lorg/webrtc/HardwareVideoEncoder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoder;->lambda$deliverEncodedImage$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrunning(Lorg/webrtc/HardwareVideoEncoder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseCodecOnOutputThread(Lorg/webrtc/HardwareVideoEncoder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/webrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILorg/webrtc/BitrateAdjuster;Lorg/webrtc/EglBase14$Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/MediaCodecWrapperFactory;",
            "Ljava/lang/String;",
            "Lorg/webrtc/VideoCodecMimeType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lorg/webrtc/BitrateAdjuster;",
            "Lorg/webrtc/EglBase14$Context;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v0}, Lorg/webrtc/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    .line 116
    new-instance v0, Lorg/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lorg/webrtc/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 119
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 121
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 122
    new-instance v1, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 123
    new-instance v1, Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/webrtc/HardwareVideoEncoder$BusyCount;-><init>(Lorg/webrtc/HardwareVideoEncoder-IA;)V

    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    .line 193
    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

    .line 194
    iput-object p2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    .line 196
    iput-object p4, p0, Lorg/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    .line 197
    iput-object p5, p0, Lorg/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    .line 198
    iput-object p6, p0, Lorg/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 199
    iput p7, p0, Lorg/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 200
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p2, p8

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 201
    iput-object p9, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    .line 202
    iput-object p10, p0, Lorg/webrtc/HardwareVideoEncoder;->sharedContext:Lorg/webrtc/EglBase14$Context;

    .line 205
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method private canUseSurface()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->sharedContext:Lorg/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .line 576
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder$1;

    invoke-direct {v0, p0}, Lorg/webrtc/HardwareVideoEncoder$1;-><init>(Lorg/webrtc/HardwareVideoEncoder;)V

    return-object v0
.end method

.method private encodeByteBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$Buffer;I)Lorg/webrtc/VideoCodecStatus;
    .locals 11

    .line 455
    const-string p2, "HardwareVideoEncoder"

    iget-object p3, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {p3}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 457
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 462
    :try_start_0
    iget-object p3, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const-wide/16 v0, 0x0

    invoke-interface {p3, v0, v1}, Lorg/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p3, -0x1

    if-ne v5, p3, :cond_0

    .line 470
    const-string p1, "Dropped frame, no input buffers available"

    invoke-static {p2, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    .line 476
    :cond_0
    :try_start_1
    iget-object p3, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {p3, v5}, Lorg/webrtc/MediaCodecWrapper;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    if-ge v0, v1, :cond_1

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Input buffer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is smaller than frame size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-static {p2, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    .line 489
    :cond_1
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/webrtc/HardwareVideoEncoder;->fillInputBuffer(Ljava/nio/ByteBuffer;Lorg/webrtc/VideoFrame$Buffer;)V

    .line 492
    :try_start_2
    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    iget v7, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Lorg/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 499
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 495
    const-string p3, "queueInputBuffer failed"

    invoke-static {p2, p3, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 478
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInputBuffer with index="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 464
    const-string p3, "dequeueInputBuffer failed"

    invoke-static {p2, p3, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private encodeTextureBuffer(Lorg/webrtc/VideoFrame;J)Lorg/webrtc/VideoCodecStatus;
    .locals 4

    .line 426
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x4000

    .line 430
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 432
    new-instance v0, Lorg/webrtc/VideoFrame;

    .line 433
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    .line 434
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/webrtc/VideoFrameDrawer;->drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    .line 435
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-interface {v0, p2, p3, p1}, Lorg/webrtc/EglBase;->swapBuffers(JZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    .line 437
    const-string p2, "HardwareVideoEncoder"

    const-string p3, "encodeTexture failed"

    invoke-static {p2, p3, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private initEncodeInternal()Lorg/webrtc/VideoCodecStatus;
    .locals 6

    .line 232
    const-string v0, "HardwareVideoEncoder"

    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-wide/16 v1, 0x0

    .line 234
    iput-wide v1, p0, Lorg/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    const-wide/16 v1, -0x1

    .line 235
    iput-wide v1, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    const/4 v1, 0x0

    .line 237
    iput-boolean v1, p0, Lorg/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    .line 240
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lorg/webrtc/MediaCodecWrapperFactory;

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lorg/webrtc/MediaCodecWrapper;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 246
    iget-boolean v1, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    invoke-virtual {v2}, Lorg/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 249
    const-string v3, "bitrate"

    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 250
    const-string v3, "bitrate-mode"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 251
    const-string v3, "color-format"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 252
    const-string v1, "frame-rate"

    iget-object v3, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    .line 253
    invoke-interface {v3}, Lorg/webrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    move-result-wide v3

    double-to-float v3, v3

    .line 252
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 254
    const-string v1, "i-frame-interval"

    iget v3, p0, Lorg/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 255
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    sget-object v3, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    if-ne v1, v3, :cond_5

    .line 256
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    const-string v3, "profile-level-id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    const-string v3, "42e01f"

    if-nez v1, :cond_1

    move-object v1, v3

    .line 260
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x5bab3b7e

    if-eq v4, v5, :cond_3

    const v3, 0x5f19c386

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "640c1f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    const-string v1, "profile"

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 263
    const-string v1, "level"

    const/16 v3, 0x100

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 260
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 268
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown profile level id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    const-string v3, "c2.google.av1.encoder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 274
    const-string v1, "vendor.google-av1enc.encoding-preset.int32.value"

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 277
    :cond_6
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoEncoder;->isEncodingStatisticsSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    const-string v1, "video-encoding-statistics-level"

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 280
    iput-boolean v3, p0, Lorg/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    .line 283
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Lorg/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 287
    iget-boolean v1, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v1, :cond_8

    .line 288
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->sharedContext:Lorg/webrtc/EglBase14$Context;

    sget-object v2, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    invoke-static {v1, v2}, Lorg/webrtc/EglBase$-CC;->createEgl14(Lorg/webrtc/EglBase14$Context;[I)Lorg/webrtc/EglBase14;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 289
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lorg/webrtc/MediaCodecWrapper;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 290
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-interface {v2, v1}, Lorg/webrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 291
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    invoke-interface {v1}, Lorg/webrtc/EglBase;->makeCurrent()V

    .line 294
    :cond_8
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lorg/webrtc/MediaCodecWrapper;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/HardwareVideoEncoder;->updateInputFormat(Landroid/media/MediaFormat;)V

    .line 296
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lorg/webrtc/MediaCodecWrapper;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    iput-boolean v3, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    .line 304
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 305
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object v0

    .line 298
    :goto_3
    const-string v2, "initEncodeInternal failed"

    invoke-static {v0, v2, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoEncoder;->release()Lorg/webrtc/VideoCodecStatus;

    .line 300
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    return-object v0

    .line 242
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create media encoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method private synthetic lambda$deliverEncodedImage$0(I)V
    .locals 2

    .line 657
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 659
    const-string v0, "HardwareVideoEncoder"

    const-string v1, "releaseOutputBuffer failed"

    invoke-static {v0, v1, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    :goto_0
    iget-object p1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {p1}, Lorg/webrtc/HardwareVideoEncoder$BusyCount;->decrement()V

    return-void
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 684
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 685
    const-string v0, "Releasing MediaCodec on output thread"

    const-string v1, "HardwareVideoEncoder"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v0}, Lorg/webrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    .line 688
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 690
    const-string v2, "Media encoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 695
    const-string v2, "Media encoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    :goto_1
    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 700
    const-string v0, "Release on output thread done"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestKeyFrame(J)V
    .locals 3

    .line 559
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 565
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 567
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lorg/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    iput-wide p1, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    return-void

    :catch_0
    move-exception p1

    .line 569
    const-string p2, "HardwareVideoEncoder"

    const-string v0, "requestKeyFrame failed"

    invoke-static {p2, v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private resetCodec(IIZ)Lorg/webrtc/VideoCodecStatus;
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCodec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 543
    invoke-virtual {p0}, Lorg/webrtc/HardwareVideoEncoder;->release()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 544
    sget-object v1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 547
    :cond_0
    iput p1, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    .line 548
    iput p2, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    .line 549
    iput-boolean p3, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 550
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 4

    .line 554
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 555
    iget-wide v0, p0, Lorg/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lorg/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    add-long/2addr v2, v0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateBitrate()Lorg/webrtc/VideoCodecStatus;
    .locals 3

    .line 704
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 705
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v0}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v0

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 707
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 708
    const-string v1, "video-bitrate"

    iget v2, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 709
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lorg/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V

    .line 710
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 712
    const-string v1, "HardwareVideoEncoder"

    const-string v2, "updateBitrate failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method private updateInputFormat(Landroid/media/MediaFormat;)V
    .locals 4

    .line 723
    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    .line 724
    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    if-eqz p1, :cond_1

    .line 727
    const-string v0, "stride"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    .line 729
    iget v1, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    .line 732
    :cond_0
    const-string v0, "slice-height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    .line 734
    iget v1, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    .line 738
    :cond_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/webrtc/HardwareVideoEncoder;->isSemiPlanar(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->isSemiPlanar:Z

    if-eqz v0, :cond_2

    .line 740
    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 741
    iget v1, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    iget v2, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    goto :goto_0

    .line 743
    :cond_2
    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 744
    iget v2, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v0

    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 745
    iput v2, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    .line 748
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInputFormat format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " stride: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sliceHeight: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isSemiPlanar: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/webrtc/HardwareVideoEncoder;->isSemiPlanar:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " frameSizeBytes: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HardwareVideoEncoder"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic createNativeVideoEncoder()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/webrtc/VideoEncoder$-CC;->$default$createNativeVideoEncoder(Lorg/webrtc/VideoEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected deliverEncodedImage()V
    .locals 10

    .line 589
    const-string v0, "video-qp-average"

    const-string v1, "HardwareVideoEncoder"

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 591
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 592
    iget-object v3, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    const-wide/32 v4, 0x186a0

    invoke-interface {v3, v2, v4, v5}, Lorg/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v0, -0x3

    if-ne v3, v0, :cond_2

    .line 595
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v0}, Lorg/webrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 600
    :cond_0
    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v4, v3}, Lorg/webrtc/MediaCodecWrapper;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 601
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 602
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 604
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config frame generated. Offset: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_2

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    sget-object v3, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/webrtc/VideoCodecMimeType;->H265:Lorg/webrtc/VideoCodecMimeType;

    if-ne v2, v3, :cond_2

    .line 611
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 612
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-void

    .line 617
    :cond_3
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v5, v6}, Lorg/webrtc/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 618
    iget v5, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    iget-object v6, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v6}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 619
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->updateBitrate()Lorg/webrtc/VideoCodecStatus;

    .line 622
    :cond_4
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v6, v7

    :goto_0
    if-eqz v6, :cond_6

    .line 624
    const-string v5, "Sync frame generated"

    invoke-static {v1, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_6
    iget-boolean v5, p0, Lorg/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    .line 630
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v5, v3}, Lorg/webrtc/MediaCodecWrapper;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 631
    invoke-virtual {v5, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 632
    invoke-virtual {v5, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_8

    .line 638
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_8

    .line 639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepending config buffer of size "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to output buffer with offset "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", size "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-static {v1, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 643
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 644
    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 645
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 646
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 647
    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v4, v3, v7}, Lorg/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 650
    :cond_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 651
    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lorg/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v4}, Lorg/webrtc/HardwareVideoEncoder$BusyCount;->increment()V

    .line 652
    new-instance v8, Lorg/webrtc/HardwareVideoEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v3}, Lorg/webrtc/HardwareVideoEncoder$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/HardwareVideoEncoder;I)V

    :goto_2
    if-eqz v6, :cond_9

    .line 665
    sget-object v3, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    goto :goto_3

    .line 666
    :cond_9
    sget-object v3, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameDelta:Lorg/webrtc/EncodedImage$FrameType;

    .line 668
    :goto_3
    iget-object v4, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/webrtc/EncodedImage$Builder;

    .line 669
    invoke-virtual {v4, v2, v8}, Lorg/webrtc/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)Lorg/webrtc/EncodedImage$Builder;

    .line 670
    invoke-virtual {v4, v3}, Lorg/webrtc/EncodedImage$Builder;->setFrameType(Lorg/webrtc/EncodedImage$FrameType;)Lorg/webrtc/EncodedImage$Builder;

    .line 671
    invoke-virtual {v4, v0}, Lorg/webrtc/EncodedImage$Builder;->setQp(Ljava/lang/Integer;)Lorg/webrtc/EncodedImage$Builder;

    .line 673
    invoke-virtual {v4}, Lorg/webrtc/EncodedImage$Builder;->createEncodedImage()Lorg/webrtc/EncodedImage;

    move-result-object v0

    .line 675
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->callback:Lorg/webrtc/VideoEncoder$Callback;

    new-instance v3, Lorg/webrtc/VideoEncoder$CodecSpecificInfo;

    invoke-direct {v3}, Lorg/webrtc/VideoEncoder$CodecSpecificInfo;-><init>()V

    invoke-interface {v2, v0, v3}, Lorg/webrtc/VideoEncoder$Callback;->onEncodedFrame(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoEncoder$CodecSpecificInfo;)V

    .line 677
    invoke-virtual {v0}, Lorg/webrtc/EncodedImage;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 679
    :goto_4
    const-string v2, "deliverOutput failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public encode(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoEncoder$EncodeInfo;)Lorg/webrtc/VideoCodecStatus;
    .locals 8

    .line 356
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 357
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    if-nez v0, :cond_0

    .line 358
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    .line 361
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    instance-of v1, v1, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 365
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    .line 366
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    .line 367
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v5

    .line 368
    :goto_0
    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    if-ne v3, v4, :cond_2

    iget-boolean v4, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eq v1, v4, :cond_3

    .line 369
    :cond_2
    invoke-direct {p0, v2, v3, v1}, Lorg/webrtc/HardwareVideoEncoder;->resetCodec(IIZ)Lorg/webrtc/VideoCodecStatus;

    move-result-object v1

    .line 370
    sget-object v2, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq v1, v2, :cond_3

    return-object v1

    .line 375
    :cond_3
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 377
    const-string p1, "HardwareVideoEncoder"

    const-string p2, "Dropped frame, encoder queue full"

    invoke-static {p1, p2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/webrtc/VideoCodecStatus;

    return-object p1

    .line 382
    :cond_4
    iget-object p2, p2, Lorg/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/webrtc/EncodedImage$FrameType;

    array-length v1, p2

    move v3, v5

    :goto_1
    if-ge v5, v1, :cond_6

    aget-object v4, p2, v5

    .line 383
    sget-object v7, Lorg/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/EncodedImage$FrameType;

    if-ne v4, v7, :cond_5

    move v3, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    .line 388
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/webrtc/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 389
    :cond_7
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/webrtc/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 394
    :cond_8
    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p2

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    mul-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x3

    div-int/2addr p2, v2

    .line 395
    invoke-static {}, Lorg/webrtc/EncodedImage;->builder()Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 396
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/webrtc/EncodedImage$Builder;->setCaptureTimeNs(J)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/webrtc/EncodedImage$Builder;->setEncodedWidth(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/webrtc/EncodedImage$Builder;->setEncodedHeight(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/webrtc/EncodedImage$Builder;->setRotation(I)Lorg/webrtc/EncodedImage$Builder;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 402
    iget-wide v1, p0, Lorg/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 404
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 405
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v5, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {v5}, Lorg/webrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-long v3, v3

    .line 406
    iget-wide v5, p0, Lorg/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 409
    iget-boolean v3, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v3, :cond_9

    .line 410
    invoke-direct {p0, p1, v1, v2}, Lorg/webrtc/HardwareVideoEncoder;->encodeTextureBuffer(Lorg/webrtc/VideoFrame;J)Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    goto :goto_2

    .line 412
    :cond_9
    invoke-direct {p0, p1, v0, p2}, Lorg/webrtc/HardwareVideoEncoder;->encodeByteBuffer(Lorg/webrtc/VideoFrame;Lorg/webrtc/VideoFrame$Buffer;I)Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    .line 416
    :goto_2
    sget-object p2, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    if-eq p1, p2, :cond_a

    .line 418
    iget-object p2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p2}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    :cond_a
    return-object p1
.end method

.method protected fillInputBuffer(Ljava/nio/ByteBuffer;Lorg/webrtc/VideoFrame$Buffer;)V
    .locals 25

    move-object/from16 v0, p0

    .line 779
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    .line 780
    iget-boolean v2, v0, Lorg/webrtc/HardwareVideoEncoder;->isSemiPlanar:Z

    if-eqz v2, :cond_0

    .line 781
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    .line 782
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v8

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v10

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v11

    iget v12, v0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    iget v13, v0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    move-object/from16 v9, p1

    .line 781
    invoke-static/range {v3 .. v13}, Lorg/webrtc/YuvHelper;->I420ToNV12(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    goto :goto_0

    .line 785
    :cond_0
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v15

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v17

    .line 786
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v19

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v21

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v22

    iget v2, v0, Lorg/webrtc/HardwareVideoEncoder;->stride:I

    iget v3, v0, Lorg/webrtc/HardwareVideoEncoder;->sliceHeight:I

    move-object/from16 v20, p1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 785
    invoke-static/range {v14 .. v24}, Lorg/webrtc/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    .line 789
    :goto_0
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public getEncoderInfo()Lorg/webrtc/VideoEncoder$EncoderInfo;
    .locals 3

    .line 535
    new-instance v0, Lorg/webrtc/VideoEncoder$EncoderInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/VideoEncoder$EncoderInfo;-><init>(IZ)V

    return-object v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic getResolutionBitrateLimits()[Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/webrtc/VideoEncoder$-CC;->$default$getResolutionBitrateLimits(Lorg/webrtc/VideoEncoder;)[Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;

    move-result-object v0

    return-object v0
.end method

.method public getScalingSettings()Lorg/webrtc/VideoEncoder$ScalingSettings;
    .locals 3

    .line 511
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    sget-object v1, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_0

    .line 515
    new-instance v0, Lorg/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x1d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lorg/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 516
    :cond_0
    sget-object v1, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_1

    .line 519
    new-instance v0, Lorg/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x18

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 522
    :cond_1
    sget-object v0, Lorg/webrtc/VideoEncoder$ScalingSettings;->OFF:Lorg/webrtc/VideoEncoder$ScalingSettings;

    return-object v0
.end method

.method public initEncode(Lorg/webrtc/VideoEncoder$Settings;Lorg/webrtc/VideoEncoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 4

    .line 210
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 212
    iput-object p2, p0, Lorg/webrtc/HardwareVideoEncoder;->callback:Lorg/webrtc/VideoEncoder$Callback;

    .line 213
    iget-boolean p2, p1, Lorg/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    iput-boolean p2, p0, Lorg/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 215
    iget p2, p1, Lorg/webrtc/VideoEncoder$Settings;->width:I

    iput p2, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    .line 216
    iget p2, p1, Lorg/webrtc/VideoEncoder$Settings;->height:I

    iput p2, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    .line 217
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result p2

    iput-boolean p2, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 219
    iget p2, p1, Lorg/webrtc/VideoEncoder$Settings;->startBitrate:I

    if-eqz p2, :cond_0

    iget v0, p1, Lorg/webrtc/VideoEncoder$Settings;->maxFramerate:I

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-double v2, v0

    invoke-interface {v1, p2, v2, v3}, Lorg/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 222
    :cond_0
    iget-object p2, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-interface {p2}, Lorg/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result p2

    iput p2, p0, Lorg/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initEncode name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/webrtc/HardwareVideoEncoder;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " framerate_fps: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/webrtc/VideoEncoder$Settings;->maxFramerate:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bitrate_kbps: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/webrtc/VideoEncoder$Settings;->startBitrate:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " surface mode: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HardwareVideoEncoder"

    invoke-static {p2, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lorg/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method protected isEncodingStatisticsSupported()Z
    .locals 3

    .line 760
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    sget-object v1, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/webrtc/VideoCodecMimeType;->VP9:Lorg/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lorg/webrtc/MediaCodecWrapper;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 769
    :cond_1
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->codecType:Lorg/webrtc/VideoCodecMimeType;

    invoke-virtual {v1}, Lorg/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 774
    :cond_2
    const-string v1, "encoding-statistics"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public synthetic isHardwareEncoder()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/webrtc/VideoEncoder$-CC;->$default$isHardwareEncoder(Lorg/webrtc/VideoEncoder;)Z

    move-result v0

    return v0
.end method

.method protected isSemiPlanar(I)Z
    .locals 3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const v0, 0x7fa30c00

    if-eq p1, v0, :cond_1

    const v0, 0x7fa30c04

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public release()Lorg/webrtc/VideoCodecStatus;
    .locals 3

    .line 313
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 316
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoder;->running:Z

    .line 321
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    const-string v1, "HardwareVideoEncoder"

    if-nez v0, :cond_1

    .line 322
    const-string v0, "Media encoder release timeout"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "Media encoder release exception"

    iget-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    invoke-static {v1, v0, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->ERROR:Lorg/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 329
    :cond_2
    sget-object v0, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    .line 333
    :goto_0
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureDrawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lorg/webrtc/GlGenericDrawer;->release()V

    .line 334
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    invoke-virtual {v1}, Lorg/webrtc/VideoFrameDrawer;->release()V

    .line 335
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 336
    invoke-interface {v1}, Lorg/webrtc/EglBase;->release()V

    .line 337
    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureEglBase:Lorg/webrtc/EglBase14;

    .line 339
    :cond_3
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 341
    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 343
    :cond_4
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 345
    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->codec:Lorg/webrtc/MediaCodecWrapper;

    .line 346
    iput-object v2, p0, Lorg/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 349
    iget-object v1, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-object v0
.end method

.method public setRateAllocation(Lorg/webrtc/VideoEncoder$BitrateAllocation;I)Lorg/webrtc/VideoCodecStatus;
    .locals 3

    .line 445
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    move p2, v0

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    invoke-virtual {p1}, Lorg/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result p1

    int-to-double v1, p2

    invoke-interface {v0, p1, v1, v2}, Lorg/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 450
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method public setRates(Lorg/webrtc/VideoEncoder$RateControlParameters;)Lorg/webrtc/VideoCodecStatus;
    .locals 4

    .line 504
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 505
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/BitrateAdjuster;

    iget-object v1, p1, Lorg/webrtc/VideoEncoder$RateControlParameters;->bitrate:Lorg/webrtc/VideoEncoder$BitrateAllocation;

    invoke-virtual {v1}, Lorg/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result v1

    iget-wide v2, p1, Lorg/webrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 506
    sget-object p1, Lorg/webrtc/VideoCodecStatus;->OK:Lorg/webrtc/VideoCodecStatus;

    return-object p1
.end method
