.class Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PremiumPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field private final imageFrameLayout:Landroid/widget/FrameLayout;

.field private final imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private setTierListViewVisibility:Z

.field private final subtitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;

.field private tierListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private tierListViewVisible:Z

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$75VEInlNwfBLjtOQiegIwMjADGk(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_EL8VF1IqGedQlHc64RgLkCvawA(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$new$1(Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEjnUsB_E-MdrkhzTY4VLmpCKRk(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->lambda$updateText$2(Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetimageFrameLayout(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettierListView(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmeasureGradient(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->measureGradient(II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    .line 1726
    iput-object v5, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    .line 1727
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 1728
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1729
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    .line 1730
    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v0

    if-ne v0, v7, :cond_0

    const/16 v0, 0xaf

    goto :goto_0

    :cond_0
    const/16 v0, 0xbe

    .line 1731
    :goto_0
    invoke-static {v0, v0, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$1;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetwhiteBackground(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v3

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v4

    const/4 v9, 0x0

    if-ne v4, v7, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/content/Context;IILorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 1754
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1755
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1756
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1758
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41b00000    # 22.0f

    .line 1759
    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1760
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1761
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1762
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v7, :cond_2

    move v15, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x14

    move v15, v3

    :goto_2
    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x10

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 1765
    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 1766
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1767
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, -0x1

    const/4 v15, 0x7

    .line 1768
    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/content/Context;Lorg/telegram/ui/PremiumPreviewFragment;)V

    iput-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    .line 1812
    invoke-virtual {v0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1813
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1814
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$3;

    invoke-direct {v3, v1, v5, v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$3;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1854
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1907
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1908
    new-array v2, v4, [F

    .line 1909
    iget-object v3, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v0, v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/graphics/Path;[F)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorTransformer(Landroidx/core/util/Consumer;)V

    .line 1926
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1927
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1928
    iget-object v0, v1, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1930
    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updatePremiumTiers()V

    .line 1931
    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->updateText()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 5

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1858
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz p2, :cond_b

    .line 1859
    check-cast p1, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1860
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 1861
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$mupdateButtonText(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    .line 1862
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    const/4 p2, 0x0

    move v1, p2

    .line 1864
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1865
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1866
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_1

    .line 1867
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1868
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1869
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1874
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1875
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1876
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_3

    .line 1877
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1878
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1879
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, p2

    .line 1884
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1885
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1886
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_5

    .line 1887
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1888
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 1889
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, p2

    .line 1894
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1895
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1896
    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    if-eqz v3, :cond_7

    .line 1897
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    .line 1898
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->getTier()Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 1899
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->setChecked(ZZ)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1904
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v2, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v2}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move v0, p2

    :cond_a
    :goto_4
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/graphics/Path;[FLandroid/graphics/Canvas;)V
    .locals 6

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1911
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1913
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 1914
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1915
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    .line 1916
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v3, 0x4

    if-nez v0, :cond_1

    .line 1918
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1920
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 1921
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    invoke-static {p2, v3, v1, v0}, Ljava/util/Arrays;->fill([FIIF)V

    .line 1923
    :cond_2
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, p2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1924
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private synthetic lambda$updateText$2(Landroid/view/View;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 2061
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2062
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2063
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 2064
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 2066
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/4 p3, 0x0

    .line 2067
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2069
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eq v0, v1, :cond_1

    .line 2071
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->imageFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/high16 v1, 0x41700000    # 15.0f

    .line 2072
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v2, v1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 2074
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v2, v1

    .line 2076
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1936
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1937
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-virtual {v4, v3, v0}, Lorg/telegram/ui/Components/Premium/PremiumTierCell;->bind(Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Z)V

    .line 1938
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1939
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->yOffset:I

    .line 1940
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->dummyTierCell:Lorg/telegram/ui/Components/Premium/PremiumTierCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput v2, p1, Lorg/telegram/ui/PremiumPreviewFragment;->totalTiersGradientHeight:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public updatePremiumTiers()V
    .locals 19

    move-object/from16 v0, p0

    .line 1953
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1954
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v2, -0x1

    iput v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    const/4 v3, 0x0

    .line 1955
    iput-object v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1957
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v1

    const/16 v4, 0xc

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_5

    .line 1958
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->period_options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v12, v6

    move-wide v10, v7

    :cond_0
    :goto_0
    if-ge v12, v9, :cond_4

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    .line 1959
    iget-object v14, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v14

    if-eqz v14, :cond_1

    iget-boolean v14, v13, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->can_purchase_upgrade:Z

    if-nez v14, :cond_1

    iget-boolean v14, v13, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-nez v14, :cond_1

    goto :goto_0

    .line 1963
    :cond_1
    new-instance v14, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-direct {v14, v13}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;)V

    .line 1964
    iget-object v15, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v15, v15, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    iget-object v15, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v15}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetselectAnnualByDefault(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1966
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    if-ne v15, v4, :cond_2

    .line 1967
    iget-object v15, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/16 v16, 0x1

    iget-object v5, v15, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v15, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    .line 1970
    :goto_1
    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-eqz v5, :cond_3

    .line 1971
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v14, v5, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1973
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1974
    invoke-virtual {v14}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v17

    cmp-long v5, v17, v10

    if-lez v5, :cond_0

    .line 1975
    invoke-virtual {v14}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v10

    goto :goto_0

    :cond_4
    :goto_2
    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    move-wide v10, v7

    goto :goto_2

    .line 1980
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1981
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1982
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    goto :goto_5

    .line 1983
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->getLastPremiumTransaction()Ljava/lang/String;

    move-result-object v1

    .line 1984
    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget-object v5, v5, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->subscriptionOption:Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1985
    const-string v9, "^(.*?)(?:\\.\\.\\d*|)$"

    const-string v12, "$1"

    invoke-virtual {v5, v9, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v3

    .line 1983
    :goto_4
    invoke-static {v1, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    if-eqz v1, :cond_a

    .line 1986
    invoke-virtual {v1}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 1987
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1988
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->currentSubscriptionTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1991
    :cond_a
    :goto_5
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1992
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v6

    :goto_6
    if-ge v5, v3, :cond_11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 1993
    invoke-virtual {v7, v10, v11}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setPricePerYearRegular(J)V

    goto :goto_6

    .line 1995
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v1, :cond_11

    .line 1999
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v6

    move v9, v5

    :cond_c
    :goto_7
    if-ge v9, v3, :cond_e

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 2000
    sget-object v11, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    .line 2002
    invoke-virtual {v10}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-lez v11, :cond_d

    .line 2003
    invoke-virtual {v10}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getPricePerYear()J

    move-result-wide v7

    .line 2006
    :cond_d
    invoke-virtual {v10}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v10

    if-eqz v10, :cond_c

    move/from16 v5, v16

    goto :goto_7

    :cond_e
    if-eqz v5, :cond_10

    move v1, v6

    .line 2012
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 2013
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 2014
    invoke-virtual {v3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getOfferDetails()Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v3

    if-nez v3, :cond_f

    .line 2015
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2021
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v6

    :goto_9
    if-ge v5, v3, :cond_11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 2022
    invoke-virtual {v9, v7, v8}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->setPricePerYearRegular(J)V

    goto :goto_9

    .line 2026
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    if-ne v1, v2, :cond_14

    move v1, v6

    .line 2027
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 2028
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 2029
    invoke-virtual {v3}, Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;->getMonths()I

    move-result v3

    if-ne v3, v4, :cond_12

    .line 2030
    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput v1, v3, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    goto :goto_b

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2034
    :cond_13
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    if-ne v3, v2, :cond_14

    .line 2035
    iput v6, v1, Lorg/telegram/ui/PremiumPreviewFragment;->selectedTierIndex:I

    .line 2038
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1, v6}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$mupdateButtonText(Lorg/telegram/ui/PremiumPreviewFragment;Z)V

    .line 2039
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateText()V
    .locals 6

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2046
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedTitle:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremiumSubtitle:I

    goto :goto_2

    :cond_2
    :goto_1
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedSubtitle:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2048
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgettype(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedTitle:I

    goto :goto_3

    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->TelegramBusiness:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget v2, Lorg/telegram/messenger/R$string;->TelegramBusinessSubtitleTemp:I

    goto :goto_5

    :cond_6
    :goto_4
    sget v2, Lorg/telegram/messenger/R$string;->TelegramBusinessSubscribedSubtitleTemp:I

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2052
    :cond_7
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->-$$Nest$fgetforcePremium(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->subscriptionTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_8

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v1

    .line 2054
    :goto_8
    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->setTierListViewVisibility:Z

    if-eqz v3, :cond_b

    if-nez v0, :cond_a

    goto :goto_9

    .line 2057
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListViewVisible:Z

    if-ne v2, v0, :cond_d

    .line 2058
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    .line 2059
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 2060
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2080
    new-instance v4, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$4;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$4;-><init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2093
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2094
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a

    .line 2055
    :cond_b
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_c

    const/16 v2, 0x8

    :cond_c
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2056
    iput-boolean v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->setTierListViewVisibility:Z

    :cond_d
    :goto_a
    xor-int/2addr v0, v1

    .line 2096
    iput-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->tierListViewVisible:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
