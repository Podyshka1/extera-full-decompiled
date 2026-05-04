.class final Lcom/exteragram/messenger/icons/IconManager$initialize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $update:Z

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->$update:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/exteragram/messenger/icons/IconManager$initialize$1;

    iget-boolean v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->$update:Z

    invoke-direct {p1, v0, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$initialize$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 391
    iget v1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 392
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconManager;->getSystemIcons()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 394
    :try_start_0
    const-class p1, Lorg/telegram/messenger/R$drawable;

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v5, p1

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 396
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 397
    sget-object v9, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Lcom/exteragram/messenger/icons/IconManager;->isBlacklisted(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 398
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 399
    invoke-virtual {v9}, Lcom/exteragram/messenger/icons/IconManager;->getSystemIcons()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v9}, Lcom/exteragram/messenger/icons/IconManager;->getSystemNames()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 404
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 408
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string/jumbo v6, "iterator(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 410
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "base."

    invoke-static {v6, v7, v1, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 411
    sget-object v7, Lcom/exteragram/messenger/icons/BaseIconPacks;->INSTANCE:Lcom/exteragram/messenger/icons/BaseIconPacks;

    invoke-virtual {v7, v6}, Lcom/exteragram/messenger/icons/BaseIconPacks;->getBasePack(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v6

    goto :goto_4

    .line 413
    :cond_6
    sget-object v7, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v7, v6}, Lcom/exteragram/messenger/icons/IconPackStorage;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_5

    .line 416
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 420
    :cond_7
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "base.remix"

    const-string v7, "base.solar"

    if-eqz v5, :cond_e

    .line 421
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    .line 295
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/exteragram/messenger/icons/IconPack;

    .line 421
    invoke-virtual {v9}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_9
    move-object v8, v4

    :goto_5
    check-cast v8, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v8, :cond_a

    .line 422
    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_a
    move-object v5, v4

    .line 423
    :goto_6
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v2, v3

    goto :goto_7

    .line 424
    :cond_b
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    move v2, v1

    .line 422
    :goto_7
    sput v2, Lcom/exteragram/messenger/ExteraConfig;->iconPack:I

    .line 427
    iget-boolean v1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->$update:Z

    if-eqz v1, :cond_d

    .line 428
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/icons/IconManager$initialize$1$1;

    invoke-direct {v2, v4}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto/16 :goto_c

    .line 433
    :cond_d
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 436
    :cond_e
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 437
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 438
    sget-object v5, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-static {v5}, Lcom/exteragram/messenger/icons/IconManager;->access$rebuildOwnerMap(Lcom/exteragram/messenger/icons/IconManager;)V

    .line 440
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    .line 295
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/exteragram/messenger/icons/IconPack;

    .line 440
    invoke-virtual {v9}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_9

    :cond_10
    move-object v8, v4

    :goto_9
    check-cast v8, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v8, :cond_11

    .line 441
    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_11
    move-object v5, v4

    .line 442
    :goto_a
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_b

    .line 443
    :cond_12
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_b

    :cond_13
    move v3, v1

    .line 441
    :goto_b
    sput v3, Lcom/exteragram/messenger/ExteraConfig;->iconPack:I

    .line 447
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getResolvedCache$p()Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 448
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getSourceCache$p()Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 450
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;

    invoke-direct {v3, v4}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_14

    :goto_c
    return-object v0

    .line 479
    :cond_14
    :goto_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
