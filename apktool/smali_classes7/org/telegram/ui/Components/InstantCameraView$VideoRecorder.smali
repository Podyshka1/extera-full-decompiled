.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;
    }
.end annotation


# instance fields
.field private alphaHandle:I

.field private audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private audioDiff:J

.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioFirst:J

.field private audioLast:J

.field private audioLastDt:J

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioStartTime:J

.field private audioStopedByTime:Z

.field private audioTrackIndex:I

.field private blendEnabled:Z

.field private buffers:Ljava/util/concurrent/ArrayBlockingQueue;

.field private buffersToWrite:Ljava/util/ArrayList;

.field private currentTimestamp:J

.field private desyncTime:J

.field private drawProgram:I

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private fileToWrite:Ljava/io/File;

.field fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

.field private firstEncode:Z

.field private firstVideoFrameSincePause:Z

.field private frameCount:I

.field private generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private volatile handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

.field private keyframeThumbs:Ljava/util/ArrayList;

.field private lastCameraId:Ljava/lang/Integer;

.field private lastCommitedFrameTime:J

.field private lastTimestamp:J

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

.field private overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

.field private volatile pauseRecorder:Z

.field private positionHandle:I

.field private prependHeaderSize:I

.field private prevAudioLast:J

.field prevTimestamp:J

.field private prevVideoLast:J

.field private previewSizeHandle:I

.field public volatile ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private resolutionHandle:I

.field private volatile running:Z

.field private volatile sendWhenDone:I

.field private volatile sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

.field private sentMedia:Z

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private texelSizeHandle:I

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I

.field private videoBitrate:I

.field private videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private videoConvertFirstWrite:Z

.field private videoDiff:J

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoFile:Ljava/io/File;

.field private videoFirst:J

.field private videoHeight:I

.field private videoLast:J

.field private videoLastDt:J

.field private videoTrackIndex:I

.field private videoWidth:I

.field private writingToDifferentFile:Z

.field private zeroTimeStamps:I


