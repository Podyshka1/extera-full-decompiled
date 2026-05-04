.class final Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic $enable:Z

.field final synthetic $pack:Lcom/exteragram/messenger/icons/IconPack;

.field final synthetic $success:Z

.field final synthetic $update:Z

.field label:I


# direct methods
.method constructor <init>(ZLorg/telegram/ui/ActionBar/BaseFragment;ZLcom/exteragram/messenger/icons/IconPack;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$success:Z

    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$update:Z

    iput-object p4, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    iput-boolean p5, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$enable:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;

    iget-boolean v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$success:Z

    iget-object v2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$update:Z

    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    iget-boolean v5, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$enable:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;-><init>(ZLorg/telegram/ui/ActionBar/BaseFragment;ZLcom/exteragram/messenger/icons/IconPack;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 530
    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 531
    iget-boolean p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$success:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 532
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 533
    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 535
    iget-boolean v3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$update:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->PluginUpdated:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->PluginInstalled:I

    .line 536
    :goto_0
    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v4}, Lcom/exteragram/messenger/icons/IconPack;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    .line 534
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 539
    iget-boolean p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$enable:Z

    if-eqz p1, :cond_1

    .line 540
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/icons/IconManager;->setActiveCustomPack(Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :cond_1
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1, v1}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    goto :goto_1

    .line 545
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 546
    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    .line 548
    sget v3, Lorg/telegram/messenger/R$string;->PluginInstallError:I

    .line 549
    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v4}, Lcom/exteragram/messenger/icons/IconPack;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 547
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 553
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 530
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
