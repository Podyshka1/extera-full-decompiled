.class public final Landroidx/camera/camera2/adapter/CameraControlStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

.field private final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private final zoomControl:Landroidx/camera/camera2/impl/ZoomControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/camera2/impl/EvCompControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 1

    const-string/jumbo v0, "zoomControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evCompControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "torchControl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lowLightBoostControl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    .line 39
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    .line 40
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    .line 41
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    return-void
.end method


# virtual methods
.method public final getZoomStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/ZoomControl;->getZoomStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