# direct methods
.method public static synthetic $r8$lambda$-hflIVS63LeU3X03zbaR0ZHC85Y(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$10(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0iStWPcyHISIP4GQT_mcyS_X7y4(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$A4pvQu5AxNKwQHYV3J6IFdbi0HE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B1pR_Rutznew9fxfMrVGtOMprzU(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$C6wO8h9oOMIvxmx7daV00ismYys(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EahIg0AAidr1b8erBpdEek65KQo(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$FiGPJgCHDHhTUALi9alX1MnMGLg(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$startRecording$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GjUQPglucG7zKNa9ZCyond0dmNo(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4W4WiBq9UM4rvkxC2SOKwhqums(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$PyXqsvF5ZA8yxPVQUkbjlGPyNfk(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$QdO-jyJ9O4ouqHBlMD_oWSbdf7U(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$d37brXAUj0jqQ3leGpTboxPg7DA(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZoRhJ623PJ6186_Pgu6YSIexwo(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$stopRecording$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mDWCq0rYBuzNm4u0jIufKcijlHc(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$prepareEncoder$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tpFr2TguKwy3KK8EnxNJMinsRKo(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$8(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8k16z4yRK2BrTtNr2dUOuNus_4(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$6(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuffers(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyframeThumbs(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpauseRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrunning(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendWhenDone(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendWhenDoneOptions(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$SendOptions;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstarted(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePauseRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handlePauseRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleResumeRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVideoFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareEncoder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder(Z)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 4

    .line 2367
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2380
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 2384
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2385
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2388
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 2399
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    .line 2400
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 2401
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    .line 2404
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    .line 2407
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2408
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 2412
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 2421
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2425
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 2426
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2427
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 2428
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    .line 2429
    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    const/4 p1, 0x0

    .line 2443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 2448
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2449
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    .line 2456
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method private createKeyframeThumb()V
    .locals 2

    .line 2972
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    rem-int/lit8 v0, v0, 0x21

    if-nez v0, :cond_0

    .line 2973
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView-IA;)V

    .line 2974
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private didWriteData(Ljava/io/File;JZ)V
    .locals 13

    .line 3654
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetisSecretChat(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    const/4 v0, 0x0

    .line 3656
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz p4, :cond_1

    .line 3658
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetisSecretChat(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v5

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_0
    move-wide v6, p2

    move-wide v8, v1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    :cond_1
    return-void

    .line 3661
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetisSecretChat(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v8

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_3
    move-wide v9, p2

    move-wide v11, v1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 20

    move-object/from16 v1, p0

    .line 2690
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v0, :cond_0

    goto/16 :goto_10

    .line 2693
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_1

    goto/16 :goto_10

    .line 2696
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 2698
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 2699
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_19

    .line 2700
    const-string v0, "InstantCamera video record not yet started"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    move v0, v3

    .line 2706
    :goto_1
    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v4, :cond_6

    if-nez v0, :cond_3

    .line 2707
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v4, v0

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x989680

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    .line 2708
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v4, v0

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    .line 2709
    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2711
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera detected desync between audio and video "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2716
    :cond_3
    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v7, v4, v0

    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v4, v7, v9

    const-string v9, " timestamp = "

    if-ltz v4, :cond_4

    .line 2717
    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 2718
    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 2720
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_8

    .line 2721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstantCamera found first audio frame at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v7, v0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 2725
    :cond_4
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_5

    .line 2726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstantCamera ignore first audio frame at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v7, v0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2731
    :cond_6
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 2732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera first audio frame not found, removing buffers "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2734
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2738
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2739
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    .line 2746
    :cond_8
    :goto_2
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_9

    .line 2747
    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v4, v0, v4

    iput-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 2749
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_a

    .line 2750
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 2753
    :cond_a
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2755
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    move v0, v3

    :goto_4
    if-eqz v2, :cond_19

    .line 2760
    :try_start_1
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_18

    .line 2763
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2764
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v8, v10

    .line 2765
    :goto_5
    iget v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gt v10, v8, :cond_14

    if-ge v10, v8, :cond_10

    .line 2767
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v8, v10

    move-wide/from16 v16, v6

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v14, v6

    .line 2768
    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v6, :cond_e

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v7, v6, v10

    move-wide/from16 v18, v14

    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v13, v3

    cmp-long v3, v7, v13

    const-wide/32 v7, 0x3938700

    if-gez v3, :cond_b

    cmp-long v3, v18, v7

    if-ltz v3, :cond_e

    .line 2769
    :cond_b
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    cmp-long v0, v18, v7

    if-ltz v0, :cond_d

    .line 2771
    const-string v0, "InstantCamera stop audio encoding because recorded time more than 60s"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c
    :goto_6
    const/4 v15, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 2773
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v3, v2, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 2777
    :goto_7
    iput-boolean v15, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    .line 2780
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    :goto_8
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x1

    goto :goto_b

    .line 2783
    :cond_e
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v4, v4, v10

    if-ge v3, v4, :cond_f

    .line 2784
    iput v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    goto :goto_8

    .line 2788
    :cond_f
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_9

    :cond_10
    move-wide/from16 v16, v6

    .line 2790
    :goto_9
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    if-lt v10, v3, :cond_13

    .line 2791
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2792
    iget-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_11

    .line 2793
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 2795
    :cond_11
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2796
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    .line 2798
    iget-boolean v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    const/4 v6, 0x0

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move v3, v6

    move v4, v15

    move-wide/from16 v6, v16

    goto/16 :goto_5

    :cond_14
    move v15, v4

    move-wide/from16 v16, v6

    move v6, v3

    :goto_b
    cmp-long v3, v11, v16

    if-nez v3, :cond_15

    move-wide/from16 v11, v16

    goto :goto_c

    .line 2804
    :cond_15
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v11, v3

    .line 2806
    :goto_c
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    cmp-long v7, v3, v16

    if-ltz v7, :cond_16

    add-long/2addr v11, v3

    :cond_16
    move-wide v12, v11

    .line 2809
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    sub-long v3, v12, v3

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    .line 2810
    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 2811
    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v11

    if-eqz v0, :cond_17

    const/4 v3, 0x4

    move v14, v3

    goto :goto_d

    :cond_17
    move v14, v6

    :goto_d
    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :cond_18
    move v6, v3

    move v15, v4

    :goto_e
    move v3, v6

    move v4, v15

    goto/16 :goto_4

    .line 2815
    :goto_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    :goto_10
    return-void
.end method

.method private handlePauseRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 3001
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    .line 3002
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3003
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3004
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)V

    .line 3006
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)V

    .line 3008
    :try_start_0
    const-string v1, "InstantCamera handlePauseRecording drain encoders"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3009
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3011
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3033
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_2

    .line 3034
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v3, :cond_1

    .line 3035
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3036
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3045
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3047
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3051
    :cond_1
    :try_start_2
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 3053
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3058
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleResumeRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 3079
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return-void
.end method

.method private handleStopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3160
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3162
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v2, :cond_1

    .line 3163
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    .line 3164
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 3193
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-nez v3, :cond_3

    .line 3194
    const-string v1, "InstantCamera handleStopRecording running=false"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3195
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    .line 3196
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    .line 3197
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return-void

    .line 3201
    :cond_3
    :try_start_0
    const-string v3, "InstantCamera handleStopRecording drain encoders"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3204
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3206
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 3208
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 3209
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 3210
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 3212
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3215
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_5

    .line 3217
    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 3218
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 3219
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    .line 3221
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 3223
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3226
    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3227
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3228
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)V

    .line 3230
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_9

    .line 3231
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v5, :cond_7

    .line 3232
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3233
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3242
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    .line 3244
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 3248
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 3250
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3253
    :goto_4
    const-string v3, "InstantCamera handleStopRecording finish muxer"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3254
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-eqz v3, :cond_9

    .line 3255
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3257
    :try_start_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 3259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstantCamera copying fileToWrite to videoFile, deleting videoFile error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3260
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3263
    :cond_8
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3264
    const-string v3, "InstantCamera unable to rename file, try move file"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3266
    :try_start_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3267
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 3269
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3270
    const-string v3, "InstantCamera unable to move file"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_6
    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    .line 3276
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_a

    .line 3277
    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 3278
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 3279
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 3282
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantCamera handleStopRecording send "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 3284
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 3286
    :try_start_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3289
    :catchall_0
    :try_start_8
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_d

    if-ne p1, v1, :cond_c

    .line 3292
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v0, :cond_d

    .line 3293
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    .line 3294
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3360
    :cond_d
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3368
    :catchall_1
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 3369
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 3370
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    .line 3371
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 3372
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 3374
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, p2, :cond_f

    .line 3375
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, p2, p2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3376
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 3377
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 3378
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 3380
    :cond_f
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3381
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3382
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 3383
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz p1, :cond_10

    .line 3384
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->exit()V

    .line 3386
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz p1, :cond_11

    .line 3387
    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    .line 3388
    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    .line 3390
    :cond_11
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 2820
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTextureAvailable(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    .line 2824
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2826
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2830
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 2832
    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 2834
    :goto_1
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    const-wide/16 v9, -0x1

    if-ltz v2, :cond_3

    .line 2835
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_2

    sub-long v5, p1, v5

    .line 2836
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    .line 2838
    :cond_2
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    sub-long v5, p1, v5

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :goto_2
    if-nez v0, :cond_5

    .line 2840
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    sub-long v7, v5, v11

    .line 2862
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v11, v7

    goto :goto_5

    .line 2841
    :cond_5
    :goto_3
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v11, v7

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    if-nez v0, :cond_9

    .line 2845
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    sub-long v11, v5, v11

    .line 2846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide v15, v7

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v13, v7

    const-wide/32 v7, 0xf4240

    mul-long/2addr v13, v7

    cmp-long v0, v11, v15

    if-ltz v0, :cond_6

    sub-long v7, v13, v11

    .line 2847
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v17, 0x5f5e100

    cmp-long v0, v7, v17

    if-lez v0, :cond_7

    :cond_6
    move-wide v11, v13

    :cond_7
    cmp-long v0, v11, v15

    if-gez v0, :cond_8

    move-wide v11, v15

    :cond_8
    move-wide v7, v11

    goto :goto_4

    :cond_9
    move-wide v15, v7

    move-wide v7, v15

    .line 2859
    :goto_4
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v11, v15

    .line 2864
    :goto_5
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    .line 2865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 2866
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    if-nez v0, :cond_b

    .line 2867
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v13, v7

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v15, 0xbebc200

    cmp-long v0, v13, v15

    if-gez v0, :cond_a

    goto/16 :goto_7

    .line 2871
    :cond_a
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 2873
    :cond_b
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v13, v7

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 2874
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_c

    const-wide/16 v7, 0x3e8

    .line 2875
    div-long v7, v5, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 2876
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCamera first video frame was at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2880
    :cond_c
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    sub-long v7, v5, v7

    iput-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    .line 2881
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 2883
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 2884
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v18

    .line 2885
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldTextureTextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v24

    if-eqz v10, :cond_d

    if-nez v18, :cond_e

    :cond_d
    move-object/from16 v0, v18

    goto/16 :goto_6

    .line 2891
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_f

    .line 2892
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->bind()V

    .line 2895
    :cond_f
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 2896
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2897
    iget v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v14, 0x3

    const/16 v15, 0x1406

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2898
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2899
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v6, 0x2

    const/16 v7, 0x1406

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2900
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2901
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v0, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2903
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    int-to-float v2, v2

    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    int-to-float v5, v5

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2905
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    const/4 v2, 0x4

    const/4 v5, 0x5

    const v6, 0x8d65

    const/16 v7, 0xbe2

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_12

    if-eqz v24, :cond_12

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetbothCameras(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2906
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_10

    .line 2907
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2908
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2910
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2911
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v0, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2913
    :cond_11
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v20, 0x2

    const/16 v21, 0x1406

    move/from16 v19, v0

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2915
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmoldSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v9

    invoke-static {v0, v4, v3, v9, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2916
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2917
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2918
    invoke-static {v5, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2921
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2922
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v9

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    iget-object v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v13

    aget-object v10, v10, v13

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v0, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2923
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->texelSizeHandle:I

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v9

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v13

    iget-object v14, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v14}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v8, v13

    div-float/2addr v13, v10

    invoke-static {v0, v9, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 2926
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v9

    aget v0, v0, v9

    const/high16 v9, -0x80000000

    if-eq v0, v9, :cond_14

    .line 2928
    iget v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v10

    invoke-static {v9, v4, v3, v10, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2929
    iget v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v10

    invoke-static {v9, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 2930
    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2931
    invoke-static {v5, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2934
    :cond_14
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2935
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2936
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2937
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2939
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_15

    .line 2940
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->render()V

    .line 2941
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-eqz v0, :cond_15

    .line 2942
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2946
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v2, v5, v6}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 2947
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 2949
    invoke-direct {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->createKeyframeThumb()V

    .line 2950
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2952
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eqz v0, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetbothCameras(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2953
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v2

    long-to-float v5, v11

    const v6, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 2954
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_17

    .line 2955
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 2956
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 2957
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 2958
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2959
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v3

    .line 2960
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraReady(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2961
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraReady(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 2962
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 2965
    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraReady(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2966
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraReady(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 2967
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 2887
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera handleVideoFrameAvailable skip frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_17
    :goto_7
    return-void
.end method

.method private synthetic lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 3730
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3732
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide p1, v0

    :goto_0
    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 3734
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3735
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 3813
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, p1, p2, v0}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3815
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide p1, v1

    :goto_0
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 3817
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3818
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 3038
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3040
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3042
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handlePauseRecording$5()V
    .locals 9

    .line 3059
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3060
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 3062
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 3063
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 3064
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetkey(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 3066
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetiv(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsize(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/16 v2, 0x19

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 3069
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v3, 0x168

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 3070
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 3072
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    .line 3073
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordedTime(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 3074
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordingGuid(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v1

    const/4 v1, 0x2

    aput-object v5, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$10(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3295
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3296
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3297
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 3298
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 3300
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_5

    .line 3301
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputfile(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 3302
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;)V

    .line 3303
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputkey(Lorg/telegram/ui/Components/InstantCameraView;[B)V

    .line 3304
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputiv(Lorg/telegram/ui/Components/InstantCameraView;[B)V

    .line 3305
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v9, v9

    .line 3306
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v2, v11, v7

    if-ltz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    goto :goto_0

    :cond_1
    move-wide v11, v7

    .line 3307
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v2, v13, v7

    if-ltz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 3308
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    sub-long/2addr v13, v11

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 3309
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsize(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v11

    long-to-double v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v13

    iget-wide v13, v13, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v13, v13

    div-double/2addr v13, v9

    mul-double/2addr v11, v13

    double-to-long v9, v11

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 3310
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const v3, 0xf4240

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 3311
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v2, v2, v7

    const-wide/16 v3, 0x3e8

    if-lez v2, :cond_3

    .line 3312
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    mul-long/2addr v9, v3

    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 3314
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v2, v9, v7

    if-lez v2, :cond_4

    .line 3315
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    mul-long/2addr v9, v3

    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 3317
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_2

    .line 3319
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsize(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 3321
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 3322
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 3323
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 3324
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetkey(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 3325
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetiv(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 3326
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v4, 0x19

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 3327
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/16 v9, 0x168

    iput v9, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 3328
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iput v9, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 3329
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 3330
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v11

    move/from16 v2, p1

    if-ne v2, v3, :cond_d

    .line 3332
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3333
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getDialogId()J

    move-result-wide v13

    new-instance v15, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v15, v0, v1, v11}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;)V

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v17

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_6

    .line 3345
    :cond_6
    new-instance v18, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-direct/range {v18 .. v29}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-object/from16 v10, v18

    if-eqz v1, :cond_7

    .line 3347
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v2, v10, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 3348
    iget-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v12, v10, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    .line 3350
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v9

    if-eqz v1, :cond_9

    iget-boolean v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v12, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v12, v3

    :goto_4
    if-eqz v1, :cond_a

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v13, v2

    goto :goto_5

    :cond_a
    move v13, v5

    :goto_5
    if-eqz v1, :cond_b

    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleRepeatPeriod:I

    :cond_b
    move v14, v5

    if-eqz v1, :cond_c

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :cond_c
    move-wide/from16 v16, v7

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v17}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIIZJ)V

    .line 3352
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void

    .line 3354
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    .line 3355
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordedTime(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v1

    iput-wide v1, v11, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 3356
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordingGuid(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object v11, v8, v3

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v7, v8, v3

    invoke-virtual {v1, v2, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$11()V
    .locals 5

    .line 3361
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3362
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    .line 3364
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 3365
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$12()V
    .locals 2

    .line 3391
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$6(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3165
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3166
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 3167
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 3168
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsize(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 3169
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 3170
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 3171
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetencryptedFile(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 3172
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetkey(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 3173
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetiv(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 3174
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v4, 0x19

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 3175
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/16 v5, 0x168

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 3176
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 3177
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 3178
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    .line 3179
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->thumb:Landroid/graphics/Bitmap;

    .line 3180
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordedTime(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 3181
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)V

    .line 3182
    new-instance v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-eqz v1, :cond_0

    .line 3184
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v2, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 3185
    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v6, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    .line 3187
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v3

    :goto_1
    if-eqz v1, :cond_3

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    if-eqz v1, :cond_4

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleRepeatPeriod:I

    :cond_4
    move v10, v4

    if-eqz v1, :cond_5

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :goto_3
    move-wide v12, v3

    goto :goto_4

    :cond_5
    const-wide/16 v3, 0x0

    goto :goto_3

    :goto_4
    const/4 v11, 0x0

    move-object v6, v5

    move-object v5, v2

    invoke-interface/range {v5 .. v13}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIIZJ)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 3235
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3239
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$8(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZII)V
    .locals 12

    .line 3334
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-eqz p1, :cond_0

    .line 3336
    iget v1, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    .line 3337
    iget-wide v1, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    .line 3339
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v1

    const/4 v9, 0x0

    if-nez p3, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v9

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-eqz p4, :cond_3

    move/from16 v4, p4

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    iget v2, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v9

    :goto_2
    if-eqz p5, :cond_5

    move/from16 v5, p5

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iget v2, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleRepeatPeriod:I

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v9

    :goto_3
    if-eqz p1, :cond_7

    iget-wide v6, p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :goto_4
    move-wide v7, v6

    goto :goto_5

    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_4

    :goto_5
    const/4 v6, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, p2

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIIZJ)V

    .line 3340
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1, v9, v9}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$9()V
    .locals 2

    .line 3342
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$2()V
    .locals 3

    .line 2962
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureOverlayView(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$3()V
    .locals 3

    .line 2967
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureOverlayView(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$prepareEncoder$13(Z)V
    .locals 5

    .line 3526
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcancelled(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 3530
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3532
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 3533
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordedTime(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputrecordPlusTime(Lorg/telegram/ui/Components/InstantCameraView;J)V

    .line 3534
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputrecordStartTime(Lorg/telegram/ui/Components/InstantCameraView;J)V

    .line 3535
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputrecording(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 3536
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mupdateFlash(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 3537
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3538
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordingGuid(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$0()V
    .locals 5

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$1()V
    .locals 5

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private prepareEncoder(Z)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3426
    const-string v0, "video/avc"

    const-string v3, "bitrate"

    const-string v4, "audio/mp4a-latm"

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V

    const/16 v6, 0x10

    const v7, 0xbb80

    const/4 v8, 0x2

    .line 3429
    :try_start_0
    invoke-static {v7, v6, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    if-gtz v6, :cond_0

    const/16 v6, 0xe00

    :cond_0
    const v9, 0xc000

    if-ge v9, v6, :cond_1

    .line 3435
    div-int/lit16 v6, v6, 0x800

    add-int/2addr v6, v5

    mul-int/lit16 v9, v6, 0x1000

    :cond_1
    move v14, v9

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 3437
    :goto_0
    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x3

    if-ge v9, v10, :cond_2

    .line 3439
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v11}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v11, -0x1

    if-eqz v2, :cond_3

    .line 3443
    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    move-wide/from16 v16, v7

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    add-long v6, v16, v6

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 3444
    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    add-long/2addr v6, v9

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    .line 3445
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    const-wide/16 v6, 0x0

    goto :goto_2

    .line 3447
    :cond_3
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    .line 3448
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    const-wide/16 v6, 0x0

    .line 3449
    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 3451
    :goto_2
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 3452
    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 3453
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 3454
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    .line 3455
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    .line 3456
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    .line 3457
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    .line 3458
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    .line 3459
    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioDiff:J

    const/4 v6, 0x0

    .line 3460
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    const-wide/16 v6, 0x0

    .line 3461
    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    .line 3463
    new-instance v9, Landroid/media/AudioRecord;

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/4 v10, 0x0

    const v11, 0xbb80

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 3464
    invoke-virtual {v9}, Landroid/media/AudioRecord;->startRecording()V

    .line 3465
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_4

    .line 3466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstantCamera initied audio record with channels "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sample rate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bufferSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v6, 0x0

    .line 3468
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    .line 3469
    new-instance v6, Ljava/lang/Thread;

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v7, 0xa

    .line 3470
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 3471
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 3473
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 3474
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 3476
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    .line 3477
    const-string v7, "mime"

    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    const-string v7, "sample-rate"

    const v15, 0xbb80

    invoke-virtual {v6, v7, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3479
    const-string v7, "channel-count"

    invoke-virtual {v6, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3480
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundAudioBitrate()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3481
    const-string v7, "max-input-size"

    const/16 v8, 0x5000

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3483
    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    .line 3484
    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3485
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 3487
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 3488
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 3490
    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v4, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 3492
    const-string v4, "color-format"

    const v6, 0x7f000789

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3493
    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3494
    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3495
    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3497
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v7, v7, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3498
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 3499
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    if-nez v2, :cond_7

    .line 3502
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->isSdCardPath(Ljava/io/File;)Z

    move-result v0

    .line 3503
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    .line 3506
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string v4, "camera_tmp.mp4"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    .line 3507
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3508
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 3510
    :cond_5
    :goto_3
    iput-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 3512
    :goto_4
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3513
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    const/4 v6, 0x0

    .line 3514
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    .line 3517
    :cond_6
    :goto_5
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 3518
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 3519
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 3520
    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 3521
    new-instance v3, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v3}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetisSecretChat(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 3522
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/video/MP4Builder;->setAllowSyncFiles(Z)V

    .line 3525
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3544
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_13

    const/4 v6, 0x0

    .line 3548
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3549
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    .line 3552
    new-array v3, v2, [I

    .line 3553
    invoke-static {v0, v3, v6, v3, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3558
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v3, 0x3038

    const/16 v4, 0x3098

    if-ne v0, v2, :cond_9

    const/16 v0, 0xd

    .line 3561
    new-array v9, v0, [I

    fill-array-data v9, :array_0

    const/4 v13, 0x1

    .line 3570
    new-array v11, v13, [Landroid/opengl/EGLConfig;

    .line 3571
    new-array v14, v5, [I

    .line 3572
    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    .line 3576
    filled-new-array {v4, v2, v3}, [I

    move-result-object v0

    .line 3580
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v8, v11, v6

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v8, v9, v0, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3581
    aget-object v0, v11, v6

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_6

    .line 3573
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v6, 0x0

    .line 3584
    :goto_6
    new-array v0, v5, [I

    .line 3585
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v8, v4, v0, v6}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 3587
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_10

    .line 3591
    filled-new-array {v3}, [I

    move-result-object v0

    .line 3594
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v4, v0, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_f

    .line 3599
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3600
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    .line 3601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3603
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 3605
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 3607
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_c

    .line 3608
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    .line 3609
    iput-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    .line 3611
    :cond_c
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;-><init>(II)V

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    .line 3624
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mloadShader(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    .line 3625
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b30

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mloadShader(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    .line 3627
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 3628
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3629
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3630
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 3631
    new-array v0, v5, [I

    .line 3632
    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v0, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 3633
    aget v0, v0, v6

    if-nez v0, :cond_d

    .line 3634
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3635
    iput v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    goto :goto_7

    .line 3637
    :cond_d
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    .line 3638
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    .line 3639
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "preview"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    .line 3640
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "resolution"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    .line 3641
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    .line 3642
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 3643
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    .line 3644
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "texelSize"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->texelSizeHandle:I

    :cond_e
    :goto_7
    return-void

    .line 3596
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3588
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3554
    :cond_11
    iput-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3550
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3545
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3541
    :goto_8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private setBluetoothScoOn(Z)V
    .locals 3

    .line 3396
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3397
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-eqz v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3398
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 3399
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3401
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_2

    :cond_1
    if-nez p1, :cond_6

    .line 3402
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 3404
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p1, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    .line 3405
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3406
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void

    :cond_5
    if-nez p1, :cond_6

    .line 3407
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3408
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3413
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-nez p1, :cond_6

    .line 3415
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3416
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3419
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_1
    :cond_6
    :goto_2
    return-void
.end method

.method private setupVideoPlayer(Ljava/io/File;)V
    .locals 8

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)V

    .line 3084
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3122
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 3123
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 3124
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mstartProgressTimer(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 3126
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3127
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetbuttonsLayout(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 3128
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v4}, [I

    move-result-object v6

    .line 3129
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmuteImageView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v5

    new-array v6, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v4

    .line 3130
    invoke-static {v5, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v4

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    .line 3127
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    .line 3131
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3132
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3133
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 3135
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 3136
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 3137
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3138
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 3139
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 3141
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v1, :cond_1

    .line 3142
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3143
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 3144
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 3145
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 3147
    :cond_1
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3148
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3149
    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    return-void
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 3667
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 3672
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 3673
    const-string v2, " was null"

    const-string v3, "encoderOutputBuffer "

    const/4 v4, -0x2

    const/4 v5, -0x3

    const-wide/16 v6, 0x0

    const/4 v8, -0x5

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v1, v9, :cond_1

    if-eqz p1, :cond_e

    .line 3674
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_1
    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 3678
    :cond_2
    const-string v12, "csd-1"

    const-string v13, "csd-0"

    if-ne v1, v4, :cond_3

    .line 3679
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 3680
    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v2, v8, :cond_0

    .line 3681
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v1, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 3682
    const-string v2, "prepend-sps-pps-to-idr-frames"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_0

    .line 3683
    invoke-virtual {v1, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3684
    invoke-virtual {v1, v12}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3685
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_0

    .line 3690
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v14, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_1d

    .line 3694
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v4, v10, :cond_d

    .line 3695
    iget v5, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v5, 0x2

    if-nez v16, :cond_9

    .line 3696
    iget v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v12, :cond_4

    and-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_4

    .line 3697
    iget v13, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v13, v12

    iput v13, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v4, v12

    .line 3698
    iput v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3700
    :cond_4
    iget-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    if-eqz v4, :cond_7

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_7

    .line 3701
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_6

    .line 3702
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3703
    new-array v4, v5, [B

    .line 3704
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v5, v11

    move v12, v5

    :goto_1
    const/16 v13, 0x60

    if-ge v5, v13, :cond_6

    .line 3707
    aget-byte v13, v4, v5

    if-nez v13, :cond_5

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, v4, v13

    if-nez v13, :cond_5

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, v4, v13

    if-nez v13, :cond_5

    add-int/lit8 v13, v5, 0x3

    aget-byte v13, v4, v13

    if-ne v13, v10, :cond_5

    add-int/lit8 v12, v12, 0x1

    if-le v12, v10, :cond_5

    .line 3710
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v12, v5

    iput v12, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3711
    iget v12, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v5

    iput v12, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3717
    :cond_6
    :goto_2
    iput-boolean v11, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    .line 3719
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v4, :cond_8

    .line 3720
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3721
    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v12, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3722
    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v12, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3723
    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v12, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3724
    iget-wide v12, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3725
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 3727
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v13, v0, v5, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 3740
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v14, v12, v10}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v4

    cmp-long v12, v4, v6

    if-eqz v12, :cond_d

    .line 3741
    iget-boolean v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v12, :cond_d

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 3742
    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v12, v4, v5, v11}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    goto/16 :goto_5

    .line 3745
    :cond_9
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v8, :cond_d

    .line 3746
    new-array v5, v4, [B

    .line 3747
    iget v15, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v4

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3748
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3749
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3752
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v4, v10

    :goto_3
    if-ltz v4, :cond_b

    const/4 v14, 0x3

    if-le v4, v14, :cond_b

    .line 3754
    aget-byte v14, v5, v4

    if-ne v14, v10, :cond_a

    add-int/lit8 v14, v4, -0x1

    aget-byte v14, v5, v14

    if-nez v14, :cond_a

    add-int/lit8 v14, v4, -0x2

    aget-byte v14, v5, v14

    if-nez v14, :cond_a

    add-int/lit8 v14, v4, -0x3

    aget-byte v15, v5, v14

    if-nez v15, :cond_a

    .line 3755
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3756
    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 3757
    invoke-virtual {v4, v5, v11, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3758
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v14

    invoke-virtual {v15, v5, v14, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    move-object v15, v4

    .line 3766
    :goto_4
    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    const-string v14, "video/avc"

    invoke-static {v14, v5, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v4, :cond_c

    if-eqz v15, :cond_c

    .line 3768
    invoke-virtual {v5, v13, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3769
    invoke-virtual {v5, v12, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3771
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v4, v5, v11}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 3774
    :cond_d
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3775
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 3782
    :cond_e
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ne v1, v9, :cond_11

    if-eqz p1, :cond_1b

    .line 3784
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v1, :cond_f

    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-eqz v1, :cond_1b

    :cond_f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v1, :cond_10

    goto/16 :goto_a

    :cond_10
    const/4 v4, -0x3

    :goto_7
    const/4 v5, -0x2

    goto :goto_8

    :cond_11
    const/4 v4, -0x3

    if-ne v1, v4, :cond_12

    goto :goto_7

    :cond_12
    const/4 v5, -0x2

    if-ne v1, v5, :cond_14

    .line 3789
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 3790
    iget v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    if-ne v10, v8, :cond_13

    .line 3791
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v12, 0x1

    invoke-virtual {v10, v1, v12}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_6

    :cond_13
    :goto_8
    const/4 v12, 0x1

    goto :goto_6

    :cond_14
    const/4 v12, 0x1

    if-ltz v1, :cond_e

    .line 3794
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 3798
    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_15

    .line 3799
    iput v11, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3801
    :cond_15
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v14, :cond_19

    .line 3802
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v14, v14, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v14, :cond_17

    .line 3803
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3804
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3805
    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3806
    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3807
    iget-wide v14, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v14, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3808
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 3810
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v15, v0, v10, v13}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3822
    :cond_16
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v10, :cond_1a

    .line 3823
    invoke-virtual {v10, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_9

    .line 3826
    :cond_17
    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v14, v15, v10, v13, v11}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v13

    cmp-long v10, v13, v6

    if-eqz v10, :cond_18

    .line 3827
    iget-boolean v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v10, :cond_18

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetallowSendingWhileRecording(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 3828
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v10, v13, v14, v11}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    .line 3830
    :cond_18
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v10, :cond_1a

    .line 3831
    invoke-virtual {v10, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_9

    .line 3834
    :cond_19
    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v10, :cond_1a

    .line 3835
    invoke-virtual {v10, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 3837
    :cond_1a
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    :cond_1b
    :goto_a
    return-void

    .line 3796
    :cond_1c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3692
    :cond_1d
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected finalize()V
    .locals 4

    .line 3847
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3848
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 3849
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 3851
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_1

    .line 3852
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    .line 3853
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    .line 3856
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_2

    .line 3857
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3858
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 3859
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 3860
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 3861
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 3862
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 3863
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3866
    :cond_2
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3867
    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    .line 2648
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2649
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    .line 2650
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2652
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2654
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 2656
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_3

    .line 2658
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 2659
    const-string p1, "InstantCamera fix timestamp enabled"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2666
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    .line 2668
    :cond_2
    :goto_0
    iput-wide p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevTimestamp:J

    .line 2669
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz p1, :cond_3

    .line 2670
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    long-to-int p3, p3

    const/4 p4, 0x2

    invoke-virtual {v0, p4, v1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    .line 2652
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    .line 2635
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz v0, :cond_0

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 2641
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz v0, :cond_0

    .line 2642
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 2676
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2677
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 2678
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x1

    .line 2679
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 2680
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2681
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2682
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2684
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 2685
    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 2686
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 2681
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 5

    .line 2573
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2574
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v3, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2578
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    .line 2579
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoResolution()I

    move-result v0

    .line 2580
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->getRoundVideoBitrate()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    .line 2581
    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2585
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 2586
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    .line 2587
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    .line 2588
    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    .line 2589
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 2591
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    .line 2592
    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_1

    .line 2593
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 2595
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 2596
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 2597
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2598
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2599
    :catch_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 2601
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2606
    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2608
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz p1, :cond_3

    .line 2609
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "IVR_FileWriteQueue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2610
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2613
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2614
    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    .line 2615
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_4

    .line 2616
    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 2617
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 2619
    :cond_4
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "keyframes_thumb_queue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2620
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz p1, :cond_5

    .line 2621
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    .line 2606
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 4

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2629
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
