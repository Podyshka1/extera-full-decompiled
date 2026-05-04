.class public final Landroidx/camera/camera2/pipe/core/Permissions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile _hasCameraPermission:Z

.field private final cameraPipeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cameraPipeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Permissions;->cameraPipeContext:Landroid/content/Context;

    return-void
.end method

.method private final checkCameraPermission()Z
    .locals 3

    .line 42
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/core/Permissions;->_hasCameraPermission:Z

    if-nez v0, :cond_2

    .line 54
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "CXCP#checkCameraPermission"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Permissions;->cameraPipeContext:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/core/Permissions;->_hasCameraPermission:Z

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 63
    :cond_2
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/core/Permissions;->_hasCameraPermission:Z

    return v0
.end method


# virtual methods
.method public final getHasCameraPermission()Z
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/Permissions;->checkCameraPermission()Z

    move-result v0

    return v0
.end method
