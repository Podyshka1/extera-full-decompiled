.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 71
    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 72
    :cond_1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 73
    :cond_3
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$get_cameraPriorities$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    return-object v0

    .line 75
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1$1;->emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
