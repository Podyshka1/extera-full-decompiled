.class public Lorg/telegram/ui/Gifts/GiftSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;,
        Lorg/telegram/ui/Gifts/GiftSheet$Tabs;,
        Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;,
        Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;,
        Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;,
        Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;,
        Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;
    }
.end annotation


# instance fields
.field private TAB_ALL:I

.field private TAB_COLLECTIBLES:I

.field private TAB_IN_STOCK:I

.field private TAB_LIMITED:I

.field private TAB_MY_GIFTS:I

.field private TAB_RESALE:I

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

.field private birthday:Z

.field private final closeParentSheet:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private final dialogId:J

.field private final itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private final layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private final myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private final name:Ljava/lang/String;

.field private options:Ljava/util/List;

.field private final premiumHeaderView:Landroid/widget/FrameLayout;

.field private final premiumTiers:Ljava/util/ArrayList;

.field private selectedTab:I

.field private final self:Z

.field private shownCollectiblesInfo:Z

.field private final starsHeaderView:Landroid/widget/LinearLayout;

.field private final subtitleCollectiblesStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final subtitleStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final tabs:Ljava/util/ArrayList;

.field private final topView:Landroid/widget/FrameLayout;

.field private userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;


# direct methods
.method public static synthetic $r8$lambda$3__Xz9_1I8AU4EK5xuV574ocyBI(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$12(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3dkE23YxP0eT28ZcAWx7zHxtNUw(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 424
    aget-object p2, p2, v0

    if-ne p2, p0, :cond_0

    .line 425
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$4N1pFkCrEvN4Jez2JRLEHgXdGPU(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$15(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5QCDaOBrYaMFNcvt65jXe315Hu4(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$18(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B9rStjdyI_DEHigntH45Qnn7-Jk(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$19(Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNMsZHoczJsyapMiKS4BlBwvUOw(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$17(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BWHgLBI1xuuSDJlJhhRqd8BDE2o(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 0

    .line 946
    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$C1-ONWB6TTKtl15l_B2Z5iU2tJw(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ESXse9-oDRnPDUBqEuWe03D3rMo(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$16(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FK8p8NZpqmTOxQzQi0Cfq-YRKXU(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;JLjava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$5(Lorg/telegram/ui/Stars/StarsController$GiftsList;JLjava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSCej1TuvnAyxiD8uWvIfr9SGf0()V
    .locals 4

    .line 286
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v2, 0x1

    .line 291
    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    .line 292
    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 293
    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v3, "gifts"

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method public static synthetic $r8$lambda$HVG8eWI9lpLVXTPeUZB_CD-TAgg(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$23(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5-VczxiNOq3xbcZ9_OD-IWKxG0(Lorg/telegram/ui/Gifts/GiftSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->selectTab(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pi5ow4YrLC4tf07pJefeOojcV60(Lorg/telegram/ui/Gifts/GiftSheet;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$1(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2mlcXh5adesNKaFjFxL2RntBis(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$9(Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5Wa6LTeG4ehyAwYHXOATrTbi9c(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$10(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUFXsp9t2Unk8m8ATPMnCO7ps6g()Z
    .locals 1

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic $r8$lambda$ZaFEO8qSJPLtjtwv39ZkaEcYZS8(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$3(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8_5QDLBHBSn2RCZiyK3pcD2eh4(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$fillItems$24(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_hx9q7bgFn_3uBtvh5mEihUcGic(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 507
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cxtX7gdoubyl2bzLgsinQRA62fw(Lorg/telegram/ui/Gifts/GiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$dFVK0RIwDf0F5K2mEwNoq0fE1NI(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$14(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$he0SNnoQC6Wqq9QAUZnIPDoZHe4(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$7(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8jXmfj12awq0_DEP1g_1kRF_lc(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$13(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n1Ljdvs3KgElThl7Ovu6Pd457TM(Landroid/content/Context;)V
    .locals 1

    .line 401
    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$nv6MU1DvjNe4ZH6kIk1SxZenpIE(Lorg/telegram/ui/Gifts/GiftSheet;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$22(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/Runnable;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p5

    .line 179
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
    .locals 26

    move/from16 v7, p2

    move-wide/from16 v8, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 183
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v2, v1

    move-object v1, v0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 167
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    .line 168
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    .line 169
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    .line 170
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    .line 171
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_RESALE:I

    .line 172
    iput v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_COLLECTIBLES:I

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Gifts/GiftSheet;->tabs:Ljava/util/ArrayList;

    .line 185
    iput v7, v1, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    .line 186
    iput-wide v8, v1, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    .line 187
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v3, v3, v8

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    iput-boolean v3, v1, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    move-object/from16 v5, p5

    .line 188
    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    move-object/from16 v5, p6

    .line 189
    iput-object v5, v1, Lorg/telegram/ui/Gifts/GiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    .line 190
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 191
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 192
    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 194
    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    .line 196
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v11, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_2

    .line 200
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 201
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    .line 202
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 203
    invoke-virtual {v6, v13, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 205
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v11

    .line 206
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v14, v8, v14

    if-eqz v14, :cond_1

    if-eqz v11, :cond_1

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iput-object v14, v1, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-nez v11, :cond_4

    .line 208
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v13, v10, v4}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_3

    .line 211
    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    neg-long v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    if-nez v13, :cond_3

    .line 212
    const-string v14, ""

    goto :goto_2

    :cond_3
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    iput-object v14, v1, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 214
    invoke-virtual {v6, v13, v11}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_4
    :goto_3
    const v11, 0x3dcccccd    # 0.1f

    .line 216
    iput v11, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 218
    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    iget-object v13, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v2, v7, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v1, Lorg/telegram/ui/Gifts/GiftSheet;->balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    .line 219
    invoke-static {v11}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 220
    new-instance v13, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda3;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/Gifts/GiftSheet;->premiumHeaderView:Landroid/widget/FrameLayout;

    .line 234
    new-instance v14, Lorg/telegram/ui/Gifts/GiftSheet$1;

    invoke-direct {v14, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;)V

    iput-object v14, v1, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    .line 243
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 244
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v15, 0x46

    .line 246
    invoke-static {v2, v15, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v15

    move/from16 v16, v10

    const/high16 v10, -0x40800000    # -1.0f

    .line 247
    invoke-static {v0, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v14, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v10, 0x42280000    # 42.0f

    .line 249
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v22, 0x0

    const/high16 v23, 0x41880000    # 17.0f

    const/16 v17, 0x54

    const/high16 v18, 0x42a80000    # 84.0f

    const/16 v19, 0x11

    const/16 v20, 0x0

    const/high16 v21, 0x41700000    # 15.0f

    .line 250
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v14, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 252
    new-instance v10, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda4;

    invoke-direct {v10, v1, v8, v9}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;J)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v22, -0x3ee00000    # -10.0f

    const/16 v23, 0x0

    const/16 v17, -0x2

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x35

    const/high16 v21, -0x3fc00000    # -3.0f

    .line 258
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v14, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, -0x2

    const/16 v11, 0x37

    .line 263
    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41a00000    # 20.0f

    .line 266
    invoke-virtual {v0, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 267
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v13, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v13, 0x11

    .line 269
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x4

    const/16 v21, 0x0

    .line 270
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 273
    new-instance v14, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v15, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v14, v2, v15}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 274
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 275
    invoke-virtual {v14, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setGravity(I)V

    const v10, 0x40151eb8    # 2.33f

    .line 278
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v14, v10, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v24, 0x4

    const/16 v25, 0xc

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v23, 0x4

    .line 279
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v14, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    sget v6, Lorg/telegram/messenger/R$string;->Gift2Premium:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget v0, Lorg/telegram/messenger/R$string;->Gift2PremiumInfo:I

    iget-object v6, v1, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v16

    .line 283
    invoke-static {v0, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v6, Lorg/telegram/messenger/R$string;->Gift2PremiumInfoLink:I

    .line 285
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v10, 0x3

    new-array v13, v10, [Ljava/lang/CharSequence;

    aput-object v0, v13, v16

    const-string v0, " "

    aput-object v0, v13, v4

    const/4 v0, 0x2

    aput-object v6, v13, v0

    .line 282
    invoke-static {v13}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    .line 299
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->starsHeaderView:Landroid/widget/LinearLayout;

    .line 300
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41a00000    # 20.0f

    .line 303
    invoke-virtual {v6, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    iget-object v13, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v13, 0x11

    .line 306
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v25, 0x0

    const/16 v23, 0x0

    .line 307
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v13, Lorg/telegram/ui/Gifts/GiftSheet$2;

    iget-object v14, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v13, v1, v2, v14}, Lorg/telegram/ui/Gifts/GiftSheet$2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v1, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 316
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 317
    invoke-virtual {v13, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    iget-object v14, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v14, 0x11

    .line 319
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    new-instance v14, Lorg/telegram/ui/Gifts/GiftSheet$3;

    iget-object v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v14, v1, v2, v10}, Lorg/telegram/ui/Gifts/GiftSheet$3;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v1, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleCollectiblesStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 328
    iget-object v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 329
    invoke-virtual {v14, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    iget-object v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    .line 331
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x0

    .line 332
    invoke-virtual {v14, v10}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x3f59999a    # 0.85f

    .line 333
    invoke-virtual {v14, v10}, Landroid/view/View;->setScaleX(F)V

    .line 334
    invoke-virtual {v14, v10}, Landroid/view/View;->setScaleY(F)V

    .line 336
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v24, 0x41d00000    # 26.0f

    const/16 v25, 0x0

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x31

    const/high16 v22, 0x41d00000    # 26.0f

    const/16 v23, 0x0

    .line 337
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-gez v12, :cond_5

    .line 340
    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsChannel:I

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsSelf:I

    goto :goto_4

    :cond_6
    sget v4, Lorg/telegram/messenger/R$string;->Gift2Stars:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_7

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x9

    .line 342
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 345
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v4, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    .line 346
    invoke-virtual {v3, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 347
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    .line 348
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v22, 0x1a

    const/16 v23, 0x6

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x1a

    const/16 v21, 0x4

    .line 349
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsSelfInfo1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsSelfInfo2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const/4 v5, 0x3

    goto/16 :goto_6

    :cond_7
    if-gez v12, :cond_8

    const/16 v22, 0x0

    const/16 v23, 0x4

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x9

    .line 354
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-static {v13}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 356
    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsChannelInfo:I

    iget-object v3, v1, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v16

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    move/from16 v4, v16

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x9

    .line 358
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    move-object v2, v0

    .line 361
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda6;

    move-object/from16 v6, p1

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;JLjava/lang/Runnable;Landroid/content/Context;)V

    move-object v3, v0

    move-object v0, v2

    move-object v2, v6

    .line 410
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 411
    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$4;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/Gifts/GiftSheet$4;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 420
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_9

    .line 421
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    .line 423
    :cond_9
    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    new-instance v8, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda7;

    invoke-direct {v8, v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v13, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    .line 430
    :goto_6
    new-instance v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 431
    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Gifts/GiftSheet$5;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 442
    iget-object v3, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 443
    iget-object v3, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 444
    iget-object v3, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 445
    iget-object v3, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 446
    iget-object v0, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 447
    iget-object v0, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 448
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$6;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$6;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 454
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 455
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    const-wide/16 v3, 0x15e

    .line 456
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 457
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x28

    .line 458
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayIncrement(J)V

    .line 459
    iget-object v3, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 460
    iget-object v8, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda8;

    move-wide/from16 v5, p3

    move-object/from16 v4, p6

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILjava/lang/Runnable;J)V

    move-wide v3, v5

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 646
    invoke-direct {v1}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    .line 647
    iget-object v0, v1, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 648
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 650
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/BirthdayController;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 651
    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday()Lorg/telegram/ui/Gifts/GiftSheet;

    .line 654
    :cond_a
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 655
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 656
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 657
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 658
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 660
    iget-object v0, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/GiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private synthetic lambda$fillItems$24(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 3

    .line 935
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 936
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    :goto_0
    xor-int/2addr p1, v1

    return p1

    .line 937
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    return v1

    .line 940
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    goto :goto_0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    iget-wide v0, p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    .line 225
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v1, 0x0

    .line 226
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 227
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(JLandroid/view/View;)V
    .locals 0

    .line 253
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    .line 256
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 1

    .line 499
    invoke-virtual {p5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    .line 500
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p5, p4, p1}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$12(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 540
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 550
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 552
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$14(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 570
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V
    .locals 10

    .line 568
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$10;

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    new-instance v7, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda22;

    invoke-direct {v7, p0, p4}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    iget-boolean p4, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v3, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz p4, :cond_1

    iget-boolean p4, p4, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz p4, :cond_1

    move v9, v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v2, p1

    goto :goto_1

    :cond_1
    move v9, v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p0

    :goto_1
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Gifts/GiftSheet$10;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/Runnable;ZZ)V

    .line 578
    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$16(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 602
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 604
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 606
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    .line 607
    invoke-virtual {p4, p3}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 588
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 590
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGiftResultOk;

    if-eqz p1, :cond_0

    .line 591
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 592
    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGiftResultFail;

    if-eqz p1, :cond_1

    .line 593
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGiftResultFail;

    .line 594
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p3, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p3, Lorg/telegram/messenger/R$string;->GiftLocked:I

    .line 595
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGiftResultFail;->reason:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 p3, 0x0

    .line 596
    invoke-static {p2, p3}, Lorg/telegram/messenger/MessageObject;->formatTextWithEntities(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 597
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 599
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getMessageTextView()Landroid/widget/TextView;

    move-result-object p2

    .line 600
    instance-of p3, p2, Lorg/telegram/ui/Components/EffectsTextView;

    if-eqz p3, :cond_2

    .line 601
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/EffectsTextView;

    new-instance p5, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda25;

    invoke-direct {p5, p0, p1, p4, p2}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setOnLinkPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 612
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$18(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 587
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda23;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$19(Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V
    .locals 14

    move-object/from16 v7, p3

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v2, 0x1

    add-int/lit8 v3, p7, -0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 464
    :cond_0
    const-class v3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 465
    iget-object v3, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v4, :cond_1

    .line 466
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 467
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$7;

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v7}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    move-object v1, p0

    move/from16 v3, p2

    move-object v7, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Gifts/GiftSheet$7;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;)V

    .line 477
    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->show()V

    return-void

    .line 479
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v4, :cond_e

    .line 480
    move-object v9, v3

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 481
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v11, 0x0

    if-eqz v3, :cond_5

    iget v4, p0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v4, v5, :cond_5

    .line 483
    iget-object v0, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    const/4 v8, 0x0

    if-ge v11, v2, :cond_3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 484
    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v12, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_2

    move-object v9, v3

    goto :goto_0

    :cond_3
    move-object v9, v8

    :goto_0
    if-nez v9, :cond_4

    goto/16 :goto_1

    .line 492
    :cond_4
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$8;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p0

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$8;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 497
    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object v2

    .line 498
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;

    move-wide/from16 v3, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;)V

    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransferAlert(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_5
    move-wide/from16 v3, p4

    move-object v10, v7

    .line 515
    iget-boolean v0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v0, :cond_7

    iget-wide v5, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    .line 516
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v12

    if-nez v12, :cond_6

    goto/16 :goto_1

    .line 518
    :cond_6
    new-instance v13, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v13}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 519
    iput-boolean v2, v13, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 520
    iput-boolean v11, v13, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    .line 523
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda14;-><init>()V

    move-object v2, v0

    .line 525
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$9;

    iget-object v4, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    iget-wide v5, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p0

    move-object v9, v2

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Gifts/GiftSheet$9;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object v1, v0

    .line 538
    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v10}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setCloseParentSheet(Ljava/lang/Runnable;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    .line 544
    invoke-virtual {v12, v1, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 547
    :cond_7
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction:Z

    if-eqz v1, :cond_8

    .line 548
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-wide v6, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    new-instance v8, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0, v10}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    move-object v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Gifts/AuctionJoinSheet;->show(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IJJLjava/lang/Runnable;)V

    return-void

    .line 557
    :cond_8
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-eqz v1, :cond_9

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p1

    move/from16 v3, p2

    invoke-static {p1, v3, v9, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showSoldOutGiftSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    :cond_9
    move-object v2, p1

    move/from16 v3, p2

    .line 561
    iget-boolean v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited_per_user:Z

    if-eqz v1, :cond_a

    iget v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->per_user_remains:I

    if-gtz v1, :cond_a

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    .line 563
    invoke-virtual {v9}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const-string v3, "Gift2PerUserLimit"

    iget v4, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->per_user_total:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 567
    :cond_a
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V

    .line 581
    iget v2, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->locked_until_date:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 582
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v3, 0x1f4

    .line 583
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 585
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGift;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGift;-><init>()V

    .line 586
    iget-wide v6, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stars$checkCanSendGift;->gift_id:J

    .line 587
    invoke-static/range {p2 .. p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, v2, v0, v5}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 617
    :cond_b
    iget-boolean v2, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    if-eqz v2, :cond_d

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_d

    .line 618
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_1

    .line 620
    :cond_c
    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    const/4 v8, 0x0

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 621
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 622
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, 0x4

    invoke-direct {v2, v0, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;II)V

    .line 623
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$11;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Gifts/GiftSheet$11;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 634
    invoke-virtual {v9}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 635
    iput-object v0, v4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    .line 636
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    .line 637
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    return-void

    .line 641
    :cond_d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Runnable;J)V
    .locals 2

    .line 388
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    if-eqz p1, :cond_1

    .line 392
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 394
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 395
    const-string v1, "user_id"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 396
    const-string p2, "open_gifts"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stars/StarsController$GiftsList;JLjava/lang/Runnable;Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    .line 363
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 364
    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsCollectibleInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsInfo:I

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 365
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 366
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 367
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v7, v0

    .line 368
    :goto_2
    iget-object v8, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 369
    iget-object v8, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v8, :cond_1

    .line 370
    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v8, :cond_1

    .line 371
    invoke-virtual {v8}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 372
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 373
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 378
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 379
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 380
    sget v7, Lorg/telegram/messenger/R$string;->Gift2StarsInfoProfileLink:I

    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v0

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u00a0"

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 383
    const-string v7, "\u2060e"

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v8, p0, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 386
    :cond_3
    const-string v4, "\u00a0>"

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p4, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;J)V

    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v6, p5

    goto :goto_4

    .line 400
    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsInfoLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda11;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-nez v1, :cond_5

    .line 405
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleCollectiblesStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 406
    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 469
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 501
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    if-eqz p2, :cond_0

    .line 503
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    if-eqz p4, :cond_1

    .line 507
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda26;

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$21()V
    .locals 2

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 873
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$22(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    .line 855
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    .line 856
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 857
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 858
    invoke-virtual {v5, p2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    .line 860
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_0

    .line 861
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v0

    goto :goto_0

    .line 868
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v2, p2, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 869
    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setPricePerMonthRegular(J)V

    goto :goto_1

    .line 871
    :cond_3
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$23(Ljava/util/List;)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 882
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    .line 883
    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptionsByBilling(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    .line 884
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 885
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    .line 887
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private selectTab(I)V
    .locals 1

    .line 1039
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1040
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    .line 1041
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimations()V

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private updatePremiumTiers()V
    .locals 11

    .line 819
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x0

    :goto_0
    if-ltz v2, :cond_5

    .line 824
    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    .line 825
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    const-string v7, "XTR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 827
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eq v8, v5, :cond_1

    .line 828
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_2
    move-object v8, v1

    .line 833
    :goto_1
    new-instance v6, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-direct {v6, v5, v8}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Ljava/lang/Object;)V

    .line 834
    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 836
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v7

    cmp-long v5, v7, v3

    if-lez v5, :cond_4

    .line 837
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v3

    goto :goto_2

    .line 839
    :cond_3
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 840
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    const-string v7, "inapp"

    .line 841
    invoke-virtual {v5, v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    .line 842
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    .line 843
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v5

    .line 840
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 846
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 848
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setPricePerMonthRegular(J)V

    goto :goto_3

    .line 850
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 852
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 879
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 880
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)I

    :cond_8
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 904
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p1, 0x0

    .line 905
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 769
    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-ne p1, p2, :cond_0

    .line 770
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    return-void

    .line 771
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 772
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_a

    .line 773
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 775
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_7

    .line 776
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 777
    :cond_2
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_5

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_5

    .line 779
    iget p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    .line 780
    iget-wide p2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz p1, :cond_4

    .line 781
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz p2, :cond_4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz p1, :cond_4

    .line 782
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    .line 783
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 785
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 789
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_5

    .line 790
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 794
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 795
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_a

    .line 797
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 800
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    if-ne p1, p2, :cond_9

    .line 801
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 802
    :cond_8
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 803
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2SoldOutTitle:I

    .line 804
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gift2SoldOutCount"

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 805
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_a

    .line 807
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 809
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_a

    .line 810
    aget-object p1, p3, v0

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-ne p1, p2, :cond_a

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_a

    .line 812
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 759
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 760
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 761
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 762
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 763
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 764
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 911
    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    const-wide/16 v3, 0x0

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    iget-wide v8, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long v2, v8, v3

    if-ltz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-nez v2, :cond_3

    .line 912
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumHeaderView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 916
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    .line 917
    invoke-static {v10}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Lorg/telegram/ui/Components/UItem;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 920
    :cond_1
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 921
    invoke-static {v2, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 922
    invoke-static {v2, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v7

    .line 926
    :goto_1
    iget v8, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v8

    .line 928
    iget-boolean v9, v0, Lorg/telegram/ui/Gifts/GiftSheet;->birthday:Z

    if-eqz v9, :cond_4

    .line 929
    iget-object v9, v8, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    goto :goto_2

    .line 931
    :cond_4
    iget-object v9, v8, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    .line 933
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v10, :cond_5

    .line 934
    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda19;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    .line 942
    invoke-static {v10}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 945
    :cond_5
    iget-wide v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long v10, v10, v3

    if-gez v10, :cond_6

    .line 946
    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda20;

    invoke-direct {v10}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v10}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 950
    :cond_6
    iget-wide v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    iget v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 951
    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v10, :cond_8

    .line 952
    iget-object v10, v10, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v7

    :cond_7
    if-ge v12, v11, :cond_8

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 953
    iget-object v13, v13, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v13, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v13, :cond_7

    move v10, v6

    goto :goto_3

    :cond_8
    move v10, v7

    .line 960
    :goto_3
    iget v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessagesController;->stargiftsBlocked:Z

    const/high16 v12, 0x43960000    # 300.0f

    if-nez v11, :cond_1f

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v11, :cond_1f

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v11, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v11, :cond_1f

    iget-object v11, v11, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1f

    :cond_9
    if-nez v2, :cond_a

    .line 962
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/high16 v2, 0x41800000    # 16.0f

    .line 964
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->starsHeaderView:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 969
    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v11, :cond_b

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v11, :cond_c

    :cond_b
    move v11, v7

    .line 970
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_c

    .line 971
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 972
    iget-wide v13, v13, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 979
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, -0x1

    .line 980
    iput v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    iput v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    iput v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    iput v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    .line 981
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 982
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    .line 983
    sget v11, Lorg/telegram/messenger/R$string;->Gift2TabAll:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_d
    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v11, :cond_e

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v11, :cond_f

    :cond_e
    if-eqz v10, :cond_f

    .line 986
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    .line 987
    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabMine:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_COLLECTIBLES:I

    .line 990
    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabCollectibles:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    new-instance v11, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda21;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {v6, v2, v10, v11}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;->asTabs(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_COLLECTIBLES:I

    if-ne v2, v10, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    if-nez v2, :cond_10

    iget-wide v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long v2, v10, v3

    if-ltz v2, :cond_10

    move v2, v6

    goto :goto_6

    :cond_10
    move v2, v7

    :goto_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/GiftSheet;->setShowCollectiblesInfo(Z)V

    .line 996
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v2, v10, :cond_12

    .line 997
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 998
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v7

    :cond_11
    :goto_7
    if-ge v11, v10, :cond_12

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 999
    iget-object v13, v13, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v14, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v14, :cond_11

    .line 1000
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    move v2, v7

    move v10, v2

    .line 1007
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1b

    .line 1008
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1009
    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    if-eq v13, v11, :cond_13

    iget v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-eq v13, v11, :cond_13

    iget v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_COLLECTIBLES:I

    move-wide/from16 v20, v3

    if-ne v13, v11, :cond_1a

    iget-wide v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v3, v3, v20

    if-gtz v3, :cond_14

    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    if-nez v3, :cond_14

    iget v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->locked_until_date:I

    if-eqz v3, :cond_1a

    goto :goto_9

    :cond_13
    move-wide/from16 v20, v3

    .line 1014
    :cond_14
    :goto_9
    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-nez v3, :cond_17

    iget-wide v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v3, v3, v20

    if-lez v3, :cond_17

    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_COLLECTIBLES:I

    if-eq v13, v3, :cond_17

    .line 1015
    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v13, v3, :cond_15

    move v15, v6

    goto :goto_a

    :cond_15
    move v15, v7

    :goto_a
    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v3, :cond_16

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v3, :cond_16

    move/from16 v16, v6

    goto :goto_b

    :cond_16
    move/from16 v16, v7

    :goto_b
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    .line 1018
    :cond_17
    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v13, v3, :cond_18

    move v15, v6

    goto :goto_c

    :cond_18
    move v15, v7

    :goto_c
    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v3, :cond_19

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v3, :cond_19

    move/from16 v16, v6

    goto :goto_d

    :cond_19
    move/from16 v16, v7

    :goto_d
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x1

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v6

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v3, v20

    goto/16 :goto_8

    .line 1022
    :cond_1b
    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    const/4 v4, 0x6

    const/4 v7, 0x5

    const/4 v9, 0x4

    if-ne v2, v3, :cond_1c

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v11, :cond_1c

    iget-boolean v13, v11, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez v13, :cond_1c

    .line 1023
    invoke-virtual {v11}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    .line 1024
    invoke-static {v9, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-static {v7, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 1027
    iget-boolean v2, v8, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    if-eqz v2, :cond_1d

    .line 1028
    invoke-static {v9, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-static {v7, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_e
    const/16 v2, 0x9

    if-ge v10, v2, :cond_1e

    goto :goto_f

    :cond_1e
    const/high16 v12, 0x42200000    # 40.0f

    .line 1032
    :goto_f
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1033
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v2, :cond_20

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v2, :cond_20

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1034
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 896
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    if-eqz v0, :cond_0

    .line 897
    sget v0, Lorg/telegram/messenger/R$string;->Gift2TitleSelf1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 899
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Gift2User:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setBirthday()Lorg/telegram/ui/Gifts/GiftSheet;
    .locals 1

    const/4 v0, 0x1

    .line 702
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object v0

    return-object v0
.end method

.method public setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;
    .locals 1

    .line 706
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->birthday:Z

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-object p0
.end method

.method public setShowCollectiblesInfo(Z)V
    .locals 7

    .line 666
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->shownCollectiblesInfo:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 668
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->shownCollectiblesInfo:Z

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 670
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f59999a    # 0.85f

    if-nez p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 671
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 672
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x17c

    .line 673
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 674
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->subtitleCollectiblesStarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    move v1, v2

    .line 677
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    .line 678
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    .line 679
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 680
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 681
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 682
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public show()V
    .locals 6

    .line 687
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v0, :cond_2

    .line 692
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 694
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void

    .line 698
    :cond_2
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
