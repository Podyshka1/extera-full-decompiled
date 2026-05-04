.class public Lorg/telegram/ui/Stars/StarGiftPreviewSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;,
        Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;,
        Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;,
        Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;,
        Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final backButton:Landroid/widget/ImageView;

.field private final backdrops:Ljava/util/ArrayList;

.field private final blurredPositions:Ljava/util/ArrayList;

.field public final buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

.field private final buttonsLayout:Landroid/widget/LinearLayout;

.field private final crafting:Z

.field private final currentAccount:I

.field private final giftNameTextView:Landroid/widget/TextView;

.field private final giftStatusTextView:Landroid/widget/TextView;

.field private final glassFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final glassSourceFallback:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final gradientTop:Landroid/view/View;

.field private gradientVisible:Z

.field private final headerPlay:Landroid/widget/ImageView;

.field private final headerView:Landroid/widget/FrameLayout;

.field private final itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastBottomInset:I

.field private final layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

.field private final models:Ljava/util/ArrayList;

.field private final patterns:Ljava/util/ArrayList;

.field private final rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

.field private final rModels:Lorg/telegram/ui/Stars/BagRandomizer;

.field private final rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

.field private final simpleModels:Ljava/util/ArrayList;

.field private final tabsPosP:Landroid/graphics/PointF;

.field private final tabsRectF:Landroid/graphics/RectF;

.field private final tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

.field private final topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

.field private final viewGroupPartRenderer:Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;


