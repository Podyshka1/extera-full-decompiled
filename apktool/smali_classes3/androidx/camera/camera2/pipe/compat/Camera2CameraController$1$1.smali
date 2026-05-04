.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 126
    instance-of p2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    const-string v0, "Check failed."

    if-eqz p2, :cond_1

    .line 127
    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    instance-of p2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz p2, :cond_3

    .line 131
    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 132
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    goto :goto_0

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;->emit(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
