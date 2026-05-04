.class public abstract Lorg/telegram/ui/Components/TopicsTabsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;,
        Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;,
        Lorg/telegram/ui/Components/TopicsTabsView$BotNewTopicDrawable;
    }
.end annotation


# instance fields
.field private animateFromSelectedTopicId:J

.field private animator:Landroid/animation/ValueAnimator;

.field private final animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

.field private final bot:Z

.field private final botCreateTopicButtonHorizontal:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

.field private final botCreateTopicButtonVertical:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

.field private final canShowProgress:Z

.field private final closeButtonSide:Landroid/widget/ImageView;

.field private final closeButtonTop:Landroid/widget/ImageView;

.field private final currentAccount:I

.field private currentTopicId:J

.field private final dialogId:J

.field private final excludeTopics:Ljava/util/HashSet;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private lastSelectedTopicId:J

.field private final mono:Z

.field private notificationsAttached:Z

.field private onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

.field private onTopicCreated:Ljava/lang/Runnable;

.field private onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

.field private pendingSidemenu:Ljava/lang/Boolean;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private sideMenuBackgroundMarginBottom:F

.field private sideMenuBackgroundMarginTop:F

.field private final sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final sideTabsContainer:Landroid/widget/FrameLayout;

.field public sidemenuAnimating:Z

.field public sidemenuEnabled:Z

.field public sidemenuT:F

.field private final toggleButtonSide:Landroid/widget/ImageView;

.field private final toggleButtonTop:Landroid/widget/ImageView;

