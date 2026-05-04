.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2$1;->emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 141
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    sget-object p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;->INSTANCE:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
