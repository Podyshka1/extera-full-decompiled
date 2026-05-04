.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;


# direct methods
.method public static synthetic $r8$lambda$Ha8FIlMaNkz7up8iOeYm55Nl5eE(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invokeSuspend$lambda$0(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)Lkotlin/Unit;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-direct {v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->label:I

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

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 141
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 147
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    .line 148
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    .line 150
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Executor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 149
    invoke-static {v3, v4, v1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 158
    :goto_0
    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager;Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 159
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
