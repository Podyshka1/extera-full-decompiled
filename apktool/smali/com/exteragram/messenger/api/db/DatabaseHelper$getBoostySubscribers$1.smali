.class final Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/DatabaseHelper;->getBoostySubscribers(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.db.DatabaseHelper$getBoostySubscribers$1"
    f = "DatabaseHelper.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->$callback:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;

    iget-object v0, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p1, v0, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;-><init>(Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    :try_start_1
    sget-object p1, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->boostySubscriberDao()Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    move-result-object p1

    iput v2, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->label:I

    invoke-interface {p1, p0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;->getAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 105
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 108
    check-cast p1, Ljava/lang/Iterable;

    .line 1068
    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->$callback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 111
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 112
    iget-object p1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->$callback:Ljava/util/function/Consumer;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 114
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
