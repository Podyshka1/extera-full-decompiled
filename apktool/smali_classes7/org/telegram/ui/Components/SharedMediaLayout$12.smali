.class Lorg/telegram/ui/Components/SharedMediaLayout$12;
.super Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$FhHw8UIem0P_qtOpYXJq6jXBD6g(Lorg/telegram/ui/Components/SharedMediaLayout$12;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$12;->lambda$unselect$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 0

    .line 2389
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    return-void
.end method

.method private synthetic lambda$unselect$0()V
    .locals 2

    .line 2484
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2485
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStartedTrackingX()I
    .locals 1

    .line 2502
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetstartedTrackingX(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    return v0
.end method

.method protected isActionModeShowed()Z
    .locals 1

    .line 2498
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    return v0
.end method

.method protected isSelected(Lorg/telegram/messenger/MessageObject;)Z
    .locals 5

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public onSelectedTabChanged()V
    .locals 1

    .line 2392
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    return-void
.end method

.method protected select(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2401
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2402
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_d

    .line 2403
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    return v0

    .line 2406
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 2407
    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2408
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    .line 2410
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v1, :cond_c

    .line 2411
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2412
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdeleteItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 v1, 0xd

    if-eqz p1, :cond_6

    .line 2414
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v1, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2416
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2417
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2422
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2423
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v3, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v1, :cond_9

    move v3, v0

    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedMessagesCountTextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2426
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 2428
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetactionModeViews(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2429
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetactionModeViews(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2430
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    const/4 v5, 0x2

    .line 2431
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2433
    :cond_b
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xfa

    .line 2434
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2435
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_4

    .line 2439
    :cond_c
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedMessagesCountTextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2441
    :goto_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateSelection(Z)V

    return v2

    :cond_d
    return v0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected unselect(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2449
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2450
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_c

    .line 2451
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x0

    .line 2452
    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2453
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    .line 2455
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 2456
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2457
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 2458
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 2459
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdeleteItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetcantDeleteMessagesCount(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2460
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 v1, 0xd

    if-eqz p1, :cond_5

    .line 2461
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgotoItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v3, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v1, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2463
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2464
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2466
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2467
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetunpinItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2469
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2470
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetforwardItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v3, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v4

    if-eq v4, v1, :cond_8

    move v3, v0

    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2472
    :cond_9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 2474
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetactionModeViews(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 2475
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetactionModeViews(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2476
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    const/4 v5, 0x2

    .line 2477
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2479
    :cond_a
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xfa

    .line 2480
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2481
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2482
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 2483
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$12$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$12;)V

    const-wide/16 v0, 0x14

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 2489
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedMessagesCountTextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$12;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2491
    :goto_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateSelection(Z)V

    return v2

    :cond_c
    return v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method
