.class public final Lcom/google/android/exoplayer2/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
    }
.end annotation


# static fields
.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final parentContext:Landroid/opengl/EGLContext;

.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroid/opengl/EGLContext;)V
    .locals 0

    .line 89
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 91
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secure:Z

    .line 92
    iput-object p4, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->parentContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroid/opengl/EGLContext;Lcom/google/android/exoplayer2/video/PlaceholderSurface-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;-><init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroid/opengl/EGLContext;)V

    return-void
.end method

.method private static getSecureMode(Landroid/content/Context;)I
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->isProtectedContentExtensionSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 112
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I

    .line 64
    sput-boolean v2, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureModeInitialized:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 66
    :cond_0
    :goto_0
    sget p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;ZLandroid/opengl/EGLContext;)Lcom/google/android/exoplayer2/video/PlaceholderSurface;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 82
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 83
    new-instance p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    if-eqz p1, :cond_2

    .line 84
    sget v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secureMode:I

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(ILandroid/opengl/EGLContext;)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->thread:Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->release()V

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->threadReleased:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 107
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
