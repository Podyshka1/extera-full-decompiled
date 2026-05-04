.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $index:I

.field final synthetic $submissionJob:Lkotlinx/coroutines/Deferred;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$submissionJob:Lkotlinx/coroutines/Deferred;

    iput p2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$index:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$submissionJob:Lkotlinx/coroutines/Deferred;

    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$index:I

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;-><init>(Lkotlinx/coroutines/Deferred;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$submissionJob:Lkotlinx/coroutines/Deferred;

    iput v3, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 109
    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$index:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 110
    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->$index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Deferred;

    iput v2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
