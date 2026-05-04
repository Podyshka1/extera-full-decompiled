.class public Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field closeLayout:Landroid/widget/FrameLayout;

.field containerViewsForward:Z

.field containerViewsProgress:F

.field content:Landroid/widget/FrameLayout;

.field contentHeight:I

.field enterAnimationIsRunning:Z

.field private forceAbout:Z

.field fullscreenNext:Z

.field private gradientAlpha:I

.field private final onlySelectedType:Z

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field premiumFeatures:Ljava/util/ArrayList;

.field progress:F

.field progressToFullscreenView:F

.field progressToGradient:F

.field selectedPosition:I

.field private selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field private final startType:I

.field svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field toPosition:I

.field topCurrentOffset:I

.field topGlobalOffset:I

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static synthetic $r8$lambda$T6zRECCH-ykDKTFwDE0rtn1fjM4(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1IfZOVqlTjvp0KHGozz84vI5v8(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WG6-6hPZwo33LKUv3t_HO7nyQFA(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetgradientAlpha(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonlySelectedType(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartType(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputgradientAlpha(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misFullscreenType(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->isFullscreenType(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateStatusBar(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->updateStatusBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 96
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 8

    .line 104
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    .line 108
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 9

    .line 112
    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->getResourceProvider(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    const/4 v6, 0x0

    move-object/from16 v7, p2

    .line 116
    invoke-direct {v0, v7, v6, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    const/16 v7, 0xff

    .line 90
    iput v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    .line 117
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v7, p7

    .line 118
    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 120
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 121
    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    .line 122
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    .line 124
    sget v7, Lorg/telegram/messenger/R$raw;->star_loader:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {v7}, Lorg/telegram/messenger/SvgHelper;->getDrawable(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 126
    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    const/4 v8, 0x1

    if-nez p4, :cond_1

    const/16 v9, 0x23

    if-ne v3, v9, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-static {v9, v2, v6}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-static {v9, v2, v6}, Lorg/telegram/ui/PremiumPreviewFragment;->fillBusinessFeaturesList(Ljava/util/ArrayList;IZ)V

    .line 140
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-static {v9, v2, v8}, Lorg/telegram/ui/PremiumPreviewFragment;->fillBusinessFeaturesList(Ljava/util/ArrayList;IZ)V

    :goto_1
    const/16 v9, 0x28

    if-ne v3, v9, :cond_2

    .line 145
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    sget v12, Lorg/telegram/messenger/R$drawable;->gift:I

    sget v13, Lorg/telegram/messenger/R$string;->FeaturePreviewGifts:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$string;->FeaturePreviewGiftsDescription:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v9, v12, v13, v14}, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v10, v6

    .line 150
    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 151
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v11, v11, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-ne v11, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_3
    if-eqz v4, :cond_5

    .line 158
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 159
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v6

    .line 164
    :cond_5
    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 166
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 167
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 168
    iput-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 169
    new-instance v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet1:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet2:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet3:I

    const/4 v6, -0x1

    invoke-direct {v12, v13, v14, v15, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    const/4 v13, 0x0

    .line 170
    iput v13, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const v13, 0x3f8ccccd    # 1.1f

    .line 171
    iput v13, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    const/high16 v13, 0x3fc00000    # 1.5f

    .line 172
    iput v13, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const v13, -0x41b33333    # -0.2f

    .line 173
    iput v13, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    .line 174
    iput-boolean v8, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    .line 175
    new-instance v13, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$2;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v0, v14, v12}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    .line 196
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    .line 197
    new-instance v12, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 198
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v13, 0x41400000    # 12.0f

    .line 199
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v6, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    const/16 v15, 0x64

    invoke-static {v6, v15}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    invoke-static {v13, v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/16 v14, 0x11

    const/16 v15, 0x18

    invoke-static {v15, v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    new-instance v13, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x10

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v12, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v13, 0x2

    .line 279
    invoke-virtual {v12, v13}, Landroid/view/View;->setOverScrollMode(I)V

    .line 280
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 281
    new-instance v12, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$4;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    .line 307
    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v13, v12}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 308
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iput v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {v12, v10}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 309
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v17, 0x42c80000    # 100.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x41900000    # 18.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/16 v16, 0x34

    const/high16 v17, 0x42500000    # 52.0f

    const/16 v18, 0x35

    const/high16 v20, 0x41c00000    # 24.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v10, Lorg/telegram/ui/Components/BottomPagesView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v10, v12, v13, v14}, Lorg/telegram/ui/Components/BottomPagesView;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;I)V

    .line 313
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v13, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;

    invoke-direct {v13, v0, v10}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/BottomPagesView;)V

    invoke-virtual {v12, v13}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 397
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 399
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {v10, v7, v13}, Lorg/telegram/ui/Components/BottomPagesView;->setColor(II)V

    if-nez v4, :cond_6

    .line 402
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v16, v7, 0xb

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v17, 0x5

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v12, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_6
    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v8, v5}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 405
    iget-object v5, v7, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v1, v4, v11}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    .line 447
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/high16 v21, 0x41800000    # 16.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x42400000    # 48.0f

    const/16 v18, 0x10

    const/high16 v19, 0x41800000    # 16.0f

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 449
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x44

    const/16 v5, 0x50

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v3, v9, :cond_7

    .line 452
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v3, Lorg/telegram/messenger/R$string;->Understood:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->replaceUnderstood(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v1, v3, v8, v13}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    .line 453
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 454
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13, v13}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/CharSequence;ZZ)V

    .line 457
    :cond_8
    :goto_4
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v1, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 461
    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    .line 462
    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    const/16 v2, 0x53

    .line 463
    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    .line 465
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 467
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Landroid/widget/ScrollView;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 537
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v8

    const/4 v13, 0x0

    invoke-virtual {v3, v1, v2, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;F)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTranslationYChanged(F)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private static getResourceProvider(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    if-eqz p0, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    return-object p0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isFullscreenType(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 1014
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V
    .locals 5

    .line 406
    instance-of p4, p1, Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 407
    move-object p4, p1

    check-cast p4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    .line 408
    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p4, :cond_0

    .line 409
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 412
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, p4

    :goto_1
    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 416
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryViewer;->dismissVisibleDialogs()V

    :cond_2
    if-eqz v3, :cond_3

    .line 418
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 419
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    .line 422
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    if-eqz p2, :cond_5

    goto :goto_2

    .line 438
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget p3, p3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;)V

    goto :goto_3

    .line 423
    :cond_6
    :goto_2
    new-instance p2, Lorg/telegram/ui/PremiumPreviewFragment;

    iget p3, p3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    .line 424
    instance-of p3, p1, Lorg/telegram/ui/ThemePreviewActivity;

    if-eqz p3, :cond_7

    .line 425
    new-instance p3, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p3}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 426
    iput-boolean v0, p3, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    .line 427
    iput-boolean v1, p3, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 428
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 430
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    .line 432
    :cond_8
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 434
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 440
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private setButtonText()V
    .locals 3

    .line 566
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->AboutTelegramPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 568
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    if-eqz v0, :cond_3

    .line 569
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumReactions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    return-void

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumIcons:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    return-void

    .line 576
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->AboutTelegramPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 579
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-static {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStatusBar()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 5

    const/4 v0, 0x0

    .line 1019
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 1020
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 1021
    iget v3, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v3, v1, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    if-eqz v3, :cond_0

    .line 1022
    check-cast v1, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    iget-object v0, v1, Lorg/telegram/ui/Components/Premium/BaseListPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method checkTopOffset()V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 946
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 947
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 948
    iget v5, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v6, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v6, v5, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    if-eqz v6, :cond_1

    .line 949
    check-cast v5, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    .line 950
    iget-object v0, v5, Lorg/telegram/ui/Components/Premium/BaseListPageView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    move v0, v1

    goto :goto_2

    .line 954
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    .line 960
    :cond_1
    :goto_2
    iget v5, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v6, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    if-ne v5, v6, :cond_3

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    if-eqz v5, :cond_3

    .line 961
    check-cast v4, Lorg/telegram/ui/Components/Premium/BaseListPageView;

    .line 962
    iget-object v2, v4, Lorg/telegram/ui/Components/Premium/BaseListPageView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    move v2, v1

    goto :goto_4

    .line 966
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 973
    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v0, :cond_5

    .line 975
    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    sub-float v5, v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v5

    int-to-float v6, v3

    sub-float v5, v4, v5

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 976
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ltz v2, :cond_6

    .line 979
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 980
    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    int-to-float v5, v5

    sub-float v0, v4, v0

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 982
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    sub-float v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 983
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 986
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 988
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_6
    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    mul-float/2addr v2, v5

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 989
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    if-eq v3, v0, :cond_d

    .line 990
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    move v0, v1

    .line 991
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 992
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topViewOnFullHeight:Z

    if-nez v2, :cond_9

    .line 993
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 997
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1000
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_b

    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_9

    :cond_b
    const/high16 v2, 0x41f00000    # 30.0f

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_c

    move v1, v3

    .line 1001
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0, v1, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_d
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 683
    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-eq p1, p2, :cond_3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 686
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 689
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    :cond_2
    return-void

    .line 684
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    return-void
.end method

.method public dismiss()V
    .locals 5

    .line 650
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 652
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 653
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 654
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 656
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public dismissInternal()V
    .locals 4

    .line 661
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 665
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 666
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 667
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    .line 669
    :try_start_0
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 671
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 673
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    .line 674
    iput-boolean v0, v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoPlayEnabled:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    :cond_3
    return-void
.end method

.method getViewForPosition(Landroid/content/Context;I)Landroid/view/View;
    .locals 7

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 865
    iget v0, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v0, :cond_0

    .line 866
    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 867
    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/BaseListPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$9;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p2

    :cond_0
    const/16 v1, 0xe

    const/16 v2, 0x1c

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 896
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$11;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$11;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;I)V

    return-object p2

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 905
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2

    .line 907
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget v5, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;-><init>(Landroid/content/Context;Lorg/telegram/messenger/SvgHelper$SvgDrawable;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v1

    :cond_4
    :goto_0
    if-ne v0, v2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 884
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/FeaturesPageView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Premium/FeaturesPageView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 885
    iget-object p1, v0, Lorg/telegram/ui/Components/Premium/BaseListPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$10;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 591
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 593
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 594
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 595
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 597
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 612
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setExtraHeight(I)V

    .line 620
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$8;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    neg-int v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->UpgradedStories:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 636
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_1

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramBusiness:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 639
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v0, 0x28

    if-ne p1, v0, :cond_2

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->FeaturePreviewGifts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 643
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void
.end method

.method protected onCustomOpenAnimation()Z
    .locals 5

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 915
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-eqz v3, :cond_0

    .line 916
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    .line 917
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 918
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;->setOffset(F)V

    .line 919
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    .line 920
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 926
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$13;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$13;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x1f4

    .line 934
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 935
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 936
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 937
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 940
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    return v0
.end method

.method public setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;
    .locals 1

    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    return-object p0
.end method

.method public show()V
    .locals 5

    .line 585
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 586
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
