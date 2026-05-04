.class public Lorg/telegram/messenger/voip/VideoCapturerDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAPTURE_FPS:I = 0x1e

.field private static final CAPTURE_HEIGHT:I = 0x2d0

.field private static final CAPTURE_WIDTH:I = 0x500

.field public static eglBase:Lorg/webrtc/EglBase;

.field private static instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

.field public static mediaProjectionPermissionResultData:Landroid/content/Intent;


# instance fields
.field private currentHeight:I

.field private currentWidth:I

.field private handler:Landroid/os/Handler;

.field private nativeCapturerObserver:Lorg/webrtc/CapturerObserver;

.field private nativePtr:J

.field private thread:Landroid/os/HandlerThread;

.field private videoCapturer:Lorg/webrtc/VideoCapturer;

.field private videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method public static synthetic $r8$lambda$0-nZ5DnAGgcg8xOXGf7d4Y4uvo0(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$onDestroy$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$09gzeW8Z9cyIDKpFJlFAr89cgKs(Lorg/telegram/messenger/voip/VideoCapturerDevice;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$init$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbWAc2gyuD_R4EsJCEzP90lW2hU(Lorg/telegram/messenger/voip/VideoCapturerDevice;Landroid/graphics/Point;)V
    .locals 2

    .line 76
    iget-object p0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz p0, :cond_0

    .line 77
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/16 v1, 0x1e

    invoke-interface {p0, v0, p1, v1}, Lorg/webrtc/VideoCapturer;->changeCaptureFormat(III)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$KvX0CzzPhrWs9moc8IvyL-72hZ0(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$onDestroy$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$LDj9i6m80B8XJKE0GRVAGysHTUI(Lorg/telegram/messenger/voip/VideoCapturerDevice;JLandroid/graphics/Point;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$init$2(JLandroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P_vChgjiUGMwc_tPmrz2_2hsCco(Lorg/telegram/messenger/voip/VideoCapturerDevice;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$init$5(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QSUl5blf7nFUsgsBO-Fly5CLeiM(Lorg/telegram/messenger/voip/VideoCapturerDevice;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5ltPbp3b9XKgV3WgCgtCtFL9TY(Lorg/telegram/messenger/voip/VideoCapturerDevice;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$onStateChanged$7(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z8F8pbcejHavpeVfqDHRJMjDUGw(Lorg/telegram/messenger/voip/VideoCapturerDevice;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$onStateChanged$6(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Pq54ZF8A3kTI4oAKi3w5cvcJUk(Lorg/telegram/messenger/voip/VideoCapturerDevice;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->lambda$init$3(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Lorg/telegram/messenger/voip/VideoCapturerDevice;

    sput-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lorg/webrtc/Logging$Severity;->LS_VERBOSE:Lorg/webrtc/Logging$Severity;

    invoke-static {v0}, Lorg/webrtc/Logging;->enableLogToDebugOutput(Lorg/webrtc/Logging$Severity;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCapturerDevice"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkScreenCapturerSize()V
    .locals 5

    .line 67
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getScreenCaptureSize()Landroid/graphics/Point;

    move-result-object v0

    .line 71
    sget-object v2, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    aget-object v1, v2, v1

    iget v2, v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentWidth:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentHeight:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    :goto_1
    iput v3, v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentWidth:I

    .line 73
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentHeight:I

    .line 75
    iget-object v2, v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;Landroid/graphics/Point;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getEglBase()Lorg/webrtc/EglBase;
    .locals 2

    .line 364
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 365
    sget-object v1, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v0, v1}, Lorg/webrtc/EglBase$-CC;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    .line 367
    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    return-object v0
.end method

.method public static getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 2

    .line 250
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/ScreenCapturerAndroid;

    invoke-virtual {v0}, Lorg/webrtc/ScreenCapturerAndroid;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenCaptureSize()Landroid/graphics/Point;
    .locals 10

    .line 84
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 90
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_0

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v2

    div-float v2, v0, v2

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x64

    const/4 v4, -0x1

    if-gt v0, v3, :cond_3

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v5, v3

    int-to-float v6, v5

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    .line 100
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v3, v6, :cond_1

    goto :goto_2

    :cond_1
    move v9, v5

    move v5, v0

    move v0, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    move v5, v0

    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v4, :cond_6

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_6

    .line 111
    :cond_4
    iget v6, v1, Landroid/graphics/Point;->x:I

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_5

    iget v8, v1, Landroid/graphics/Point;->y:I

    if-gt v8, v7, :cond_5

    rem-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_5

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_6

    :cond_5
    sub-int/2addr v6, v0

    .line 112
    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 113
    iget v7, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    iput v7, v1, Landroid/graphics/Point;->y:I

    const/16 v8, 0x320

    if-ge v6, v8, :cond_4

    if-ge v7, v8, :cond_4

    move v0, v4

    :cond_6
    if-eq v0, v4, :cond_8

    cmpl-float v0, v2, v3

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    return-object v1

    .line 121
    :cond_8
    :goto_3
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x44728000    # 970.0f

    div-float/2addr v0, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 122
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    mul-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 123
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v0, v0, 0x4

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private getSharedEGLContext()Lorg/webrtc/EglBase$Context;
    .locals 2

    .line 357
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    sget-object v0, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v1, v0}, Lorg/webrtc/EglBase$-CC;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    .line 360
    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private init(JLjava/lang/String;)V
    .locals 1

    .line 129
    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;JLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$init$2(JLandroid/graphics/Point;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeGetJavaVideoCapturerObserver(J)Lorg/webrtc/CapturerObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeCapturerObserver:Lorg/webrtc/CapturerObserver;

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeCapturerObserver:Lorg/webrtc/CapturerObserver;

    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/VideoCapturer;->initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCapturerDevice init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "): videoCapturer.startCapture SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    const/16 v0, 0x1e

    invoke-interface {p1, p2, p3, v0}, Lorg/webrtc/VideoCapturer;->startCapture(III)V

    .line 160
    sget-object p1, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->Instance:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    if-eqz p1, :cond_1

    .line 162
    iget-object p2, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast p2, Lorg/webrtc/ScreenCapturerAndroid;

    invoke-virtual {p2}, Lorg/webrtc/ScreenCapturerAndroid;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->initDeviceAudioRecord(Landroid/media/projection/MediaProjection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$init$3(J)V
    .locals 4

    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeGetJavaVideoCapturerObserver(J)Lorg/webrtc/CapturerObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeCapturerObserver:Lorg/webrtc/CapturerObserver;

    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativeCapturerObserver:Lorg/webrtc/CapturerObserver;

    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/VideoCapturer;->initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCapturerDevice init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "): videoCapturer.startCapture CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    const/16 p2, 0x2d0

    const/16 v0, 0x1e

    const/16 v1, 0x500

    invoke-interface {p1, v1, p2, v0}, Lorg/webrtc/VideoCapturer;->startCapture(III)V

    return-void
.end method

.method private synthetic lambda$init$4(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$3;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V

    invoke-interface {v0, v1, p1}, Lorg/webrtc/CameraVideoCapturer;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$5(JLjava/lang/String;)V
    .locals 6

    .line 130
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 133
    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    .line 134
    const-string v0, "screen"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object p3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-nez p3, :cond_5

    .line 136
    new-instance p3, Lorg/webrtc/ScreenCapturerAndroid;

    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$1;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V

    invoke-direct {p3, v0, v1}, Lorg/webrtc/ScreenCapturerAndroid;-><init>(Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)V

    iput-object p3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    .line 148
    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getScreenCaptureSize()Landroid/graphics/Point;

    move-result-object p3

    .line 149
    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentWidth:I

    .line 150
    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->currentHeight:I

    .line 151
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    invoke-interface {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    const-string v1, "ScreenCapturerThread"

    invoke-static {v1, v0}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 152
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;JLandroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 167
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/webrtc/Camera2Enumerator;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/webrtc/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/webrtc/Camera1Enumerator;

    invoke-direct {v0}, Lorg/webrtc/Camera1Enumerator;-><init>()V

    .line 169
    :goto_0
    invoke-interface {v0}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 170
    :goto_1
    array-length v3, v1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    .line 171
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Lorg/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v3

    .line 172
    const-string v5, "front"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_6

    :cond_5
    :goto_3
    return-void

    .line 180
    :cond_6
    aget-object p3, v1, v2

    .line 181
    iget-object v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-nez v1, :cond_7

    .line 182
    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$2;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V

    invoke-interface {v0, p3, v1}, Lorg/webrtc/CameraEnumerator;->createCapturer(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/CameraVideoCapturer;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    .line 217
    sget-object p3, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    invoke-interface {p3}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object p3

    const-string v0, "VideoCapturerThread"

    invoke-static {v0, p3}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 218
    iget-object p3, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;J)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 228
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCapturerDevice init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "): videoCapturer.switchCamera CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance p2, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 2

    .line 56
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    sget-object v1, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v0, v1}, Lorg/webrtc/EglBase$-CC;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    .line 59
    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    aput-object p0, v0, p1

    .line 60
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CallThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->thread:Landroid/os/HandlerThread;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 62
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onDestroy$8()V
    .locals 2

    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v0, v0, Lorg/webrtc/ScreenCapturerAndroid;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->Instance:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->stopDeviceAudioRecord()V

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 334
    const-string v0, "VideoCapturerDevice onDestroy: videoCapturer.stopCapture"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturer;->stopCapture()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    invoke-interface {v0}, Lorg/webrtc/VideoCapturer;->dispose()V

    .line 341
    iput-object v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->dispose()V

    .line 345
    iput-object v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturerSurfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    :cond_2
    return-void
.end method

.method private synthetic lambda$onDestroy$9()V
    .locals 3

    const/4 v0, 0x0

    .line 320
    :goto_0
    sget-object v1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->instance:[Lorg/telegram/messenger/voip/VideoCapturerDevice;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 321
    aget-object v2, v1, v0

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    .line 322
    aput-object v2, v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 351
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onStateChanged$6(IJ)V
    .locals 3

    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 294
    const-string v1, ", "

    const-string v2, "VideoCapturerDevice onStateChanged("

    if-ne p1, v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): videoCapturer.startCapture"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    const/16 p2, 0x2d0

    const/16 p3, 0x1e

    const/16 v0, 0x500

    invoke-interface {p1, v0, p2, p3}, Lorg/webrtc/VideoCapturer;->startCapture(III)V

    return-void

    .line 299
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): videoCapturer.stopCapture"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->videoCapturer:Lorg/webrtc/VideoCapturer;

    invoke-interface {p1}, Lorg/webrtc/VideoCapturer;->stopCapture()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 302
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private synthetic lambda$onStateChanged$7(JI)V
    .locals 2

    .line 287
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native nativeGetJavaVideoCapturerObserver(J)Lorg/webrtc/CapturerObserver;
.end method

.method private onAspectRatioRequested(F)V
    .locals 0

    return-void
.end method

.method private onDestroy()V
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCapturerDevice onDestroy ptr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 314
    iput-wide v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->nativePtr:J

    .line 315
    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStateChanged(JI)V
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCapturerDevice onStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 286
    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;JI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
