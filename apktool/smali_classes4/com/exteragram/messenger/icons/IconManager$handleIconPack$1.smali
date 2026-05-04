.class final Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager;->handleIconPack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic $path:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 522
    iget v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 523
    new-instance v1, Ljava/io/File;

    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$path:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    sget-object p1, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    iput-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/exteragram/messenger/icons/IconPackStorage;->parsePackFromZip(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 522
    :cond_3
    :goto_0
    check-cast p1, Lcom/exteragram/messenger/icons/IconPack;

    .line 525
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    new-instance v4, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;

    iget-object v5, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v1, v6}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;-><init>(Lcom/exteragram/messenger/icons/IconPack;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 561
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
