.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getCameraStatusMonitor$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;->getCameraAvailability()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
