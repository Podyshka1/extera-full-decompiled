.class public final Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Landroidx/camera/camera2/pipe/CameraPipe$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe$Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    return-void
.end method


# virtual methods
.method public final provideCameraInteropConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;
    .locals 1

    const-string v0, "cameraPipeConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object p1

    return-object p1
.end method

.method public final provideCameraPipeConfig()Landroidx/camera/camera2/pipe/CameraPipe$Config;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    return-object v0
.end method

.method public final provideCameraPipeFlags()Landroidx/camera/camera2/pipe/CameraPipe$Flags;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    move-result-object v0

    return-object v0
.end method
