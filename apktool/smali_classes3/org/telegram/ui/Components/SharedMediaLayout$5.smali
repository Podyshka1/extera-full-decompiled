.class Lorg/telegram/ui/Components/SharedMediaLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$did:J

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$-3YThgjOtKyP0QekNGeAg0-yh-0(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$24ZE3DUZTPzVgNnvxzRtX1g6Dx4(Lorg/telegram/ui/Components/SharedMediaLayout$5;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$26Z-8qetgrM5pOeK6N3xmtdWj2U(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$15(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7bZxwSCWgD40e3qOFBCBsW2xxaA(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$AzT-XPn5lZLMZBWhuMvPla9POE4(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$16(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F3SgSd6tUFWmsMxvDiceHCz66lA(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$JBajY-HoPyOKkiPLAQC0Hm00xEc(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$KImZ5nIKwbEFSI19OVp7uclJejI(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$1(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NV-wxqOdBLGrapZvj1RW7iBFcnQ(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$0(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NuEGG7ukJe6k_dJ7KSJLrK3WDqQ(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Oo-y6b6Rm4DLzXnLyQs6nDDs_M8(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$QoBLcpFC-7KXPjFJ4VZizTuExeM(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 1935
    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    .line 1936
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1937
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnfKaJ_hFOWoYueR4EwLh631Kjs(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1918
    iget-boolean v0, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->Gift2FilterSortByValue:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Gift2FilterSortByDate:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_sort_value:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_sort_date:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1921
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unlimited()Z

    move-result p0

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1922
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_limited()Z

    move-result p0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1923
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_upgradable()Z

    move-result p0

    invoke-virtual {p4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1924
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unique()Z

    move-result p0

    invoke-virtual {p5, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    if-eqz p6, :cond_3

    .line 1927
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_displayed()Z

    move-result p0

    invoke-virtual {p7, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1928
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_hidden()Z

    move-result p0

    invoke-virtual {p8, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$WuNiIWKL30sYGMaNPSO2t3qGleY(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$bJhnDyIdyORZTL1guWFU4h1vo5A(Lorg/telegram/ui/Components/SharedMediaLayout$5;ILorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$14(ILorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c75IZnt4ZgvxXUypuOJBPl4f9Yw(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$17(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jvRbsf1ymogqqNYxnuMM6jNLHGI(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$10(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ndOqPO1cdw_xeHhRdrooNw7qUQk(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$monStoryAlbumCreate(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_zz1PqxOnHPnVGlAh9sw-PS5uQ(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$5;->lambda$onClick$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V
    .locals 0

    .line 1841
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$did:J

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 1

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->createCollection()V

    .line 1882
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$1(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setReordering(Z)V

    .line 1890
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$10(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 5

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2002
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 p1, 0x0

    const/4 v3, 0x2

    aput-object p1, v4, v3

    const/4 p1, 0x3

    aput-object p2, v4, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2004
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->setSavedViewAs(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$11()V
    .locals 10

    .line 1996
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1997
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda17;

    invoke-direct {v9, p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method

.method private synthetic lambda$onClick$12(Ljava/lang/String;)V
    .locals 5

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetStoriesController(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda18;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, v1, v2, p1, v4}, Lorg/telegram/ui/Stories/StoriesController;->createAlbum(JLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onClick$13(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createStoriesAlbumEnterNameForCreate(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V

    .line 2018
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$14(ILorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V

    .line 2029
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$15(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 4

    .line 2036
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2037
    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2038
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v1, v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2039
    new-instance v1, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2043
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$16(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 2

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeTypeAnimation(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetshiftDp(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result p2

    neg-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputshiftDp(Lorg/telegram/ui/Components/SharedMediaLayout;F)V

    invoke-static {p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 2074
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p4

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2075
    iget-object p3, p3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_2

    :goto_0
    return-void

    .line 2078
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    return-void
.end method

.method private synthetic lambda$onClick$17(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 2

    .line 2081
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetchangeTypeAnimation(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2084
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetshiftDp(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result p2

    neg-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputshiftDp(Lorg/telegram/ui/Components/SharedMediaLayout;F)V

    invoke-static {p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 2088
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p4

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2089
    iget-object p3, p3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_2

    :goto_0
    return-void

    .line 2092
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    return-void
.end method

.method private synthetic lambda$onClick$4()V
    .locals 5

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openBot(JLjava/lang/String;Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method private synthetic lambda$onClick$5()V
    .locals 1

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->selectAll()V

    return-void
.end method

.method private synthetic lambda$onClick$6()V
    .locals 1

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->unselectAll()V

    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->selectAll()V

    return-void
.end method

.method private synthetic lambda$onClick$7()V
    .locals 2

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->deleteLang(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$8()V
    .locals 4

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->setSavedViewAs(Z)V

    .line 1983
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1984
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1985
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$onClick$9()V
    .locals 4

    .line 1990
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_USER_OR_CHAT:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1992
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1844
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v1

    .line 1845
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isAnyStoryPageType(I)Z

    move-result v2

    .line 1847
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    .line 1848
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1849
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetStoriesController(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Stories/StoriesController;->canEditStoryAlbums(J)Z

    move-result v4

    .line 1851
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoryAlbumPageType(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1852
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getByTabType(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1854
    iget v12, v5, Lorg/telegram/ui/Components/SharedMediaLayout$StoryAlbumData;->albumId:I

    .line 1855
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$did:J

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mbuildItemOptionsForStoryAlbumActionBar(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;JI)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1856
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1857
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1858
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    :cond_0
    const/16 v5, 0xe

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v1, v5, :cond_b

    .line 1865
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->getCurrentPage()Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    move-result-object v1

    .line 1866
    iget-object v12, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-nez v12, :cond_1

    return-void

    .line 1868
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canFilterHidden()Z

    move-result v17

    .line 1870
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    .line 1873
    iget-boolean v3, v12, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isCollection:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 1874
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    move-object v11, v3

    move v3, v9

    goto :goto_0

    :cond_2
    move-object v11, v4

    move v3, v6

    .line 1879
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canAdd()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1880
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_folder_add:I

    sget v5, Lorg/telegram/messenger/R$string;->Gift2NewCollection:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v2, v3, v5, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move v3, v9

    .line 1886
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v5}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1887
    invoke-virtual {v12}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz v1, :cond_5

    .line 1888
    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2Reorder:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v2, v1, v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_5
    move v3, v9

    :cond_6
    if-eqz v3, :cond_7

    .line 1895
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1896
    :cond_7
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v13

    .line 1897
    sget v1, Lorg/telegram/messenger/R$string;->Gift2FilterUnlimited:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v14

    .line 1899
    sget v1, Lorg/telegram/messenger/R$string;->Gift2FilterLimited:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1900
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v15

    .line 1901
    sget v1, Lorg/telegram/messenger/R$string;->Gift2FilterUpgradable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1902
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    .line 1903
    sget v3, Lorg/telegram/messenger/R$string;->Gift2FilterUnique:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz v17, :cond_8

    .line 1906
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1907
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    .line 1908
    sget v3, Lorg/telegram/messenger/R$string;->Gift2FilterDisplayed:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    .line 1910
    sget v5, Lorg/telegram/messenger/R$string;->Gift2FilterHidden:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    goto :goto_1

    :cond_8
    move-object/from16 v18, v4

    move-object/from16 v19, v18

    .line 1916
    :goto_1
    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda8;

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v19}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    .line 1931
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    if-eqz v11, :cond_9

    .line 1934
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda9;

    invoke-direct {v5, v12, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1940
    :cond_9
    invoke-static {v13, v12, v10, v9}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 1941
    invoke-static {v14, v12, v10, v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    const/4 v5, 0x4

    .line 1942
    invoke-static {v15, v12, v10, v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 1943
    invoke-static {v1, v12, v10, v7}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    if-eqz v17, :cond_a

    const/16 v1, 0x100

    .line 1945
    invoke-static {v4, v12, v10, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    const/16 v1, 0x200

    .line 1946
    invoke-static {v3, v12, v10, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 1949
    :cond_a
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1950
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1951
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1952
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    :cond_b
    const/16 v5, 0xd

    const/high16 v10, 0x42500000    # 52.0f

    const/4 v11, 0x0

    if-ne v1, v5, :cond_10

    if-eqz v3, :cond_10

    .line 1956
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1957
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v2

    .line 1958
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getItemsCount()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->botPreviewMediasMax:I

    if-ge v2, v3, :cond_c

    move v2, v9

    goto :goto_2

    :cond_c
    move v2, v6

    :goto_2
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotAddPreview:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v2

    .line 1961
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getItemsCount()I

    move-result v2

    if-le v2, v9, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelectedAll()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v9

    goto :goto_3

    :cond_d
    move v2, v6

    :goto_3
    sget v3, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotReorder:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v2

    .line 1964
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getItemsCount()I

    move-result v2

    if-lez v2, :cond_e

    move v2, v9

    goto :goto_4

    :cond_e
    move v2, v6

    :goto_4
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_select:I

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelectedAll()Z

    move-result v4

    if-eqz v4, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotUnSelect:I

    goto :goto_5

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->ProfileBotSelect:I

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda12;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v1

    .line 1971
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->ProfileBotRemoveLang:I

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetbotPreviewsContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    const/16 v16, 0x1

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1974
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v11, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1975
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1976
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    .line 1979
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v5

    const/16 v12, 0xb

    if-ne v5, v12, :cond_11

    .line 1980
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v3, Lorg/telegram/messenger/R$string;->SavedViewAsMessages:I

    .line 1981
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1987
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_home:I

    sget v3, Lorg/telegram/messenger/R$string;->AddShortcut:I

    .line 1988
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda15;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v3, Lorg/telegram/messenger/R$string;->DeleteAll:I

    .line 1995
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2007
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v11, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2008
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2009
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    .line 2014
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v5, v10}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    if-eq v1, v7, :cond_12

    .line 2015
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoryAlbumPageType(I)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    if-eqz v4, :cond_13

    .line 2016
    sget v4, Lorg/telegram/messenger/R$drawable;->menu_album_add:I

    sget v7, Lorg/telegram/messenger/R$string;->StoriesAlbumAddAlbum:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0, v10, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v5, v4, v7, v11}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2020
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2023
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$maddZoomInZoomOutItemOptions(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/ItemOptions;)V

    if-nez v2, :cond_16

    .line 2025
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->-$$Nest$fgethasPhotos(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->-$$Nest$fgethasVideos(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v6

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_16

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v6

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v4, v4, v9

    if-eqz v4, :cond_16

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v6

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-nez v4, :cond_15

    goto :goto_6

    :cond_15
    move v4, v6

    goto :goto_7

    :cond_16
    :goto_6
    move v4, v9

    .line 2026
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    if-nez v7, :cond_1f

    if-eqz v3, :cond_17

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_1f

    .line 2027
    :cond_17
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    sget v7, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0, v1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;ILorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v5, v3, v7, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2032
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2033
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetinfo(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v7

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 2034
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v3, :cond_18

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v3, :cond_18

    .line 2035
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v7, Lorg/telegram/messenger/R$string;->OpenChannelArchiveStories:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v5, v3, v7, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_18
    if-eqz v4, :cond_1f

    .line 2049
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2051
    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$context:Landroid/content/Context;

    const/4 v15, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2052
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$context:Landroid/content/Context;

    const/16 v16, 0x1

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v14, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2054
    const-string v3, "MediaShowPhotos"

    sget v4, Lorg/telegram/messenger/R$string;->MediaShowPhotos:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2055
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2057
    const-string v3, "MediaShowVideos"

    sget v4, Lorg/telegram/messenger/R$string;->MediaShowVideos:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2058
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_1a

    .line 2061
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mstoryAlbums_getStoriesAdapterByTabType(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2062
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_19

    .line 2063
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos()Z

    move-result v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2064
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos()Z

    move-result v2

    invoke-virtual {v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2066
    :cond_19
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v12, v11, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2080
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v11, v12, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$5$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 2095
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v6

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v6

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v1, v9, :cond_1b

    goto :goto_8

    :cond_1b
    move v1, v6

    goto :goto_9

    :cond_1c
    :goto_8
    move v1, v9

    :goto_9
    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2096
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5$1;

    invoke-direct {v1, v0, v12, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$5$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v6

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$5;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v6

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v1, v8, :cond_1d

    goto :goto_a

    :cond_1d
    move v9, v6

    :cond_1e
    :goto_a
    invoke-virtual {v12, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2116
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5$2;

    invoke-direct {v1, v0, v11, v12}, Lorg/telegram/ui/Components/SharedMediaLayout$5$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$5;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    :cond_1f
    :goto_b
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2141
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2142
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2143
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method
