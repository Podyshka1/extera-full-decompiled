.class final Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraXConfig$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->configure$camera_lifecycle(Landroidx/camera/core/CameraXConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraXConfig:Landroidx/camera/core/CameraXConfig;


# direct methods
.method constructor <init>(Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;->$cameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCameraXConfig()Landroidx/camera/core/CameraXConfig;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;->$cameraXConfig:Landroidx/camera/core/CameraXConfig;

    return-object v0
.end method
