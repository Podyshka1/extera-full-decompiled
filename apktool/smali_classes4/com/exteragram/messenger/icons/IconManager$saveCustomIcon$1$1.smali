.class final Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packToEdit:Lcom/exteragram/messenger/icons/IconPack;

.field final synthetic $preDecoded:Landroid/graphics/Bitmap;

.field final synthetic $resId:I

.field final synthetic $updatedPack:Lcom/exteragram/messenger/icons/IconPack;

.field label:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;ILcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/IconPack;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$preDecoded:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$resId:I

    iput-object p3, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iput-object p4, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$updatedPack:Lcom/exteragram/messenger/icons/IconPack;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$preDecoded:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$resId:I

    iget-object v3, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$updatedPack:Lcom/exteragram/messenger/icons/IconPack;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;-><init>(Landroid/graphics/Bitmap;ILcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/IconPack;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 314
    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 315
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$preDecoded:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 316
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getResolvedCache$p()Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$resId:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$preDecoded:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getResolvedCache$p()Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$resId:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 320
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getSourceCache$p()Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$updatedPack:Lcom/exteragram/messenger/icons/IconPack;

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 362
    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    .line 322
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_3

    .line 324
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;->$updatedPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/IconManager;->access$rebuildOwnerMap(Lcom/exteragram/messenger/icons/IconManager;)V

    .line 328
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 329
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 314
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
