.class public final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequentialList(ILkotlin/jvm/functions/Function1;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic $deferredList:Ljava/util/List;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$deferredList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$deferredList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 672
    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->label:I

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

    .line 179
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$block:Lkotlin/jvm/functions/Function1;

    iput v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 672
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1;->$deferredList:Ljava/util/List;

    .line 1879
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v2, Lkotlinx/coroutines/Deferred;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v2, v1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;)V

    move v1, v3

    goto :goto_1

    .line 180
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
