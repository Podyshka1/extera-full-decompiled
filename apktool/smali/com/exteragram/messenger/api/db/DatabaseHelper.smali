.class public final Lcom/exteragram/messenger/api/db/DatabaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/api/db/DatabaseHelper;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;->INSTANCE:Lcom/exteragram/messenger/api/db/DatabaseHelper;

    .line 25
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBoostySubscribers(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;-><init>(Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final getNowPlaying(JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/api/db/DatabaseHelper$getNowPlaying$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper$getNowPlaying$1;-><init>(JLjava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final isRegDateAdded(JLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/api/db/DatabaseHelper$isRegDateAdded$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/exteragram/messenger/api/db/DatabaseHelper$isRegDateAdded$1;-><init>(JLjava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final setRegDateAdded(J)V
    .locals 6

    .line 86
    sget-object v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/exteragram/messenger/api/db/DatabaseHelper$setRegDateAdded$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/exteragram/messenger/api/db/DatabaseHelper$setRegDateAdded$1;-><init>(JLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final updateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/exteragram/messenger/api/db/DatabaseHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;

    const/4 v7, 0x0

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;-><init>(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final deleteProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;

    iget v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;

    invoke-direct {v0, p0, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;-><init>(Lcom/exteragram/messenger/api/db/DatabaseHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    :try_start_1
    sget-object p2, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;

    move-result-object p2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$deleteProfiles$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/exteragram/messenger/api/db/ProfileDao;->deleteProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 39
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 40
    :goto_3
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final insertBoostySubscribers(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;

    iget v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;

    invoke-direct {v0, p0, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;-><init>(Lcom/exteragram/messenger/api/db/DatabaseHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    :try_start_1
    sget-object p2, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->boostySubscriberDao()Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    move-result-object p2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertBoostySubscribers$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao;->replaceSubscribers(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 99
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 101
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final insertProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;

    iget v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;

    invoke-direct {v0, p0, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;-><init>(Lcom/exteragram/messenger/api/db/DatabaseHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    :try_start_1
    sget-object p2, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;

    move-result-object p2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$insertProfiles$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/exteragram/messenger/api/db/ProfileDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 31
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 33
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
