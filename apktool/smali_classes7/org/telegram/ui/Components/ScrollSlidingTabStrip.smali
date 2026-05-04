.class public abstract Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;,
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# static fields
.field public static EXPANDED_WIDTH:F = 64.0f


# instance fields
.field private animateFromPosition:Z

.field animateToExpanded:Z

.field currentDragPosition:I

.field currentPlayingImages:Landroid/util/SparseArray;

.field currentPlayingImagesTmp:Landroid/util/SparseArray;

.field private currentPosition:I

.field private currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field private dividerPadding:I

.field dragDx:F

.field private dragEnabled:Z

.field draggindViewDxOnScreen:F

.field draggindViewXOnScreen:F

.field draggingView:Landroid/view/View;

.field draggingViewOutProgress:F

.field private expandOffset:F

.field expandProgress:F

.field expandStickerAnimator:Landroid/animation/ValueAnimator;

.field expanded:Z

.field private futureTabsPositions:Landroid/util/SparseArray;

.field private imageReceiversPlayingNum:I

.field private indicatorColor:I

.field private indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorHeight:I

.field private final isGlassDesign:Z

.field private lastAnimationTime:J

.field private lastScrollX:I

.field private leftTabBounds:Landroid/graphics/RectF;

.field longClickRunnable:Ljava/lang/Runnable;

.field longClickRunning:Z

.field private positionAnimationProgress:F

.field pressedX:F

.field pressedY:F

.field private prevTypes:Ljava/util/HashMap;

.field private rectPaint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightTabBounds:Landroid/graphics/RectF;

.field private scrollByOnNextMeasure:I

.field private scrollOffset:I

.field scrollRight:Z

.field scrollRunnable:Ljava/lang/Runnable;

.field scrollStartTime:J

.field private selectorPaint:Landroid/graphics/Paint;

.field private shouldExpand:Z

.field private showSelected:Z

.field private showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private startAnimationPosition:F

.field startDragFromPosition:I

.field startDragFromX:F

.field private stickerTabExpandedWidth:F

.field private stickerTabWidth:F

.field private tabBounds:Landroid/graphics/RectF;

.field private tabCount:I

.field private tabPadding:I

.field private tabTypes:Ljava/util/HashMap;

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private touchSlop:F

