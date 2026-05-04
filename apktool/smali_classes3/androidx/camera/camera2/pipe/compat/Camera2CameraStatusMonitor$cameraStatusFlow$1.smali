.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusFlow()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$QvSZz9zGJDm3OJ9gzI7Mr43H2fA(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->invokeSuspend$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)Lkotlin/Unit;
    .locals 0

    .line 114
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$getManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-direct {v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 80
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-direct {v1, p1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)V

    .line 104
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 106
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$getManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    const-string v4, "access$getManager$p(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 105
    invoke-static {v3, v4, v1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$getManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 114
    :goto_0
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 115
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
