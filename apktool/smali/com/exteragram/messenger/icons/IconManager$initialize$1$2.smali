.class final Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 450
    iget v0, p0, Lcom/exteragram/messenger/icons/IconManager$initialize$1$2;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 451
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 452
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    .line 452
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/exteragram/messenger/icons/IconPack;

    .line 453
    invoke-static {}, Lcom/exteragram/messenger/icons/IconManager;->access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/exteragram/messenger/icons/IconPack;

    .line 453
    invoke-virtual {v4}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v1, :cond_6

    .line 455
    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 464
    :cond_5
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 465
    instance-of v1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_7

    .line 466
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    goto :goto_4

    .line 456
    :cond_6
    :goto_3
    sput-object v2, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    .line 457
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "editingIconPackId"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 458
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 459
    instance-of v1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_7

    .line 460
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1, v0}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 472
    :cond_7
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 473
    sget v1, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 474
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 475
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->reloadAllResources(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    .line 478
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 450
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
