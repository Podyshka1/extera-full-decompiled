.class final Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->replaceSubscribers(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$replaceSubscribers$2"
    f = "BoostySubscriberDao_Impl.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    iput-object p2, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->$subscribers:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;

    iget-object v1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    iget-object v2, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->$subscribers:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;-><init>(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->label:I

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

    iget-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;

    .line 61
    iget-object v1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->$subscribers:Ljava/util/List;

    iput v2, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$replaceSubscribers$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;->access$replaceSubscribers$s-1778592684(Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 62
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