.field private type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public static synthetic $r8$lambda$JPqEHdA0HVeMZx5hJYyTiK-mkOg(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVJTKAAlDfgbs1dOpCDlH1TZvls(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$expandStickers$5(ZFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gxl4Vwx_4nFfnaw-1r5mGnm7Rf8(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rN1XpAL99l3FhO-Kz5nWHtYhzjs(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$checkLongPress$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIe8EjI6CDewOrmC1u1arpctE_Q(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addEmojiTab$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrvSzBenowFrLwk2V5ROvaldYP0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addIconTab$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAjP-TfjJw33Q7C6nbR9C2qWzf0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerIconTab$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetscrollByOnNextMeasure(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerTabExpandedWidth(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickerTabWidth(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabsContainer(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputexpandOffset(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollByOnNextMeasure(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanSwap(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTabSize(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 8

    .line 157
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    .line 71
    sget-object v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->LINE:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    .line 78
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    .line 89
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x15e

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 90
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->leftTabBounds:Landroid/graphics/RectF;

    .line 91
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rightTabBounds:Landroid/graphics/RectF;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    const v1, -0x99999a

    .line 101
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    const/high16 v1, 0x1a000000

    .line 102
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 104
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x42040000    # 33.0f

    .line 106
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 107
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    const/high16 v5, 0x41400000    # 12.0f

    .line 108
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dividerPadding:I

    const/high16 v5, 0x41c00000    # 24.0f

    .line 109
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabPadding:I

    const/4 v5, 0x0

    .line 111
    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 115
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    .line 116
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    .line 128
    new-instance v6, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    .line 425
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    .line 431
    sget v6, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    .line 432
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    const/4 v6, -0x1

    .line 434
    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    .line 728
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    .line 730
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    .line 731
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v7, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1050
    new-instance v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    .line 158
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 159
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isGlassDesign:Z

    .line 160
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 163
    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 165
    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 166
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41180000    # 9.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p3, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x10

    invoke-direct {p2, v6, v6, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {p1, p2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v5, v6, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method private canSwap(I)Z
    .locals 2

    .line 1035
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1042
    instance-of v0, p1, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/StickerTabView;

    iget v0, p1, Lorg/telegram/ui/Components/StickerTabView;->type:I

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getGlassIconColor(F)I
    .locals 2

    .line 825
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 826
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 825
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method

.method private getTabSize()I
    .locals 1

    .line 719
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42040000    # 33.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$addEmojiTab$3(Landroid/view/View;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addIconTab$0(Landroid/view/View;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerIconTab$1(Landroid/view/View;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$2(Landroid/view/View;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$4(Landroid/view/View;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$checkLongPress$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1008
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    .line 1009
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return-void
.end method

.method private synthetic lambda$expandStickers$5(ZFLandroid/animation/ValueAnimator;)V
    .locals 4

    if-nez p1, :cond_2

    .line 454
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, p1

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move v0, v1

    move p2, v3

    :cond_0
    mul-float/2addr p1, v0

    sub-float v0, p1, p2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move p1, p2

    .line 466
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    .line 468
    :cond_2
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/4 p1, 0x0

    .line 469
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 472
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 473
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updatePosition()V

    return-void
.end method

.method private scrollToChild(I)V
    .locals 4

    .line 564
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez p1, :cond_1

    .line 569
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 571
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    .line 572
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    .line 574
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 575
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void

    .line 576
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    if-le v2, p1, :cond_3

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 578
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startScroll(Z)V
    .locals 4

    .line 1069
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    .line 1070
    iget-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    .line 1073
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private stopScroll()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1077
    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;
    .locals 6

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 375
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 377
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 379
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 382
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 384
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 v3, 0x0

    .line 386
    iput-boolean v3, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 387
    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 388
    sget v4, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v1, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 389
    sget p2, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 390
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 392
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;
    .locals 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 293
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 295
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p2, 0x11

    const/16 v4, 0x18

    .line 299
    invoke-static {v4, v4, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 301
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 304
    :goto_0
    sget p2, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 305
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 307
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;
    .locals 5

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 317
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 319
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 320
    iget-object v3, v1, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 322
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 324
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 p2, 0x0

    .line 327
    iput-boolean p2, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 328
    sget v3, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 329
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;
    .locals 7

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 402
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_1

    .line 404
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 405
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 406
    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 409
    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 411
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 413
    :goto_1
    iget-object v5, v2, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 414
    iput-boolean v3, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 415
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 416
    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 417
    sget p1, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 418
    sget p1, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 419
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 339
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 341
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 345
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 346
    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 348
    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerTabView;->setRoundImage()V

    .line 350
    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/high16 v6, 0x41600000    # 14.0f

    .line 351
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 352
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v5, v6, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 354
    iget-object v6, v2, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 355
    iget v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 356
    invoke-virtual {v6, p1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 357
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 359
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 360
    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 361
    iget-object v5, v2, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    iput-boolean v4, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 364
    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 365
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginUpdate(Z)V
    .locals 3

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz p1, :cond_0

    .line 230
    new-instance p1, Landroid/transition/AutoTransition;

    invoke-direct {p1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0xfa

    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 232
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 233
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 1087
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->cancelLongPress()V

    const/4 v0, 0x0

    .line 1088
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkLongPress(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 941
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 942
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    .line 947
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 949
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 953
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 954
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v0, v2

    .line 955
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int/2addr v2, v1

    .line 956
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v2, v4, :cond_4

    if-ge v2, v4, :cond_3

    .line 958
    :goto_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v2, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v2, v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 967
    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v4, v2, :cond_7

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    .line 968
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 969
    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-ne v4, v5, :cond_5

    goto :goto_3

    .line 972
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/StickerTabView;

    .line 973
    invoke-virtual {v5}, Lorg/telegram/ui/Components/StickerTabView;->saveXPosition()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 976
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    sub-int v5, v2, v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    .line 977
    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    .line 978
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 979
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 980
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 982
    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragDx:F

    .line 983
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 986
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    .line 987
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 988
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    .line 990
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    .line 992
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 993
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return v1

    .line 996
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 997
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    .line 998
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 999
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 1000
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromPosition:I

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq p1, v0, :cond_c

    .line 1001
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerSetPositionChanged(II)V

    move p1, v3

    .line 1002
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1006
    :cond_c
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1007
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1011
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1023
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1025
    :cond_d
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1026
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    :cond_e
    return v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public commitUpdate()V
    .locals 5

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 261
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 740
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    sub-float/2addr v1, v2

    .line 741
    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move v5, v3

    .line 742
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 743
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v6, :cond_1

    .line 744
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/StickerTabView;

    .line 745
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/StickerTabView;->animateIfPositionChanged(Landroid/view/ViewGroup;)V

    .line 746
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v7, :cond_0

    int-to-float v7, v5

    mul-float/2addr v7, v1

    .line 747
    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    iget v8, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 749
    :cond_0
    iget v7, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 755
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v2, :cond_3

    .line 756
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v5, v4, v5

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    :cond_3
    move v9, v1

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 761
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    if-ltz v2, :cond_10

    .line 762
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    float-to-double v6, v2

    .line 763
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 764
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    if-ltz v8, :cond_6

    .line 766
    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lt v8, v10, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_4

    :cond_6
    :goto_3
    move-object v10, v7

    :goto_4
    if-ltz v6, :cond_8

    .line 767
    iget-object v11, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lt v6, v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_8
    :goto_5
    const/high16 v6, 0x40000000    # 2.0f

    div-float v11, v9, v6

    const/high16 v12, 0x42040000    # 33.0f

    if-eqz v10, :cond_b

    if-eqz v7, :cond_b

    .line 776
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sget v15, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v14, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v13, v5

    .line 777
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v5, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sget v14, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v12, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v5, v12

    int-to-float v8, v8

    sub-float/2addr v2, v8

    .line 775
    invoke-static {v13, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 781
    instance-of v8, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v8, :cond_9

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 782
    :goto_6
    instance-of v10, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v10, :cond_a

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v7

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 780
    :goto_7
    invoke-static {v8, v7, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    .line 787
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v7, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 788
    instance-of v5, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_e

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_8

    :cond_c
    if-eqz v7, :cond_d

    .line 790
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v8, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 791
    instance-of v5, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_e

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :cond_e
    const/4 v5, 0x0

    :goto_8
    const/high16 v7, 0x41f00000    # 30.0f

    .line 798
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    .line 799
    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v8

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v8, v10, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v8, v12

    mul-float/2addr v8, v6

    const/high16 v12, 0x3fa00000    # 1.25f

    sub-float/2addr v12, v8

    mul-float/2addr v12, v7

    .line 800
    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v8

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v10

    mul-float/2addr v8, v6

    const v10, 0x3f666666    # 0.9f

    add-float/2addr v8, v10

    mul-float/2addr v7, v8

    .line 801
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v10, 0x41200000    # 10.0f

    .line 802
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-static {v12, v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    const/high16 v10, 0x41d00000    # 26.0f

    .line 803
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    const v3, 0x3f0ccccd    # 0.55f

    .line 804
    invoke-static {v4, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float/2addr v7, v3

    .line 805
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    div-float/2addr v5, v6

    sub-float v4, v2, v5

    div-float/2addr v7, v6

    sub-float v8, v11, v7

    add-float/2addr v2, v5

    add-float/2addr v11, v7

    invoke-virtual {v3, v4, v8, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 807
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isGlassDesign:Z

    if-eqz v2, :cond_f

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getGlassIconColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 810
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 811
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v6

    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v6

    iget-object v4, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_10
    move-object/from16 v5, p1

    .line 816
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_11

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v1, :cond_11

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-lez v1, :cond_11

    .line 819
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 820
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    int-to-float v1, v1

    sub-float v7, v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11
    return-void
.end method

.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 4

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 833
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewXOnScreen:F

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    sub-float/2addr v0, v1

    .line 834
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    .line 835
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 837
    :cond_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public expandStickers(FZ)V
    .locals 4

    .line 440
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    if-eq v0, p2, :cond_6

    .line 441
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 444
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 447
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 451
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    if-eqz p2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    .line 452
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_5

    .line 521
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    .line 522
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 523
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 524
    instance-of v3, v2, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v3, :cond_3

    .line 525
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 527
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    if-eqz p2, :cond_6

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    .line 536
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    sub-float p2, v0, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 539
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_6
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 849
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method public getExpandedOffset()F
    .locals 2

    .line 549
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    return-object v0
.end method

.method protected invalidateOverlays()V
    .locals 0

    return-void
.end method

.method public invalidateTabs()V
    .locals 3

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 891
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isDragging()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 932
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 585
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    .line 587
    iget p2, p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    if-ltz p2, :cond_0

    const/4 p3, 0x0

    .line 588
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->scrollTo(II)V

    const/4 p2, -0x1

    .line 589
    iput p2, p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_0
    return-void
.end method

.method public onPageScrolled(II)V
    .locals 6

    .line 858
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 862
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 864
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startAnimationPosition:F

    .line 865
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->positionAnimationProgress:F

    .line 866
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateFromPosition:Z

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastAnimationTime:J

    goto :goto_0

    .line 869
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateFromPosition:Z

    .line 871
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    :goto_1
    return-void

    .line 875
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->positionAnimationProgress:F

    move v0, v2

    .line 876
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, p1, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 879
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6

    if-ne p2, p1, :cond_5

    if-le p1, v3, :cond_5

    sub-int/2addr p1, v3

    .line 881
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    goto :goto_4

    .line 883
    :cond_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    .line 886
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 724
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 725
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 937
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public selectTab(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 273
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 896
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1093
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    return-void
.end method

.method public setImageReceiversLayerNum(I)V
    .locals 0

    .line 1102
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    return-void
.end method

.method public setImages()V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x42040000    # 33.0f

    .line 594
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 595
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 596
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 597
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    add-int/2addr v2, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 598
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v2, 0x2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 604
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 605
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 608
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    .line 609
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 610
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    iget v7, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 612
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :goto_2
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1d

    .line 615
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 616
    instance-of v7, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v7, :cond_1c

    .line 617
    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    .line 618
    iget v8, v7, Lorg/telegram/ui/Components/StickerTabView;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 619
    sget v6, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v7, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 620
    sget v8, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 622
    instance-of v9, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 623
    check-cast v6, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    move-object v6, v3

    .line 625
    :goto_3
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_6

    .line 626
    iget-object v6, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "36_36_firstframe"

    goto :goto_4

    :cond_5
    const-string v9, "36_36_nolimit"

    :goto_4
    invoke-virtual {v6, v8, v9, v3, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 628
    :cond_6
    iget-object v3, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 631
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 632
    sget v9, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    .line 633
    sget v9, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 637
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$Document;

    const-string v10, "v"

    const v11, 0x3e4ccccd    # 0.2f

    if-eqz v9, :cond_9

    .line 639
    iget-boolean v9, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v9, :cond_8

    .line 640
    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v8, v9, v11}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 642
    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    move-object v9, v3

    :goto_5
    move-object v13, v8

    goto :goto_7

    .line 643
    :cond_9
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v9, :cond_1c

    .line 644
    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 646
    instance-of v9, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v9, :cond_a

    .line 647
    move-object v9, v15

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 648
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v12, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    .line 649
    iget-boolean v13, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v13, :cond_b

    .line 650
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/DocumentObject;->containsPhotoSizeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v14

    invoke-static {v9, v13, v11, v14}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    .line 653
    :cond_b
    :goto_6
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 654
    invoke-static {v8, v6, v12}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    goto :goto_5

    .line 659
    :goto_7
    iget-boolean v8, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v8, :cond_c

    iget-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v8, :cond_c

    if-eqz v6, :cond_c

    .line 660
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v6, v8, v11}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_c
    if-nez v13, :cond_d

    goto/16 :goto_c

    .line 666
    :cond_d
    iput-boolean v4, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    .line 667
    iget-object v14, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 668
    iget-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 669
    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_e

    .line 670
    const-string v12, "40_40_firstframe"

    goto :goto_8

    :cond_e
    const-string v12, "40_40"

    :goto_8
    if-nez v9, :cond_f

    .line 671
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v16

    if-eqz v16, :cond_f

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_10

    :cond_f
    if-eqz v9, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_10
    if-nez v9, :cond_13

    if-nez v11, :cond_11

    .line 674
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v9, 0x5a

    invoke-static {v5, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 675
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const-string v12, "40_40"

    move-object v13, v14

    const/4 v14, 0x0

    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_11
    move-object v10, v8

    if-eqz v14, :cond_12

    .line 677
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    move-object v13, v14

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 679
    :cond_12
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_9
    move-object/from16 v15, v16

    goto :goto_a

    :cond_13
    move-object v10, v8

    move-object v11, v13

    move-object v13, v14

    if-eqz v13, :cond_14

    const/4 v14, 0x0

    .line 683
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_a

    :cond_14
    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 685
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_9

    :cond_15
    move-object v10, v8

    move-object v11, v13

    move-object v13, v14

    if-nez v9, :cond_16

    .line 688
    invoke-static {v6, v4}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    if-eqz v9, :cond_19

    const-string v5, "a"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    if-eqz v13, :cond_18

    const/4 v14, 0x0

    .line 690
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_a

    :cond_18
    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object v13, v11

    .line 692
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_9

    .line 694
    :cond_19
    iget v5, v11, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v5, v4, :cond_1a

    move-object v14, v13

    .line 695
    const-string v13, "tgs"

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_a

    .line 697
    :cond_1a
    const-string v5, "webp"

    move-object v14, v13

    move-object v13, v5

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 700
    :goto_a
    instance-of v5, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_1b

    .line 701
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 703
    :cond_1b
    iget-object v5, v7, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    iget v5, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 706
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget v5, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_1c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1d
    const/4 v5, 0x0

    .line 710
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_1f

    .line 711
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    .line 712
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eq v1, v2, :cond_1e

    .line 713
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1f
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 905
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    .line 906
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 900
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    .line 901
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 844
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    if-eq v0, p1, :cond_2

    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    .line 207
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    .line 208
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p1, v3, v1

    const/4 v1, 0x2

    aput p1, v3, v1

    const/4 v1, 0x3

    aput p1, v3, v1

    const/4 p1, 0x4

    aput v0, v3, p1

    const/4 p1, 0x5

    aput v0, v3, p1

    const/4 p1, 0x6

    aput v0, v3, p1

    const/4 p1, 0x7

    aput v0, v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void

    .line 204
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 910
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 1

    .line 920
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-eq v0, p1, :cond_0

    .line 921
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 922
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    .line 734
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected stickerSetPositionChanged(II)V
    .locals 0

    return-void
.end method

.method protected updatePosition()V
    .locals 0

    return-void
.end method

.method public updateTabStyles()V
    .locals 3

    const/4 v0, 0x0

    .line 553
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 555
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 558
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
