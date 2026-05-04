.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 208
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$onCameraAvailabilityChanged(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->access$onCameraAvailabilityChanged(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/String;Z)V

    return-void
.end method
