.class public final Landroidx/camera/camera2/config/CameraAppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

.field private final cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

.field private final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private final cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/CameraXConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraThreadConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipe"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2InteropCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCoordinator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraXConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/camera/camera2/config/CameraAppConfig;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    .line 49
    iput-object p3, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    .line 50
    iput-object p4, p0, Landroidx/camera/camera2/config/CameraAppConfig;->camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    .line 51
    iput-object p5, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 52
    iput-object p6, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    return-void
.end method


# virtual methods
.method public final provideCamera2InteropCallbacks()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    return-object v0
.end method

.method public final provideCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    return-object v0
.end method

.method public final provideCameraPipe()Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    return-object v0
.end method

.method public final provideCameraThreadConfig()Landroidx/camera/core/impl/CameraThreadConfig;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    return-object v0
.end method

.method public final provideCameraXConfig()Landroidx/camera/core/CameraXConfig;
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    return-object v0
.end method

.method public final provideContext()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final provideDisplayInfoManager(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object p1

    return-object p1
.end method
