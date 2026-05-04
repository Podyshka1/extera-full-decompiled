.class public abstract synthetic Lcom/exteragram/messenger/api/db/BoostySubscriberDao$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$replaceSubscribers(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$-CC;->replaceSubscribers$suspendImpl(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$replaceSubscribers$jd(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$-CC;->$default$replaceSubscribers(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic replaceSubscribers$suspendImpl(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 0
    instance-of v0, p2, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;

    iget v1, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;

    invoke-direct {v0, p0, p2}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;-><init>(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget v2, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p0, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iput-object p0, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    invoke-interface {p0, v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;->deleteAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 35
    :cond_4
    :goto_1
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    .line 36
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
