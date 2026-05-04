.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $aeMode$inlined:I

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    iput p3, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->$aeMode$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->$aeMode$inlined:I

    invoke-direct {p1, v0, p2, v1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;I)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 164
    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->access$getOrCreateImpl(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p1

    .line 166
    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->$aeMode$inlined:I

    invoke-interface {p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 90
    iput v2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$setTorchOffAsync-MtizInI$$inlined$runOnSequential$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
