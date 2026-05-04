.class public Lorg/telegram/ui/IntroActivity$EGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLThread"
.end annotation


# instance fields
.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initied:Z

.field private lastDrawFrame:J

.field private maxRefreshRate:F

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

.field private final textures:[I

.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method public static synthetic $r8$lambda$7LXCaMmSl-_zxBSp3pQPev_oFIc(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 p0, 0x43160000    # 150.0f

    .line 666
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    const/high16 v0, 0x43480000    # 200.0f

    .line 667
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 668
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 669
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 670
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 671
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 672
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v1, v3, v5, p0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$Cv6jEUf0MlHe2pQ5maTGbBPCPfY(Lorg/telegram/ui/IntroActivity$EGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->lambda$shutdown$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$foVV6ESqdPYksTpmJ2qe1lzbeC4(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    .line 800
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 801
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$color;->ic_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x43160000    # 150.0f

    .line 802
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 803
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 804
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 805
    invoke-virtual {v2, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method static bridge synthetic -$$Nest$fgetdrawRunnable(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetegl10(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteglContext(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteglDisplay(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteglSurface(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitied(Lorg/telegram/ui/IntroActivity$EGLThread;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDrawFrame(Lorg/telegram/ui/IntroActivity$EGLThread;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->lastDrawFrame:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmaxRefreshRate(Lorg/telegram/ui/IntroActivity$EGLThread;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->maxRefreshRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettelegramMaskProvider(Lorg/telegram/ui/IntroActivity$EGLThread;)Lorg/telegram/messenger/GenericProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastDrawFrame(Lorg/telegram/ui/IntroActivity$EGLThread;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->lastDrawFrame:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxRefreshRate(Lorg/telegram/ui/IntroActivity$EGLThread;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->maxRefreshRate:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadTexture(Lorg/telegram/ui/IntroActivity$EGLThread;IIIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadTexture(Lorg/telegram/ui/IntroActivity$EGLThread;Lorg/telegram/messenger/GenericProvider;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/IntroActivity;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    .line 677
    const-string p1, "EGLThread"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x18

    .line 660
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    .line 665
    new-instance p1, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    .line 846
    new-instance p1, Lorg/telegram/ui/IntroActivity$EGLThread$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$1;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 678
    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private initGL()Z
    .locals 35

    move-object/from16 v0, p0

    .line 682
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 684
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 685
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 686
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 689
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    :cond_1
    const/4 v2, 0x2

    .line 693
    new-array v4, v2, [I

    .line 694
    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 695
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 698
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    :cond_3
    const/4 v1, 0x1

    .line 702
    new-array v9, v1, [I

    .line 703
    new-array v7, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 705
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v4

    const/16 v5, 0x3025

    const/16 v6, 0x3021

    const/16 v8, 0x3022

    const/16 v15, 0x13

    const/16 v16, 0x3023

    const/16 v10, 0x3038

    const/16 v17, 0x3024

    const/16 v18, 0xe

    const/16 v19, 0xd

    const/16 v20, 0xc

    const/16 v21, 0xa

    const/16 v22, 0x9

    const/4 v12, 0x3

    const/16 v23, 0x7

    const/16 v13, 0xb

    const/16 v24, 0x6

    const/4 v14, 0x4

    const/16 v25, 0x5

    const/16 v11, 0x8

    if-eqz v4, :cond_4

    .line 706
    new-array v4, v13, [I

    aput v17, v4, v3

    aput v11, v4, v1

    aput v16, v4, v2

    aput v11, v4, v12

    aput v8, v4, v14

    aput v11, v4, v25

    aput v6, v4, v24

    aput v11, v4, v23

    aput v5, v4, v11

    const/16 v5, 0x18

    aput v5, v4, v22

    aput v10, v4, v21

    :goto_0
    move-object v6, v4

    goto :goto_1

    .line 715
    :cond_4
    new-array v4, v15, [I

    const/16 v26, 0x3040

    aput v26, v4, v3

    aput v14, v4, v1

    aput v17, v4, v2

    aput v11, v4, v12

    aput v16, v4, v14

    aput v11, v4, v25

    aput v8, v4, v24

    aput v11, v4, v23

    aput v6, v4, v11

    aput v11, v4, v22

    aput v5, v4, v21

    const/16 v5, 0x18

    aput v5, v4, v13

    const/16 v5, 0x3026

    aput v5, v4, v20

    aput v3, v4, v19

    const/16 v5, 0x3032

    aput v5, v4, v18

    const/16 v5, 0xf

    aput v1, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3031

    aput v6, v4, v5

    const/16 v5, 0x11

    aput v2, v4, v5

    const/16 v5, 0x12

    aput v10, v4, v5

    goto :goto_0

    .line 728
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 729
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 732
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 734
    :cond_6
    aget v4, v9, v3

    if-lez v4, :cond_f

    .line 735
    aget-object v4, v7, v3

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3098

    .line 744
    filled-new-array {v5, v2, v10}, [I

    move-result-object v5

    .line 745
    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v4, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v4, :cond_8

    .line 747
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateContext failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 750
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 754
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v4}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 755
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_c

    .line 761
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v4, v5, :cond_9

    goto/16 :goto_2

    .line 768
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v4, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 769
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_a

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 772
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    :cond_b
    const/16 v4, 0x17

    .line 776
    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    invoke-static {v4, v5, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 777
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_arrow_shadow:I

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 778
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_arrow:I

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 779
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_body:I

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 780
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_spiral:I

    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 781
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_bubble_dot:I

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 782
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_bubble:I

    move/from16 v5, v25

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 783
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_cam_lens:I

    move/from16 v5, v24

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 784
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_cam:I

    move/from16 v5, v23

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 785
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_pencil:I

    invoke-direct {v0, v4, v11}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 786
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_pin:I

    move/from16 v5, v22

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 787
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_smile_eye:I

    move/from16 v5, v21

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 788
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_smile:I

    invoke-direct {v0, v4, v13}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 789
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_videocam:I

    move/from16 v5, v20

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 790
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_knot_down:I

    move/from16 v5, v19

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 791
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_knot_up:I

    move/from16 v5, v18

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 792
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_infinity_white:I

    const/16 v5, 0xf

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 793
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_infinity:I

    const/16 v5, 0x10

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 794
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_mask:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v0, v4, v6, v5, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    .line 795
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_star:I

    const/16 v5, 0x12

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 796
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_private_door:I

    invoke-direct {v0, v4, v15}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 797
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_private_screw:I

    const/16 v5, 0x14

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 798
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_etg_arrow:I

    const/16 v5, 0x15

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 799
    new-instance v4, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda2;-><init>()V

    const/16 v5, 0x16

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;I)V

    .line 808
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    const/16 v5, 0x17

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;I)V

    .line 810
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->updateTelegramTextures()V

    .line 811
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->updatePowerfulTextures()V

    .line 812
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v5, v4, v15

    const/16 v6, 0x14

    aget v4, v4, v6

    invoke-static {v5, v4}, Lorg/telegram/messenger/Intro;->setPrivateTextures(II)V

    .line 813
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v18, 0xe

    aget v5, v4, v18

    const/16 v19, 0xd

    aget v4, v4, v19

    invoke-static {v5, v4}, Lorg/telegram/messenger/Intro;->setFreeTextures(II)V

    .line 814
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v2, v4, v2

    aget v5, v4, v12

    aget v6, v4, v1

    aget v3, v4, v3

    invoke-static {v2, v5, v6, v3}, Lorg/telegram/messenger/Intro;->setFastTextures(IIII)V

    .line 815
    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v26, v2, v14

    const/16 v25, 0x5

    aget v27, v2, v25

    const/16 v24, 0x6

    aget v28, v2, v24

    const/16 v23, 0x7

    aget v29, v2, v23

    aget v30, v2, v11

    const/16 v22, 0x9

    aget v31, v2, v22

    const/16 v21, 0xa

    aget v32, v2, v21

    aget v33, v2, v13

    const/16 v20, 0xc

    aget v34, v2, v20

    invoke-static/range {v26 .. v34}, Lorg/telegram/messenger/Intro;->setIcTextures(IIIIIIIII)V

    .line 816
    invoke-static {}, Lorg/telegram/messenger/Intro;->onSurfaceCreated()V

    .line 817
    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/IntroActivity;->-$$Nest$fputcurrentDate(Lorg/telegram/ui/IntroActivity;J)V

    return v1

    .line 762
    :cond_c
    :goto_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_d

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWindowSurface failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 765
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 757
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 737
    :cond_f
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_10

    .line 738
    const-string v1, "eglConfig not initialized"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 740
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3
.end method

.method private synthetic lambda$shutdown$2()V
    .locals 1

    .line 942
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 943
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private loadTexture(II)V
    .locals 1

    const/4 v0, 0x0

    .line 908
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    return-void
.end method

.method private loadTexture(IIIZ)V
    .locals 5

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 913
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    .line 915
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v0, 0x1

    invoke-static {v0, p4, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 916
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    invoke-static {v0, p4, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 919
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 920
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget p2, p4, p2

    const/16 p4, 0xde1

    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const/16 v0, 0x2601

    .line 921
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 922
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2802

    const v0, 0x812f

    .line 923
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 924
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 928
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 929
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 930
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p3, 0x0

    .line 931
    invoke-virtual {v1, p1, p3, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 932
    invoke-static {p4, p2, v0, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 935
    :cond_1
    invoke-static {p4, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method

.method private loadTexture(Lorg/telegram/messenger/GenericProvider;I)V
    .locals 1

    const/4 v0, 0x0

    .line 889
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V

    return-void
.end method

.method private loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 894
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v0, 0x1

    invoke-static {v0, p3, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 895
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    invoke-static {v0, p3, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_0
    const/4 p3, 0x0

    .line 897
    invoke-interface {p1, p3}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 898
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget p2, p3, p2

    const/16 p3, 0xde1

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const/16 v0, 0x2601

    .line 899
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 900
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2802

    const v0, 0x812f

    .line 901
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 902
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p2, 0x0

    .line 903
    invoke-static {p3, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 904
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 834
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 837
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 838
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 841
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 842
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public run()V
    .locals 1

    .line 956
    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    .line 957
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 3

    int-to-float v0, p1

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    .line 951
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/Intro;->onSurfaceChanged(IIFI)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 941
    new-instance v0, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePowerfulTextures()V
    .locals 5

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v1, 0x11

    aget v1, v0, v1

    const/16 v2, 0x12

    aget v2, v0, v2

    const/16 v3, 0x10

    aget v3, v0, v3

    const/16 v4, 0xf

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/Intro;->setPowerfulTextures(IIII)V

    return-void
.end method

.method public updateTelegramTextures()V
    .locals 4

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v1, 0x16

    aget v1, v0, v1

    const/16 v2, 0x15

    aget v2, v0, v2

    const/16 v3, 0x17

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/Intro;->setTelegramTextures(III)V

    return-void
.end method