.field private topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private final topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final topTabsContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$33OPo460X2NEAS7LIJYzDdsREV8(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$6(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$39by0cw6osE4ZbZ8CDpr4d5b7mU(Lorg/telegram/ui/Components/TopicsTabsView;IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$new$1(IFFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40k0BMc6sOcN8BwURMO1Gut8Mw0(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$6uK0BFsMqfvoPbnBPe9XOZvq2l4(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->onCloseButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7YeSs_iksy4c0DXVyB21XI1yQpo(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->onTabLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CLonHFCd7AvFuAxVI-MZb6fH_5Q(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$8(Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiIpsIXxuFKko39atwjyVRHNV1Y(Lorg/telegram/ui/Components/TopicsTabsView;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->whenReordered(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FubL1O75eaucTDlzArWgUf3w9xg(Lorg/telegram/ui/Components/TopicsTabsView;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$9(ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ggp4HE_CA1VaytVb0qwbua4GsyI(Lorg/telegram/ui/Components/TopicsTabsView;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$4(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GkS68BJnIJYHnniwNlwVfwkzowU(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->onTabClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$IE55ebIdLrJQGXqmvB3NkHAgHi8(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JjV7f6j-n6IjvbeU8UummDq8gUY(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$15(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L9YC-3H4jgacWc5iQdaGynECqsI(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$5(Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vtc8Zek5803_bPgXqzGIoeBlBY8(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$13(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XFq6ghAF3Zl_XeEmlfC2bO-wEjU(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2004
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$_VH_Iq1d6tJdsCGTb25BD3Z5zBk(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$10(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eGnPIWHa_04cRgBeAqXNmEu-t1s(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$14(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hjNjJ8Bcqm1PzGsOhoXEpgBMfkc(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$20(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hnaAfle8ZRYx7weeDq7URLPQaug(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->fillVerticalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlqkcfZ97AQzF5CMy__r8h0M0y0(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->fillHorizontalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRCXVPocv5qKdhhIzdGSA7LBabI(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$18(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWcRP8z9y-GlnblDnLczn3CcQJU(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->onSideMenuButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0xZPV2VHWeafr0Cp2mWkLPbGdQ(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$updateTabs$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pdWT5MgVBrOyvP7PWCQvFkc-7N8(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$11(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qNyPDFboaqFROuZz_D3BmV-H00E(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$animateSidemenuTo$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGEdYedfVQ61DVvYnD7oYstVaIo(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uNFTku88ykuue1DG8CemDdFeSFs(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$onTabLongClick$17(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whz9_2q0Ul6L4zdHpqUqnJxFQVc()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$zMSitoQRb4LSg59o166cJlXTzA8(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->lambda$deleteTopics$19(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animateFromSelectedTopicId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetanimator(Lorg/telegram/ui/Components/TopicsTabsView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/TopicsTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->lastSelectedTopicId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpendingSidemenu(Lorg/telegram/ui/Components/TopicsTabsView;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/TopicsTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimateFromSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animateFromSelectedTopicId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimator(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSelectedTopicId(Lorg/telegram/ui/Components/TopicsTabsView;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->lastSelectedTopicId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSidemenu(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateSidemenuTo(Lorg/telegram/ui/Components/TopicsTabsView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->animateSidemenuTo(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misLoadingVisible(Lorg/telegram/ui/Components/TopicsTabsView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadMore(Lorg/telegram/ui/Components/TopicsTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->loadMore()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-wide/from16 v9, p4

    move-object/from16 v8, p6

    .line 103
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 378
    new-instance v11, Lme/vkryl/android/animator/BoolAnimator;

    new-instance v13, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda0;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v15, 0x140

    const/4 v12, 0x0

    invoke-direct/range {v11 .. v16}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v11, v1, Lorg/telegram/ui/Components/TopicsTabsView;->animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v0, 0x0

    .line 507
    iput v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    .line 1980
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    move-object/from16 v0, p2

    .line 105
    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 106
    iput v3, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    .line 107
    iput-wide v9, v1, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    .line 108
    iput-object v8, v1, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 110
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    .line 111
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    iput-boolean v13, v1, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    .line 112
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topics_end_reached_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    invoke-interface {v0, v4, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v15, 0x1

    xor-int/2addr v0, v15

    iput-boolean v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    .line 114
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 115
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 116
    invoke-virtual {v1, v14}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 118
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    const/high16 v21, 0x40e00000    # 7.0f

    const/high16 v22, 0x40e00000    # 7.0f

    const/16 v16, -0x1

    const/high16 v17, 0x42100000    # 36.0f

    const/16 v18, 0x37

    const/high16 v19, 0x40e00000    # 7.0f

    const/high16 v20, 0x40e00000    # 7.0f

    .line 119
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    const/16 v16, 0x40

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x73

    .line 122
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v0

    .line 124
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$1;

    move-object v6, v5

    new-instance v5, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    move-object v7, v6

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    move-object/from16 v16, v7

    new-instance v7, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v15, v16

    move-object/from16 v23, v17

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 228
    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 229
    invoke-virtual {v0, v14}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 230
    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 231
    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->makeHorizontal()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x77

    const/high16 v19, 0x42240000    # 41.0f

    const/16 v20, 0x0

    .line 232
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$2;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/TopicsTabsView$2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    .line 244
    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonHorizontal:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    .line 252
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-direct {v0, v2, v3, v8}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonVertical:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    .line 253
    iget-wide v4, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v14

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v5, v14, v4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setAll(ZZZ)V

    .line 254
    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x40

    const/high16 v17, 0x42280000    # 42.0f

    const/16 v18, 0x33

    const/16 v19, 0x0

    const/high16 v20, 0x42400000    # 48.0f

    .line 257
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v5, v23

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    move-object/from16 v5, v23

    .line 259
    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonHorizontal:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    .line 260
    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonVertical:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    .line 263
    :goto_2
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$3;

    move-object/from16 v17, v5

    new-instance v5, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    new-instance v7, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    const/4 v4, 0x0

    move-object/from16 v24, v17

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 321
    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 322
    iget-object v3, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 323
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 324
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz v13, :cond_2

    const/high16 v3, 0x42b40000    # 90.0f

    :goto_3
    move/from16 v20, v3

    goto :goto_4

    :cond_2
    const/high16 v3, 0x42400000    # 48.0f

    goto :goto_3

    :goto_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x77

    const/16 v19, 0x0

    .line 325
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v5, v24

    invoke-virtual {v5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/TopicsTabsView$4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 335
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sidebar:I

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-direct {v1, v2, v0, v3}, Lorg/telegram/ui/Components/TopicsTabsView;->createButton(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    .line 336
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_sidebar:I

    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/TopicsTabsView;->createButton(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    const/16 v4, 0x2c

    const/16 v6, 0x24

    const/16 v7, 0x33

    .line 337
    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v15, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x40

    const/16 v8, 0x30

    .line 338
    invoke-static {v0, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_select:I

    new-instance v13, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-direct {v1, v2, v3, v13}, Lorg/telegram/ui/Components/TopicsTabsView;->createButton(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    .line 341
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_select:I

    new-instance v14, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-direct {v1, v2, v13, v14}, Lorg/telegram/ui/Components/TopicsTabsView;->createButton(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    .line 342
    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-static {v0, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v12, v3, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    .line 347
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topicssidetabs"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 348
    iput v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/4 v5, 0x1

    .line 349
    iput-boolean v5, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    .line 352
    :cond_3
    invoke-direct {v1}, Lorg/telegram/ui/Components/TopicsTabsView;->checkUi_closeButtonVisibility()V

    .line 353
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TopicsTabsView;->updateSidemenuPosition()V

    .line 354
    invoke-direct {v1}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    return-void
.end method

.method private animateSidemenuTo(Z)V
    .locals 5

    .line 548
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 551
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuAnimating:Z

    if-eqz v0, :cond_1

    .line 552
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    return-void

    .line 556
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    const/4 v0, 0x1

    .line 557
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuAnimating:Z

    .line 558
    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    .line 559
    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$5;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private checkSideTabsPadding(Z)V
    .locals 3

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 483
    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginBottom:F

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginTop:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    if-ge v1, v0, :cond_2

    .line 495
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkUi_closeButtonVisibility()V
    .locals 9

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    .line 386
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 387
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 388
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 389
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-lez v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 393
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    if-lez v5, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    sub-float v0, v3, v0

    .line 399
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    if-lez v4, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private createButton(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 1

    .line 370
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    return-object v0
.end method

.method private deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 9

    .line 1982
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1983
    const-string v1, "DeleteTopics"

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1984
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1985
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1986
    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v4, v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    .line 1987
    sget v4, Lorg/telegram/messenger/R$string;->DeleteSelectedTopic:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1989
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DeleteSelectedTopics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1991
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, p1, v1, p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2003
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda23;

    invoke-direct {p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2006
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2007
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 2008
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2010
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private fillHorizontalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 701
    iget v2, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 702
    iget v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 703
    iget v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    .line 704
    iget-wide v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 705
    iget-boolean v6, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asAll(ZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_8

    .line 708
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v8

    move v10, v7

    :goto_1
    if-ge v10, v6, :cond_7

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 709
    iget-boolean v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    if-eqz v12, :cond_1

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v12, v9, :cond_1

    goto :goto_1

    .line 710
    :cond_1
    iget-object v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    .line 711
    :cond_2
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    .line 712
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 713
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/UItem;

    iget v12, v7, Lorg/telegram/ui/Components/UItem;->flags:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v7, Lorg/telegram/ui/Components/UItem;->flags:I

    .line 715
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    move v7, v8

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    if-nez v7, :cond_5

    .line 718
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    move v7, v9

    .line 721
    :cond_5
    :goto_2
    iget-wide v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget-boolean v14, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v12, v13, v11, v14}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asTab(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v12

    iget-wide v13, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/TopicsTabsView;->getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_6

    move v11, v9

    goto :goto_3

    :cond_6
    move v11, v8

    :goto_3
    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move v8, v7

    :cond_8
    if-eqz v8, :cond_9

    .line 725
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    :cond_9
    if-eqz v5, :cond_a

    .line 727
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-wide v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    if-eqz v4, :cond_a

    const/4 v4, -0x2

    .line 728
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x3

    .line 729
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x4

    .line 730
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_a
    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    if-nez v4, :cond_d

    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-nez v4, :cond_d

    if-eqz v2, :cond_b

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 733
    :cond_c
    invoke-static {}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;->asAdd()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private fillVerticalTabs(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 665
    iget v2, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 666
    iget v3, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 667
    iget v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    .line 668
    iget-wide v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 669
    iget-boolean v6, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 670
    iget-boolean v9, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v6, v9}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asAll(ZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    iget-wide v9, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v5, :cond_7

    .line 674
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v8

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_8

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 675
    iget-boolean v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    if-eqz v12, :cond_2

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v12, v7, :cond_2

    goto :goto_1

    .line 676
    :cond_2
    iget-object v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 677
    :cond_3
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez v12, :cond_4

    if-eqz v9, :cond_4

    .line 678
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    move v9, v8

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    if-nez v9, :cond_5

    .line 681
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    move v9, v7

    .line 684
    :cond_5
    :goto_2
    iget-wide v12, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget-boolean v14, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    invoke-static {v12, v13, v11, v14}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asTab(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v12

    iget-wide v13, v0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/TopicsTabsView;->getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    move v11, v8

    :goto_3
    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move v9, v8

    :cond_8
    if-eqz v9, :cond_9

    .line 688
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    :cond_9
    if-eqz v5, :cond_a

    .line 690
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-wide v5, v0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->canShowProgress:Z

    if-eqz v4, :cond_a

    const/4 v4, -0x2

    .line 691
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x3

    .line 692
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x4

    .line 693
    invoke-static {v4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asLoading(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_a
    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->bot:Z

    if-nez v4, :cond_d

    iget-boolean v4, v0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-nez v4, :cond_d

    if-eqz v2, :cond_b

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 696
    :cond_c
    invoke-static {v8}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->asAdd(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private getTopicId(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)J
    .locals 2

    .line 2015
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method private isLoadingVisible()Z
    .locals 5

    .line 738
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v1

    .line 739
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 740
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 741
    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 742
    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 743
    iget-boolean v3, v3, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 746
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 747
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 748
    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 749
    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 750
    iget-boolean v3, v3, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private synthetic lambda$animateSidemenuTo$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 560
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateSidemenuPosition()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$18(Ljava/util/HashSet;)V
    .locals 1

    .line 1995
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 1996
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$19(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    .line 1998
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/TopicsController;->deleteTopics(JLjava/util/ArrayList;)V

    .line 1999
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$20(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 1992
    iget-object p5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->excludeTopics:Ljava/util/HashSet;

    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1993
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    .line 1994
    iget-object p5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p5

    const-string v0, "TopicsDeleted"

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/HashSet;)V

    new-instance p1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2000
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 2001
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->checkUi_closeButtonVisibility()V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$10(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 2

    move-object p9, p6

    move-wide v0, p3

    move-object p4, p1

    move p3, p7

    move-wide p6, v0

    .line 821
    new-instance p1, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda20;

    move-object p8, p5

    move-object p5, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$11(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 6

    .line 857
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 858
    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, p1

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 859
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$12()V
    .locals 2

    .line 868
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, v1, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$13(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 4

    .line 880
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/TopicCreateFragment;->create(JJ)Lorg/telegram/ui/TopicCreateFragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onTabLongClick$14(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 6

    .line 891
    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 892
    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 893
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 894
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 895
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p4, 0x4

    invoke-static {p1, p4, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void

    .line 898
    :cond_1
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$15(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 3

    .line 907
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 908
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$17(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 914
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 915
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 916
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda21;

    invoke-direct {p2}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda21;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$4(JZ)V
    .locals 2

    .line 802
    iget-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 803
    check-cast p3, Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(JZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$5(Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    .line 798
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 799
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, p2, p3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 805
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v4, p4

    .line 801
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$6(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 4

    .line 840
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 841
    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$onTabLongClick$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 836
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 837
    iget p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 838
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 839
    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTabLongClick$8(Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 7

    .line 826
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    if-nez p2, :cond_0

    .line 828
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v1, p3

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    return-void

    :cond_0
    move-object v3, p5

    .line 830
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 831
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 832
    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 833
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 834
    iget p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onTabLongClick$9(ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    xor-int/lit8 v3, p1, 0x1

    const/4 v0, 0x0

    .line 823
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 824
    sget p1, Lorg/telegram/messenger/R$string;->UnbanUserMonoforum:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->BanUserMonoforum:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 825
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda24;

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;ZJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$updateTabs$3()V
    .locals 1

    .line 606
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->isLoadingVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->loadMore()V

    :cond_0
    return-void
.end method

.method private loadMore()V
    .locals 3

    .line 757
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    .line 758
    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    :cond_0
    return-void
.end method

.method private onCloseButtonClick(Landroid/view/View;)V
    .locals 2

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->animatorCloseButtonVisibility:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private onSideMenuButtonClick(Landroid/view/View;)V
    .locals 2

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->pendingSidemenu:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuEnabled:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->animateSidemenuTo(Z)V

    return-void
.end method

.method private onTabClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 764
    iget-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz p2, :cond_0

    .line 765
    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p2, :cond_2

    .line 766
    iget-wide p3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 769
    :cond_0
    iget-wide p2, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    const-wide/16 p4, -0x2

    cmp-long p2, p2, p4

    if-nez p2, :cond_1

    .line 770
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicCreated:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 771
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 773
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p2, :cond_2

    .line 774
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onTabLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    .line 780
    iget-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->isReorderAllowed()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_14

    iget-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->isReorderAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    move-object/from16 v0, p1

    .line 781
    iget-object v0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_14

    .line 782
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 783
    iget v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 784
    iget-wide v4, v1, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v10, 0x0

    if-gez v0, :cond_1

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v10

    .line 785
    :goto_0
    iget-wide v11, v1, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    cmp-long v0, v11, v6

    if-lez v0, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_2
    move-object v11, v10

    .line 786
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v12, 0x1

    invoke-static {v0, v8, v12}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v14

    .line 788
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 789
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 790
    iget v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v5}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 794
    :cond_3
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    sget v0, Lorg/telegram/messenger/R$string;->ClearHistory:I

    .line 796
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda10;

    move-object v2, v14

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$Chat;)V

    move-object v2, v0

    move-object v0, v5

    .line 794
    invoke-virtual {v14, v11, v13, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-wide/from16 p3, v6

    .line 809
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 810
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    cmp-long v0, v12, p3

    if-eqz v0, :cond_4

    move-wide v6, v12

    .line 814
    :cond_4
    iget v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 815
    iget v2, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 816
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 817
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    sget v4, Lorg/telegram/messenger/R$string;->BanUserMonoforum:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-wide v4, v6

    move-object v6, v2

    .line 818
    invoke-virtual {v14}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    const/16 v3, 0x8

    .line 819
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget v3, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    move-object v7, v0

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda11;

    move-object v3, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/ItemOptions;JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2, v7, v6, v0}, Lorg/telegram/messenger/MessagesController;->checkIsInChat(ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;)V

    goto/16 :goto_b

    :cond_5
    :goto_2
    return v9

    :cond_6
    move-object v0, v5

    .line 852
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 854
    :cond_7
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v4, :cond_8

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_3

    :cond_8
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_3
    if-eqz v4, :cond_9

    .line 855
    sget v4, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    goto :goto_4

    :cond_9
    sget v4, Lorg/telegram/messenger/R$string;->DialogPin:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda12;

    invoke-direct {v6, v1, v14, v2, v3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 853
    invoke-virtual {v14, v5, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 863
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v4, :cond_a

    .line 864
    sget v4, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v5, Lorg/telegram/messenger/R$string;->FilterReorder:I

    .line 866
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda13;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    .line 864
    invoke-virtual {v14, v4, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 878
    :cond_a
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 879
    :cond_b
    sget v4, Lorg/telegram/messenger/R$drawable;->outline_profile_edit_24:I

    sget v5, Lorg/telegram/messenger/R$string;->EditTopic:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1, v14, v3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v14, v4, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 885
    :cond_c
    iget-object v13, v1, Lorg/telegram/ui/Components/TopicsTabsView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-wide v4, v1, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v6, v6

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->addAsItemOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ItemOptions;JJ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    .line 886
    iget-wide v6, v1, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v12, v4

    invoke-virtual {v2, v6, v7, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 888
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    goto :goto_5

    :cond_d
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    :goto_5
    if-eqz v4, :cond_e

    .line 889
    sget v4, Lorg/telegram/messenger/R$string;->Unmute:I

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v0

    move-object v7, v4

    goto :goto_7

    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->Mute:I

    goto :goto_6

    :goto_7
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda15;

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    .line 887
    invoke-virtual {v14, v6, v7, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 902
    iget v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v10, v3}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 904
    iget-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v0, :cond_f

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    goto :goto_8

    :cond_f
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    :goto_8
    if-eqz v0, :cond_10

    .line 905
    sget v0, Lorg/telegram/messenger/R$string;->RestartTopic:I

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    sget v0, Lorg/telegram/messenger/R$string;->CloseTopic:I

    goto :goto_9

    :goto_a
    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1, v14, v3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 903
    invoke-virtual {v14, v2, v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 912
    :cond_11
    iget v0, v1, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0, v10, v3}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 913
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const-string v2, "DeleteTopics"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1, v14, v3}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v14, v0, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 922
    :cond_12
    :goto_b
    instance-of v0, v8, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-eqz v0, :cond_13

    .line 923
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$6;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TopicsTabsView$6;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    const/high16 v0, 0x41800000    # 16.0f

    .line 954
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_c

    :cond_13
    const/high16 v0, 0x40a00000    # 5.0f

    .line 956
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v4, v1, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v9, v2, v0, v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(IIIII)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 958
    :goto_c
    invoke-virtual {v14}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v2, 0x1

    return v2

    :cond_14
    :goto_d
    return v9
.end method

.method private setAttached(Z)V
    .locals 2

    .line 652
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->notificationsAttached:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 653
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->notificationsAttached:Z

    if-eqz p1, :cond_1

    .line 654
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 655
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 656
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentResume(J)V

    return-void

    .line 658
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentPause(J)V

    .line 659
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 660
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private updateTabs()V
    .locals 4

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    .line 595
    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v2, v2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 605
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TopicsTabsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/TopicsTabsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private whenReordered(ILjava/util/ArrayList;)V
    .locals 4

    .line 629
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 631
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 632
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/UItem;

    iget v3, v3, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v2, v2

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->reorderPinnedTopics(JLjava/util/ArrayList;)V

    .line 635
    iget-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v2, v2

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 614
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 615
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v0, v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    return-void

    .line 618
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_2

    .line 619
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 620
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    and-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 621
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long p2, p2

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    .line 622
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateTabs()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    .line 415
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    .line 417
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginBottom:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 414
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    .line 423
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 422
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_1

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 444
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method public getTopic(J)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 6

    .line 965
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 968
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 640
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 641
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->setAttached(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 646
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 647
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView;->setAttached(Z)V

    return-void
.end method

.method public selectTopic(JZ)V
    .locals 1

    .line 997
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->mono:Z

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_1

    .line 999
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_1

    long-to-int p1, p1

    .line 1003
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setCurrentTopic(J)V
    .locals 6

    .line 976
    iput-wide p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->currentTopicId:J

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabs:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonVertical:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    cmp-long v5, p1, v2

    if-nez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 981
    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setAll(ZZZ)V

    .line 983
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->botCreateTopicButtonHorizontal:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    if-eqz v0, :cond_3

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v4

    .line 984
    :goto_1
    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setAll(ZZZ)V

    :cond_3
    return-void
.end method

.method public setOnDialogSelected(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1010
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onDialogSelected:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOnNewTopicSelected(Ljava/lang/Runnable;)V
    .locals 0

    .line 994
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicCreated:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTopicSelected(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 990
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->onTopicSelected:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setSideMenuBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 1

    .line 455
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x41800000    # 16.0f

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-void
.end method

.method public setSideMenuBackgroundMarginBottom(F)V
    .locals 0

    .line 469
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginBottom:F

    const/4 p1, 0x1

    .line 470
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->checkSideTabsPadding(Z)V

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSideMenuBackgroundMarginTop(F)V
    .locals 1

    .line 475
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideMenuBackgroundMarginTop:F

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    .line 477
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView;->checkSideTabsPadding(Z)V

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTopMenuBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 1

    .line 461
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x41900000    # 18.0f

    .line 462
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topMenuBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-void
.end method

.method public updateSidemenuPosition()V
    .locals 8

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x422c0000    # 43.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    const v1, 0x3f59999a    # 0.85f

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->topTabsContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    cmpl-float v1, v1, v3

    const/4 v2, 0x0

    const/16 v4, 0x8

    if-ltz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    sub-float v5, v3, v5

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sideTabsContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonTop:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 519
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v6, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 520
    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    sub-float/2addr v3, v7

    .line 518
    invoke-static {v4, v6, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 517
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->toggleButtonSide:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 527
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 528
    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iget v6, p0, Lorg/telegram/ui/Components/TopicsTabsView;->sidemenuT:F

    .line 526
    invoke-static {v2, v3, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonTop:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 534
    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 533
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView;->closeButtonSide:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 538
    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 537
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 542
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
