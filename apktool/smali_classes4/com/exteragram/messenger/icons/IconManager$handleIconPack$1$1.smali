.class final Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $pack:Lcom/exteragram/messenger/icons/IconPack;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$f6uYi-7_KIxph7kqQsGpPNgvjfM(Ljava/io/File;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPack;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->invokeSuspend$lambda$0(Ljava/io/File;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPack;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/exteragram/messenger/icons/IconPack;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$file:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Ljava/io/File;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPack;ZZ)V
    .locals 8

    .line 528
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getScope$p()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$bottomSheet$1$1;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/exteragram/messenger/icons/IconPack;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$file:Ljava/io/File;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;-><init>(Lcom/exteragram/messenger/icons/IconPack;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 525
    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 526
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    if-eqz p1, :cond_0

    .line 527
    new-instance p1, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;

    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getParentActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$pack:Lcom/exteragram/messenger/icons/IconPack;

    iget-object v2, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$file:Ljava/io/File;

    iget-object v3, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v4, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v1}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-direct {p1, v0, v1, v4}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;)V

    .line 556
    iget-object v0, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1$1;->$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 560
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 525
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
