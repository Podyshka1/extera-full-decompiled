.class final Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/camera/camera2/pipe/compat/CameraState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 178
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    monitor-enter p2

    .line 179
    :try_start_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    .line 182
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type androidx.camera.camera2.pipe.compat.AndroidCameraDevice"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 181
    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V

    .line 190
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->access$setCurrentVirtualAndroidCamera$p(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;)V

    .line 191
    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-direct {p1, v1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->access$emitState(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/CameraState;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 193
    :cond_0
    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->access$emitState(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/compat/CameraState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p2

    .line 196
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 178
    :goto_1
    monitor-exit p2

    throw p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraState;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->emit(Landroidx/camera/camera2/pipe/compat/CameraState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