# direct methods
.method public static synthetic $r8$lambda$16K0s3oJa-qqB3e--_hg2DmJMe4(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lambda$new$7(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4FW-GrWE3omtJROED_SUH0J-jw8(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$6dDAB4oCjfBKUgjWLOcaEjDuSkE(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$9xx9Mc1JoNCWygCbRWTmt_nA2Uc(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lambda$new$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CuONUr8H9ALoFz92bHkVg0OKCeM(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getRarityIndex(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$KA5_ktOev1iK_ZrKmafS83L4Id0(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$KnSj2HOwjZNsG6702N0SOUDyuqk(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$X8TaWVcvYe_w0MTIrFhsUY__PAY(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzRzPJ0E1kCKde_hMMjhveM1TV8(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ZgM6YDtuJcaajd5TN_Vkc6VETuw(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lambda$new$9(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJKEra3gYzQGbDpTZ5SqUa6h-CE(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getRarityIndex(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$tFz2Uh6jFZbQndo5cRTppgdvTsc(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSourcesPositions()V

    return-void
.end method

.method public static synthetic $r8$lambda$u5JvGqArX7SbDON-WXxbPqjOhnA(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getRarityIndex(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$yAuiNgIRg4TF8DJDF9e4cIdDRRs(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxN4xk9JINfkJndZctv0O4QuA2I(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackButton(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderPlay(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedAttributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopView(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselectedAttributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    return-void
.end method

.method static bridge synthetic -$$Nest$minvalidateMergedVisibleBlurredPositionsAndSources(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSources(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvalidateMergedVisibleBlurredPositionsAndSourcesImpl(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSourcesImpl(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->isSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnewSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->newSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetMode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->setMode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHeaderAttributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->updateHeaderAttributes(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectedForVisibleViews(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->updateSelectedForVisibleViews()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTranslationHeader(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->updateTranslationHeader()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 29

    move-object/from16 v12, p5

    move/from16 v7, p6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 141
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 102
    sget-object v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->RANDOM:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    .line 792
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsRectF:Landroid/graphics/RectF;

    .line 793
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsPosP:Landroid/graphics/PointF;

    .line 794
    new-instance v3, Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->blurredPositions:Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, p3

    .line 142
    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->currentAccount:I

    .line 143
    iput-boolean v7, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->crafting:Z

    .line 145
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->viewGroupPartRenderer:Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    .line 146
    const-class v14, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v12, v14}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findAllInstances(Ljava/util/List;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backdrops:Ljava/util/ArrayList;

    .line 147
    new-instance v3, Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    const/4 v15, 0x0

    .line 148
    invoke-virtual {v3, v15}, Lorg/telegram/ui/Stars/BagRandomizer;->setReshuffleIfEnd(Z)V

    .line 149
    const-class v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v12, v2}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findAllInstances(Ljava/util/List;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->patterns:Ljava/util/ArrayList;

    .line 150
    new-instance v4, Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 151
    invoke-virtual {v4, v15}, Lorg/telegram/ui/Stars/BagRandomizer;->setReshuffleIfEnd(Z)V

    .line 152
    const-class v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v12, v3}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findAllInstances(Ljava/util/List;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->simpleModels:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    move v4, v15

    .line 155
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 156
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 157
    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    instance-of v6, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->simpleModels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/2addr v4, v13

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 166
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backdrops:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->patterns:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->simpleModels:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v5}, Lj$/util/Comparator$-CC;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    new-instance v4, Lorg/telegram/ui/Stars/BagRandomizer;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rModels:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 171
    invoke-virtual {v4, v15}, Lorg/telegram/ui/Stars/BagRandomizer;->setReshuffleIfEnd(Z)V

    .line 174
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 175
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 176
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    :cond_3
    iput-boolean v15, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->ignoreTouchActionBar:Z

    const/high16 v4, 0x40c00000    # 6.0f

    .line 180
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerMoveTop:I

    .line 181
    iput-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    .line 183
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 184
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 187
    new-instance v4, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceFallback:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 188
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 190
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_4

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 191
    new-instance v5, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {v5}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 192
    new-instance v5, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 193
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setOnDrawablesRelativePositionChangeListener(Ljava/lang/Runnable;)V

    .line 194
    new-instance v4, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/high16 v5, 0x40000

    .line 195
    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 197
    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 198
    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 199
    new-instance v5, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 201
    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    .line 202
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 210
    new-instance v4, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 211
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$1;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 222
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v9, 0x42940000    # 74.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v6, v8, v15, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 223
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 224
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 226
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 227
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$2;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 238
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$3;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 244
    invoke-virtual {v4, v15}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 245
    invoke-virtual {v4, v15}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    const-wide/16 v6, 0x118

    .line 246
    invoke-virtual {v4, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 247
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1e

    .line 248
    invoke-virtual {v4, v6, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayIncrement(J)V

    .line 249
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 251
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    .line 252
    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 254
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$4;

    move-object v7, v4

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda11;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    move v8, v5

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda12;-><init>()V

    move-object v9, v7

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda13;-><init>()V

    move v10, v8

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda14;

    invoke-direct {v8}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda14;-><init>()V

    move-object v11, v9

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda0;-><init>()V

    move/from16 v16, v10

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v17, v11

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda2;-><init>()V

    move-object v0, v6

    const/4 v6, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v15, v17

    move-object/from16 v3, p2

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$4;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v28, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v28

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 321
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v13, v13, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;-><init>(IIF)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    .line 322
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewingAttributes(Ljava/util/ArrayList;)V

    .line 323
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hideCloseButton()V

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    .line 324
    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 327
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backButton:Landroid/widget/ImageView;

    const v6, 0x10ffffff

    const/16 v7, 0x10

    .line 328
    invoke-static {v4, v6, v7, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    new-instance v8, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x20

    const/high16 v21, 0x42000000    # 32.0f

    const/16 v22, 0x33

    const/high16 v23, 0x41400000    # 12.0f

    const/high16 v24, 0x41600000    # 14.0f

    .line 333
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerPlay:Landroid/widget/ImageView;

    const/4 v8, 0x0

    .line 336
    invoke-static {v8, v6, v7, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    sget v7, Lorg/telegram/messenger/R$drawable;->filled_gift_pause_24:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 339
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/high16 v25, 0x41400000    # 12.0f

    const/16 v22, 0x35

    const/16 v23, 0x0

    .line 354
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->giftNameTextView:Landroid/widget/TextView;

    .line 357
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41a80000    # 21.0f

    .line 358
    invoke-virtual {v2, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v4, p4

    .line 359
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    .line 360
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 361
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v25, 0x41800000    # 16.0f

    const/high16 v26, 0x42cc0000    # 102.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x57

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    .line 362
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->giftStatusTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    .line 366
    invoke-virtual {v2, v13, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 367
    sget v7, Lorg/telegram/messenger/R$string;->Gift2PreviewRandomTraits:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, -0x70000001

    .line 369
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v26, 0x42a40000    # 82.0f

    .line 370
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 373
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 374
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v10, 0x3

    .line 375
    new-array v2, v10, [Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    .line 376
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    const/4 v2, 0x0

    .line 381
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    array-length v7, v4

    if-ge v2, v7, :cond_9

    .line 382
    new-instance v7, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;-><init>(Landroid/content/Context;)V

    aput-object v7, v4, v2

    if-eqz v2, :cond_7

    if-eq v2, v13, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    goto :goto_3

    .line 391
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->textView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->GiftPreviewSymbol:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 388
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->textView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->GiftPreviewBackdrop:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 385
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->textView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->GiftPreviewModel:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 397
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v4, v4, v2

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v8, v6, v7, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttonsLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v8, v7, v2

    array-length v7, v7

    sub-int/2addr v7, v13

    if-eq v2, v7, :cond_8

    const/16 v7, 0xb

    move/from16 v26, v7

    goto :goto_4

    :cond_8
    const/16 v26, 0x0

    :goto_4
    const/16 v27, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x2a

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x7

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 403
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttonsLayout:Landroid/widget/LinearLayout;

    const/high16 v25, 0x41800000    # 16.0f

    const/high16 v26, 0x41900000    # 18.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x57

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    const/16 v6, 0x13b

    const/16 v7, 0x37

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->getBackgroundColor()I

    move-result v2

    .line 407
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->gradientTop:Landroid/view/View;

    .line 408
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v7, 0xa0

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v2, v8

    filled-new-array {v7, v2}, [I

    move-result-object v2

    invoke-direct {v1, v6, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 409
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x30

    const/4 v8, 0x0

    .line 410
    invoke-static {v5, v8, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 411
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 412
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 417
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v2, 0x41e00000    # 28.0f

    .line 418
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 419
    new-instance v2, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 420
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    const/16 v3, 0x10c

    const/high16 v4, 0x42800000    # 64.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    .line 424
    invoke-static {v12, v14}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findFirstInstance(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-object/from16 v3, v18

    .line 425
    invoke-static {v12, v3}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findFirstInstance(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-object/from16 v4, v19

    .line 426
    invoke-static {v12, v4}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->findFirstInstance(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    .line 429
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 430
    invoke-direct {v0, v8}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->updateHeaderAttributes(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/view/View;FF)Z
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method private applyBottomInset()V
    .locals 5

    .line 870
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSystemBottomInset()I

    move-result v0

    .line 871
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lastBottomInset:I

    if-eq v1, v0, :cond_0

    .line 872
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lastBottomInset:I

    .line 873
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x42940000    # 74.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->lastBottomInset:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 9

    .line 529
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backdrops:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->patterns:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const p2, 0x439d8000    # 315.0f

    .line 533
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BagRandomizer;->reset()V

    .line 536
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BagRandomizer;->reset()V

    .line 537
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rModels:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BagRandomizer;->reset()V

    .line 539
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->getSelectedTab()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_5

    .line 541
    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->crafting:Z

    const-string v2, "GiftPreviewCountModels"

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    .line 542
    const-string v1, "GiftPreviewCountModelsCrafting"

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 545
    new-instance v6, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 546
    invoke-virtual {v7}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v8}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-direct {v6, v7, v8, v5}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 545
    invoke-static {p2, v6}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell$Factory;->asAttribute(ILorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->simpleModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 549
    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->crafting:Z

    if-eqz v1, :cond_4

    const-string v2, "GiftPreviewCountModelsCrafting2"

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->simpleModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 551
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 552
    invoke-virtual {v5}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-direct {v4, v5, v6, v3}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 551
    invoke-static {p2, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell$Factory;->asAttribute(ILorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backdrops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "GiftPreviewCountBackdrops"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->backdrops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 558
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rPatterns:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 559
    invoke-virtual {v5}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rModels:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v4, v3, v5, v6}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 558
    invoke-static {p2, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell$Factory;->asAttribute(ILorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "GiftPreviewCountSymbols"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 564
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rBackdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    .line 565
    invoke-virtual {v5}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->rModels:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v4, v5, v3, v6}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 564
    invoke-static {p2, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell$Factory;->asAttribute(ILorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method private getBackgroundColor()I
    .locals 3

    .line 880
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    .line 881
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    .line 882
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    .line 880
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method private static getRarityIndex(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)D
    .locals 2

    .line 126
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;->permille:I

    int-to-double v0, p0

    return-wide v0

    .line 128
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarityLegendary;

    if-eqz v0, :cond_1

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    return-wide v0

    .line 130
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarityEpic;

    if-eqz v0, :cond_2

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    return-wide v0

    .line 132
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarityRare;

    if-eqz v0, :cond_3

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    return-wide v0

    .line 134
    :cond_3
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarityUncommon;

    if-eqz p0, :cond_4

    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    return-wide v0

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private invalidateMergedVisibleBlurredPositionsAndSources(I)V
    .locals 2

    .line 826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSourcesImpl(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private invalidateMergedVisibleBlurredPositionsAndSourcesImpl(I)V
    .locals 3

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 838
    invoke-static {p1, v0}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsPosP:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;->computeCoordinatesInParent(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/PointF;)Z

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsPosP:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 841
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 843
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsRectF:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x40000

    .line 848
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x42400000    # 48.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 849
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsRectF:Landroid/graphics/RectF;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->blurredPositions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 854
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->getRenderNodesCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 858
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->viewGroupPartRenderer:Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private invalidateMergedVisibleBlurredPositionsAndSourcesPositions()V
    .locals 1

    const/4 v0, 0x2

    .line 822
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSources(I)V

    return-void
.end method

.method private isSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Z
    .locals 5

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    sget-object v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->RANDOM:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1025
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->getSelectedTab()I

    move-result v0

    .line 1026
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 1028
    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v0, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-ne p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1030
    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v0, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    if-nez v0, :cond_5

    .line 1032
    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v0, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$7(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    sget-object v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->SELECTED:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    if-ne p2, v0, :cond_0

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewingAttributes(Ljava/util/ArrayList;)V

    .line 342
    sget-object p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->RANDOM:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->setMode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;)V

    return-void

    .line 343
    :cond_0
    sget-object p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->RANDOM:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    if-ne p2, p1, :cond_1

    .line 344
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 345
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeBackdropAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 346
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradePatternAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 347
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageViewAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    .line 349
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewAttributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)V

    .line 350
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->setMode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimations()V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(ILandroid/view/View;)V
    .locals 0

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->-$$Nest$mselectTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;I)V

    return-void
.end method

.method private newSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;
    .locals 3

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->tabsSelectorView:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->getSelectedTab()I

    move-result v0

    .line 1040
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->selectedAttributes:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1042
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v2, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1044
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v2, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v0, v2, p1, v1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1046
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    iget-object v2, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-direct {v0, v2, v1, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private setMode(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;)V
    .locals 3

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    if-ne v0, p1, :cond_0

    return-void

    .line 1001
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->mode:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerPlay:Landroid/widget/ImageView;

    sget-object v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;->SELECTED:Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Mode;

    if-ne p1, v1, :cond_1

    .line 1004
    sget v2, Lorg/telegram/messenger/R$drawable;->filled_gift_play_24:I

    goto :goto_0

    .line 1005
    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->filled_gift_pause_24:I

    .line 1003
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->giftStatusTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 1008
    sget p1, Lorg/telegram/messenger/R$string;->Gift2PreviewSelectedTraits:I

    goto :goto_1

    .line 1009
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->Gift2PreviewRandomTraits:I

    .line 1007
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->updateSelectedForVisibleViews()V

    return-void
.end method

.method private updateHeaderAttributes(Z)V
    .locals 4

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageViewAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeBackdropAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradePatternAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageViewAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x1

    .line 518
    new-array v2, v0, [Ljava/lang/Integer;

    .line 519
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v1, v3, v1

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->percentView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 520
    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageViewAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    invoke-static {v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->getRarityName(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;[Ljava/lang/Integer;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeBackdropAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 523
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->percentView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeBackdropAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->getRarityPermille()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradePatternAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->buttons:[Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Button;->percentView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradePatternAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->getRarityPermille()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSelectedForVisibleViews()V
    .locals 5

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1054
    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1055
    instance-of v3, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;

    if-eqz v3, :cond_0

    .line 1056
    check-cast v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;

    .line 1057
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;->-$$Nest$fgetattributes(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;)Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1059
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->isSelectedWithCurrentTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$Attributes;)Z

    move-result v3

    const/4 v4, 0x1

    .line 1060
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$GiftAttributeCell;->setSelected(ZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTranslationHeader()V
    .locals 7

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    .line 478
    iget-object v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 479
    iget-object v5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 482
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_1
    int-to-float v4, v4

    sub-float/2addr v0, v4

    :goto_2
    move v4, v1

    goto :goto_4

    :cond_1
    if-ne v5, v1, :cond_2

    .line 486
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    .line 490
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v4, v2

    move v0, v3

    .line 496
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    if-eqz v4, :cond_6

    cmpg-float v5, v5, v3

    if-gez v5, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    .line 500
    :cond_6
    :goto_5
    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->gradientVisible:Z

    if-eq v5, v1, :cond_8

    .line 501
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->gradientVisible:Z

    .line 502
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->gradientTop:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_9

    move v1, v2

    goto :goto_7

    :cond_9
    const/high16 v1, 0x40c00000    # 6.0f

    .line 505
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_7
    iput v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerMoveTop:I

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    .line 440
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$5;

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->currentAccount:I

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda15;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;)V

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$5;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p1, 0x0

    .line 470
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 471
    iget-object p1, v1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method protected createRecyclerView(Landroid/content/Context;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    .line 768
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isTouchOutside(FF)Z
    .locals 0

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected mainContainerDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 800
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->mainContainerDispatchDraw(Landroid/graphics/Canvas;)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 805
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz p1, :cond_1

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result p1

    if-nez p1, :cond_1

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->needUpdateDisplayList(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 808
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    .line 809
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    const/high16 v1, 0x40000

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->glassSourceRenderNode:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    :cond_1
    return-void
.end method

.method protected onInsetsChanged()V
    .locals 0

    .line 865
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onInsetsChanged()V

    .line 866
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->applyBottomInset()V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onOpenAnimationEnd()V

    const/4 v0, 0x2

    .line 786
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->invalidateMergedVisibleBlurredPositionsAndSourcesImpl(I)V

    return-void
.end method
