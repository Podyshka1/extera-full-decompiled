.class public Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraGLThread"
.end annotation


# instance fields
.field private final DO_FLIP:I

.field private final DO_REINIT_MESSAGE:I

.field private final DO_RENDER_MESSAGE:I

.field private final DO_SETORIENTATION_MESSAGE:I

.field private final DO_SETSESSION_MESSAGE:I

.field private final DO_SHUTDOWN_MESSAGE:I

.field private cameraId:Ljava/lang/Integer;

.field private final cameraSurface:[Landroid/graphics/SurfaceTexture;

.field private currentSession:Ljava/lang/Object;

.field private drawProgram:I

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initied:Z

.field private positionHandle:I

.field private recording:Z

.field private volatile running:Z

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I


# direct methods
.method public static synthetic $r8$lambda$0vAY7JyFyH1Yjzxl2UzhXYKpmtw(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ABeM1clJbknPN-p7GE3ERHgcnQ(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$QCTKTxafomWp2vNd-L6ilZLtOJY(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wDjNGoNkInUFcLsuF5CoYD8rNR0(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$initGL$0(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurfaceHeight(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsurfaceWidth(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScale(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1706
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 1707
    const-string p1, "CameraGLThread"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 1682
    new-array v0, p1, [Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 1684
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_RENDER_MESSAGE:I

    const/4 v1, 0x1

    .line 1685
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_SHUTDOWN_MESSAGE:I

    .line 1686
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_REINIT_MESSAGE:I

    const/4 p1, 0x3

    .line 1687
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_SETSESSION_MESSAGE:I

    const/4 p1, 0x4

    .line 1688
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_FLIP:I

    const/4 p1, 0x5

    .line 1689
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_SETORIENTATION_MESSAGE:I

    .line 1699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 1704
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->running:Z

    .line 1708
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1710
    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    .line 1711
    iput p4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return-void
.end method

.method private initGL()Z
    .locals 11

    .line 1743
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1744
    const-string v0, "InstantCamera start init gl"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1746
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 1748
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1749
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1750
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1753
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_2
    const/4 v1, 0x2

    .line 1757
    new-array v3, v1, [I

    .line 1758
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1759
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1762
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_4
    const/4 v0, 0x1

    .line 1766
    new-array v8, v0, [I

    .line 1767
    new-array v6, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0xf

    .line 1768
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 1779
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1780
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1783
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1785
    :cond_6
    aget v3, v8, v2

    if-lez v3, :cond_18

    .line 1786
    aget-object v3, v6, v2

    const/16 v4, 0x3098

    const/16 v5, 0x3038

    .line 1795
    filled-new-array {v4, v1, v5}, [I

    move-result-object v4

    .line 1796
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v3, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v4, :cond_8

    .line 1798
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1801
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1805
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v4}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1806
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v7, 0x0

    invoke-interface {v4, v5, v3, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_15

    .line 1812
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_9

    goto/16 :goto_2

    .line 1819
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v3, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1820
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1823
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1827
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    .line 1829
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 1830
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v6

    div-float/2addr v4, v6

    div-float/2addr v4, v5

    const/16 v5, 0xc

    .line 1831
    new-array v5, v5, [F

    fill-array-data v5, :array_1

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v8, v6, v3

    sub-float v9, v6, v4

    add-float/2addr v3, v6

    add-float/2addr v4, v6

    const/16 v6, 0x8

    .line 1837
    new-array v6, v6, [F

    aput v8, v6, v2

    aput v9, v6, v0

    aput v3, v6, v1

    const/4 v10, 0x3

    aput v9, v6, v10

    const/4 v9, 0x4

    aput v8, v6, v9

    const/4 v8, 0x5

    aput v4, v6, v8

    const/4 v8, 0x6

    aput v3, v6, v8

    const/4 v3, 0x7

    aput v4, v6, v3

    .line 1844
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    if-nez v3, :cond_c

    .line 1845
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {v4, v3, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView-IA;)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    .line 1848
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V

    .line 1849
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1851
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputtextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V

    .line 1852
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1854
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1856
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v4, 0x8b31

    const-string v5, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mloadShader(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v3

    .line 1857
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v5, 0x8b30

    const-string v6, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mloadShader(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_13

    if-eqz v4, :cond_13

    .line 1859
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    .line 1860
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1861
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1862
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1863
    new-array v3, v0, [I

    .line 1864
    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const v5, 0x8b82

    invoke-static {v4, v5, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1865
    aget v3, v3, v2

    if-nez v3, :cond_e

    .line 1866
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_d

    .line 1867
    const-string v3, "InstantCamera failed link shader"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1869
    :cond_d
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1870
    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    goto :goto_0

    .line 1872
    :cond_e
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v4, "aPosition"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    .line 1873
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v4, "aTextureCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    .line 1874
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v4, "uMVPMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    .line 1875
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v4, "uSTMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    .line 1885
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1887
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_1
    if-ge v2, v1, :cond_11

    .line 1889
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    aget v3, v3, v2

    const v4, 0x8d65

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v5, 0x2601

    .line 1890
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 1891
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v5, 0x812f

    .line 1892
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 1893
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1895
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v5

    aget v5, v5, v2

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v4, v3, v2

    .line 1897
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)V

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1901
    sget v3, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    if-ne v3, v1, :cond_f

    if-eqz v2, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetbothCameras(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1902
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v4, v4, v2

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mcreateCamera(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1906
    :cond_11
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_12

    .line 1907
    const-string v1, "InstantCamera gl initied"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_12
    return v0

    .line 1878
    :cond_13
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_14

    .line 1879
    const-string v0, "InstantCamera failed creating shader"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1881
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1813
    :cond_15
    :goto_2
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_16

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1816
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1808
    :cond_17
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1788
    :cond_18
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_19

    .line 1789
    const-string v0, "InstantCamera eglConfig not initialized"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1791
    :cond_19
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2154
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    return-void
.end method

.method private synthetic lambda$initGL$0(ILandroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1898
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraTextureAvailable(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 1899
    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    return-void
.end method

.method private synthetic lambda$onDraw$1()V
    .locals 3

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

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

.method private synthetic lambda$onDraw$2()V
    .locals 2

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2090
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)V

    .line 2094
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureView(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputfirstFrameThumb(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onDraw(Ljava/lang/Integer;ZZ)V
    .locals 9

    .line 1988
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1992
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 1996
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1997
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1998
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_13

    .line 1999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglMakeCurrent failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 2006
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2008
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_0
    const/4 v1, 0x1

    if-eqz p3, :cond_5

    .line 2014
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 2016
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 2022
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-nez v2, :cond_e

    .line 2023
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    if-nez v2, :cond_6

    .line 2024
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView-IA;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    .line 2026
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetstarted(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2027
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraReady(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2028
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraReady(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 2029
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    move v2, v0

    goto :goto_2

    :cond_8
    move v2, v1

    .line 2034
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraFile(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V

    .line 2035
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    .line 2037
    sget v3, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 2038
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v4, :cond_9

    .line 2039
    check-cast v3, Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentOrientation()I

    move-result v3

    goto :goto_3

    .line 2040
    :cond_9
    instance-of v4, v3, Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v4, :cond_b

    .line 2041
    check-cast v3, Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Camera2Session;->getCurrentOrientation()I

    move-result v3

    goto :goto_3

    .line 2044
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2045
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/exteragram/messenger/camera/CameraXSession;->getDisplayOrientation()I

    move-result v3

    goto :goto_3

    :cond_b
    move v3, v0

    :goto_3
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_c

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_d

    .line 2049
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    .line 2050
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleX(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 2051
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleY(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 2053
    :cond_d
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    .line 2054
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mupdateFlash(Lorg/telegram/ui/Components/InstantCameraView;)V

    goto :goto_4

    :cond_e
    move v2, v0

    .line 2057
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    if-nez v3, :cond_f

    if-nez p2, :cond_10

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    if-ne p2, v1, :cond_12

    if-eqz p3, :cond_12

    .line 2058
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    aget-object p3, p3, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetbothCameras(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {p2, p3, p1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V

    .line 2061
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 2063
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    .line 2064
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2065
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    aget p1, p1, p2

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2067
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvertexBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2068
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2070
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v7, 0x8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2071
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2073
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p3

    invoke-static {p1, v1, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2074
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p3

    invoke-static {p1, v1, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 2076
    invoke-static {p1, v0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2078
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2079
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2080
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2081
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2083
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    if-eqz v2, :cond_13

    .line 2086
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_13
    :goto_6
    return-void
.end method

.method private updateScale()V
    .locals 4

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    .line 1718
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    .line 1723
    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleX(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleY(Lorg/telegram/ui/Components/InstantCameraView;F)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 1732
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleX(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 1733
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleY(Lorg/telegram/ui/Components/InstantCameraView;F)V

    goto :goto_0

    .line 1735
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleX(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputscaleY(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 1738
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera camera scaleX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .line 1921
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 1923
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1924
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1925
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aput-object v1, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1929
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraTextureAvailable(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    .line 1931
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1932
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1934
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v2

    if-eq v0, v3, :cond_4

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v2

    .line 1938
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    if-eq v0, v3, :cond_5

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1940
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v4

    .line 1943
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_6

    .line 1944
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1946
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1948
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_7

    .line 1949
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1950
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1952
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_8

    .line 1953
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1954
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_8
    return-void
.end method

.method public flipSurfaces()V
    .locals 2

    .line 1980
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1982
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    const/4 v0, 0x1

    .line 1983
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2107
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    const/4 v6, 0x0

    if-eq v2, v4, :cond_a

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/16 v13, 0x20

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v2, v3, :cond_7

    if-eq v2, v12, :cond_2

    if-eq v2, v11, :cond_1

    if-eq v2, v10, :cond_0

    goto/16 :goto_1

    .line 2216
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraXSession(Lorg/telegram/ui/Components/InstantCameraView;)Lcom/exteragram/messenger/camera/CameraXSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession;->getDisplayOrientation()I

    move-result v0

    .line 2217
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v2, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_e

    .line 2219
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    int-to-float v5, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void

    .line 2197
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputsurfaceIndex(Lorg/telegram/ui/Components/InstantCameraView;I)V

    .line 2199
    invoke-direct {v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    .line 2201
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    div-float v0, v15, v0

    div-float/2addr v0, v14

    .line 2202
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v2

    div-float/2addr v15, v2

    div-float/2addr v15, v14

    sub-float v2, v16, v0

    sub-float v6, v16, v15

    add-float v0, v0, v16

    add-float v15, v15, v16

    .line 2204
    new-array v9, v9, [F

    aput v2, v9, v5

    aput v6, v9, v4

    aput v0, v9, v3

    aput v6, v9, v12

    aput v2, v9, v11

    aput v15, v9, v10

    aput v0, v9, v8

    aput v15, v9, v7

    .line 2211
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputtextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V

    .line 2212
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 2174
    :cond_2
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_3

    .line 2175
    const-string v2, "InstantCamera set gl renderer session"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2177
    :cond_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2178
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    if-ne v2, v0, :cond_6

    .line 2180
    instance-of v0, v2, Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_4

    .line 2181
    check-cast v2, Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    goto :goto_0

    .line 2182
    :cond_4
    instance-of v0, v2, Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_5

    .line 2183
    check-cast v2, Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Camera2Session;->getWorldAngle()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v5

    .line 2187
    :goto_0
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v2, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v0, :cond_e

    .line 2189
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmMVPMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    int-to-float v5, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void

    .line 2192
    :cond_6
    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    return-void

    .line 2126
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move/from16 v17, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move/from16 v18, v7

    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2127
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCamera eglMakeCurrent failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 2133
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, v5

    if-eqz v0, :cond_9

    .line 2134
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmoldSTMatrix(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 2135
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 2136
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 2137
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetoldCameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v2

    aget v2, v2, v5

    aput v2, v0, v5

    .line 2138
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraTextureAlpha(Lorg/telegram/ui/Components/InstantCameraView;F)V

    .line 2139
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v5, v0, v5

    .line 2140
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputoldTextureTextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V

    .line 2141
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetpreviewSize(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputoldTexturePreviewSize(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)V

    .line 2143
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 2144
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputcameraReady(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 2146
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2147
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v5

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    .line 2148
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 2149
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 2150
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 2151
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2153
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraTexture(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v2, v0, v5

    .line 2154
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, v5

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 2155
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v5

    invoke-static {v0, v5, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$mcreateCamera(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    .line 2157
    invoke-direct {v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    .line 2159
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleX(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    div-float v0, v15, v0

    div-float/2addr v0, v14

    .line 2160
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetscaleY(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v2

    div-float/2addr v15, v2

    div-float/2addr v15, v14

    sub-float v2, v16, v0

    sub-float v3, v16, v15

    add-float v0, v0, v16

    add-float v15, v15, v16

    .line 2162
    new-array v6, v9, [F

    aput v2, v6, v5

    aput v3, v6, v4

    aput v0, v6, v17

    aput v3, v6, v12

    aput v2, v6, v11

    aput v15, v6, v10

    aput v0, v6, v8

    aput v15, v6, v18

    .line 2169
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputtextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)V

    .line 2170
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureBuffer(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 2114
    :cond_a
    monitor-enter p0

    .line 2115
    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    .line 2116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2117
    iget-boolean v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    iget v2, v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_d

    :cond_b
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2118
    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEncoder(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v0, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    if-eqz v4, :cond_c

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    :cond_c
    invoke-virtual {v2, v3, v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    .line 2120
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2122
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_e
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 2116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    move/from16 v17, v3

    .line 2111
    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, v0, Landroid/os/Message;->arg2:I

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_10

    move v3, v4

    goto :goto_2

    :cond_10
    move v3, v5

    :goto_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    goto :goto_3

    :cond_11
    move v4, v5

    :goto_3
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->onDraw(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public reinitForNewCamera()V
    .locals 2

    .line 1914
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1916
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public requestRender(ZZ)V
    .locals 3

    .line 2243
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2245
    monitor-enter p0

    .line 2246
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->running:Z

    if-nez v1, :cond_0

    .line 2247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2249
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    add-int/2addr p1, p2

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 2250
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public run()V
    .locals 1

    .line 2101
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    .line 2102
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 2

    .line 1966
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1968
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    .line 1959
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1961
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public setOrientation()V
    .locals 2

    .line 1973
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 1975
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public shutdown(IZIIIJ)V
    .locals 11

    .line 2226
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2228
    monitor-enter p0

    const/4 v1, 0x0

    .line 2229
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->running:Z

    .line 2230
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    .line 2232
    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2236
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    const-wide/16 v9, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIIJJ)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 2238
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method
