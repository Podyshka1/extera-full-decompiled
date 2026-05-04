.class final Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager;->resetCustomIcon(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $iconFileName:Ljava/lang/String;

.field final synthetic $packToEdit:Lcom/exteragram/messenger/icons/IconPack;

.field final synthetic $resId:I

.field final synthetic $resourceName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resourceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$iconFileName:Ljava/lang/String;

    iput p4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iget-object v2, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$iconFileName:Ljava/lang/String;

    iget v4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resId:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;-><init>(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 344
    iget v1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 345
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 346
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resourceName:Ljava/lang/String;

    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$iconFileName:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 349
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$iconFileName:Ljava/lang/String;

    .line 1761
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1762
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 351
    :cond_4
    :goto_0
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPackStorage;->getIconPacksDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v4}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$iconFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 358
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    const/16 v11, 0x6f

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/exteragram/messenger/icons/IconPack;->copy$default(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;ILjava/lang/Object;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    .line 359
    sget-object v1, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/icons/IconPackStorage;->saveIconPackMetadata(Lcom/exteragram/messenger/icons/IconPack;)V

    .line 361
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$1;

    iget v4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$resId:I

    iget-object v5, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$1;-><init>(ILcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/IconPack;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 373
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
