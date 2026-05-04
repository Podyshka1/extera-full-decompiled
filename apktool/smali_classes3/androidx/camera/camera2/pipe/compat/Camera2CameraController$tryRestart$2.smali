.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $delayMs:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method constructor <init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;-><init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 180
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 182
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    monitor-enter p1

    .line 184
    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$isClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 185
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CXCP"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 189
    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getSurfaceTracker$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/SurfaceTracker;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/SurfaceTracker;->registerAllSurfaces()V

    .line 190
    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    .line 191
    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$startLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_4
    monitor-exit p1

    .line 194
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 182
    :goto_2
    monitor-exit p1

    throw v0
.end method
