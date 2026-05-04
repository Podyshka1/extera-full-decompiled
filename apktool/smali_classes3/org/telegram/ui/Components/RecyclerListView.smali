.class public Lorg/telegram/ui/Components/RecyclerListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$FastScroll;,
        Lorg/telegram/ui/Components/RecyclerListView$HitTestable;,
        Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;,
        Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;,
        Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;,
        Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;,
        Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;,
        Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$Holder;
    }
.end annotation


# static fields
.field private static attributes:[I

.field private static gotAttributes:Z

.field private static final initializeScrollbars:Ljava/lang/reflect/Method;

.field private static final radii:[F

.field private static final sectionBackgroundPaint:Landroid/graphics/Paint;

.field private static final sectionBackgroundPath:Landroid/graphics/Path;

.field private static final sectionBackgroundStrokePaint:Landroid/graphics/Paint;


# instance fields
.field private accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private accessibilityEnabled:Z

.field private activeTouches:I

.field private adaptiveOverScroll:Z

.field private allowItemsInteractionDuringAnimation:Z

.field private allowStopHeaveOperations:Z

.field private animateEmptyView:Z

.field public applyPaddingToSections:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private canCaptureSectionsDecorator:Z

.field private clickRunnable:Ljava/lang/Runnable;

.field private final clipPath:Landroid/graphics/Path;

.field private currentChildPosition:I

.field private currentChildView:Landroid/view/View;

.field private currentFirst:I

.field currentSelectedPosition:I

.field private currentVisible:I

.field private disableHighlightState:Z

.field private disallowInterceptTouchEvents:Z

.field private draggingChild:Landroid/view/View;

.field private drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

.field private drawSelection:Z

.field private drawSelectorBehind:Z

.field private final edgeEffectTrackerFactory:Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;

.field private emptyView:Landroid/view/View;

.field emptyViewAnimateToVisibility:I

.field private emptyViewAnimationType:I

.field private fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

.field public fastScrollAnimationRunning:Z

.field public forcedSections:Ljava/util/ArrayList;

.field private gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

.field private getSelectorColor:Lorg/telegram/messenger/GenericProvider;

.field private headers:Ljava/util/ArrayList;

.field private headersCache:Ljava/util/ArrayList;

.field private hiddenByEmptyView:Z

.field private hideIfEmpty:Z

.field private highlightPosition:I

.field private ignoreClipChild:Z

.field private ignoreLayout:Z

.field private instantClick:Z

.field private interceptedByChild:Z

.field private isChildViewEnabled:Z

.field private isHidden:Z

.field private isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private lastAlphaAnimationTime:J

.field lastX:F

.field lastY:F

.field listPaddings:[I

.field private longPressCalled:Z

.field multiSelectionGesture:Z

.field multiSelectionGestureStarted:Z

.field multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

.field multiselectScrollRunning:Z

.field multiselectScrollToTop:Z

.field private final observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

.field private onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

.field private onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

.field private onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private overlayContainer:Landroid/widget/FrameLayout;

.field private pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

.field private pinnedHeader:Landroid/view/View;

.field private pinnedHeaderShadowAlpha:F

.field private pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private pinnedHeaderShadowTargetAlpha:F

.field private removeHighlighSelectionRunnable:Ljava/lang/Runnable;

.field private removedSections:Ljava/util/ArrayList;

.field private resetSelectorOnChanged:Z

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollEnabled:Z

.field public scrolledByUserOnce:Z

.field scroller:Ljava/lang/Runnable;

.field public scrollingByUser:Z

.field private sectionOffset:I

.field private sectionRadius:F

.field private sectionRadiusBottom:[F

.field private sectionRadiusTop:[F

.field private sections:Ljava/util/ArrayList;

.field private sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

.field private sectionsCount:I

.field private sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

.field private sectionsType:I

.field private selectChildRunnable:Ljava/lang/Runnable;

.field selectedPositions:Ljava/util/HashSet;

.field protected selectorDrawable:Landroid/graphics/drawable/Drawable;

.field protected selectorPosition:I

.field private selectorRadius:I

.field protected selectorRect:Landroid/graphics/Rect;

.field protected selectorTransformer:Landroidx/core/util/Consumer;

.field private selectorType:I

.field protected selectorView:Landroid/view/View;

.field private selfOnLayout:Z

.field private selfTransformationsMatrix:Landroid/graphics/Matrix;

.field private skipDrawSection:Z

.field private startSection:I

.field startSelectionFrom:I

.field private stoppedAllHeavyOperations:Z

.field private topBottomSelectorRadius:I

.field private touchSlop:I

.field private translateSelector:I

.field public useLayoutPositionOnClick:Z

.field useRelativePositions:Z


# direct methods
.method public static synthetic $r8$lambda$2wEbk7S82O_026x6oum7LynZ9ss(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;Landroid/util/SparseIntArray;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 3382
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3383
    :cond_0
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3384
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3386
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    invoke-virtual {p2, p0, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    .line 3390
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$8R2_5Tvsn9Mnc1AJmWR1h1znjPM(Lorg/telegram/ui/Components/RecyclerListView;Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/RecyclerListView;->lambda$drawSectionsBackgrounds$7(Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1n-IgPpRgCTc9PD-N1Qu44I-0M(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->lambda$onLayout$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$t7pYbJdB_Jl_24x5Eo6vjFbxIYc(Ljava/lang/Runnable;IZ)V
    .locals 0

    .line 3199
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$todbV2Ivu8XZPH3CTbR9h9z9NJU(Lorg/telegram/ui/Components/RecyclerListView;Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/RecyclerListView;->lambda$drawSectionsBackgrounds$6(Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uLqj5sOj2BJSCnoGu0P0HShlnBQ(Landroid/util/SparseIntArray;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 3394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 3395
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3396
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ykTl0wo3HGG-pLyHN9LKS4HQdCU(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .line 3370
    instance-of v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/telegram/ui/Cells/HeaderCell;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const v0, -0x8100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zjfn-mkvkj-L6ntnGYbeOv07zF0(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->lambda$highlightRowInternal$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowItemsInteractionDuringAnimation(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclickRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfastScroll(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgestureDetector(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstantClick(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinterceptedByChild(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlongPressCalled(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonItemClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonItemClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonItemLongClickListenerExtended(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonScrollListener(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlayContainer(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingHighlightPosition(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpinnedHeader(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoveHighlighSelectionRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresetSelectorOnChanged(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsectionOffset(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselfOnLayout(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputclickRunnable(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentChildPosition(Lorg/telegram/ui/Components/RecyclerListView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentFirst(Lorg/telegram/ui/Components/RecyclerListView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgestureDetector(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinterceptedByChild(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlongPressCalled(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfEmpty(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckStopHeavyOperations(Lorg/telegram/ui/Components/RecyclerListView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkStopHeavyOperations(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchekMultiselect(Lorg/telegram/ui/Components/RecyclerListView;FF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->chekMultiselect(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasClickableChild(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/ViewGroup;FF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->hasClickableChild(Landroid/view/ViewGroup;FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhighlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpositionSelector(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSelection(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectorState(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 229
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "initializeScrollbars"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 233
    :goto_0
    sput-object v1, Lorg/telegram/ui/Components/RecyclerListView;->initializeScrollbars:Ljava/lang/reflect/Method;

    .line 3694
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPaint:Landroid/graphics/Paint;

    .line 3695
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundStrokePaint:Landroid/graphics/Paint;

    .line 3696
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPath:Landroid/graphics/Path;

    const/16 v0, 0x8

    .line 3697
    new-array v0, v0, [F

    sput-object v0, Lorg/telegram/ui/Components/RecyclerListView;->radii:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1498
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 1503
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    .line 140
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    const/4 v1, -0x1

    .line 150
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 151
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    const/4 v2, 0x0

    .line 159
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->skipDrawSection:Z

    .line 161
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    const/4 v3, 0x2

    .line 164
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    .line 169
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    .line 171
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    .line 188
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 212
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 213
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 222
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    .line 236
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 1452
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    .line 1457
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 3118
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$6;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    .line 3340
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    .line 3727
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    .line 1504
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1505
    new-instance p2, Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;

    invoke-direct {p2}, Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->edgeEffectTrackerFactory:Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;

    .line 1507
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 1508
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1509
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p2

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1510
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1513
    :try_start_0
    sget-boolean p2, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    if-nez p2, :cond_1

    .line 1514
    const-string p2, "com.android.internal"

    const-string v1, "View"

    invoke-virtual {p0, p2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p2

    sput-object p2, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-nez p2, :cond_0

    .line 1516
    new-array p2, v2, [I

    sput-object p2, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 1518
    :cond_0
    :goto_0
    sput-boolean v0, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    .line 1520
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1521
    sget-object v1, Lorg/telegram/ui/Components/RecyclerListView;->initializeScrollbars:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 1522
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1525
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1527
    :cond_2
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RecyclerListView$3;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1583
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1585
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez p1, :cond_3

    .line 1587
    invoke-static {p0}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private static cachedIsViewTypeShadow(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;)Landroid/util/Pair;
    .locals 3

    .line 3378
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3379
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;Landroid/util/SparseIntArray;)V

    new-instance p0, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda8;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseIntArray;)V

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private cancelMultiselectScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 3114
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    .line 3115
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfEmpty(Z)V
    .locals 10

    .line 2276
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2279
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 2286
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewIsVisible()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2288
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move p1, v1

    .line 2291
    :cond_4
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewUpdated(ZZ)V

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 2293
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    if-eq p1, v3, :cond_9

    .line 2294
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    const-wide/16 v6, 0x96

    const/4 p1, 0x0

    const v8, 0x3f333333    # 0.7f

    if-nez v3, :cond_6

    .line 2296
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2297
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 2298
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2300
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    if-ne p1, v4, :cond_5

    .line 2301
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2302
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 2305
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2307
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 2308
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2309
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    if-ne v2, v4, :cond_7

    .line 2310
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 2312
    :cond_7
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RecyclerListView$4;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2322
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2327
    :cond_8
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    .line 2328
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2329
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2331
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    if-eqz p1, :cond_d

    if-eqz v0, :cond_a

    const/4 v1, 0x4

    .line 2333
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_b

    .line 2334
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2336
    :cond_b
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    return-void

    .line 2280
    :cond_c
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    .line 2281
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2282
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    :cond_d
    :goto_3
    return-void
.end method

.method private checkStopHeavyOperations(I)V
    .locals 4

    const/16 v0, 0x200

    .line 1694
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1692
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-eqz p1, :cond_1

    .line 1693
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 1694
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 1697
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowStopHeaveOperations:Z

    if-eqz p1, :cond_1

    .line 1698
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 1699
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private chekMultiselect(FF)Z
    .locals 10

    .line 3039
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 3040
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, v3

    .line 3041
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 3042
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    invoke-interface {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->getPaddings([I)V

    .line 3043
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->useRelativePositions:Z

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 3046
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3047
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3049
    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3050
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 3052
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-eq v1, v0, :cond_e

    .line 3053
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-gt v1, v4, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    .line 3054
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->checkPosition(IZ)I

    move-result v0

    if-eqz v1, :cond_8

    .line 3057
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-le v0, v1, :cond_5

    .line 3058
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3059
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    add-int/2addr v1, v2

    :goto_3
    if-gt v1, v0, :cond_e

    .line 3060
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v3, :cond_3

    goto :goto_4

    .line 3063
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3064
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1, v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-le v1, v0, :cond_e

    .line 3070
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v4, :cond_6

    goto :goto_6

    .line 3073
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3074
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1, v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 3079
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-le v0, v1, :cond_b

    :goto_7
    if-ge v1, v0, :cond_e

    .line 3081
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v4, :cond_9

    goto :goto_8

    .line 3084
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3085
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1, v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3089
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3090
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    sub-int/2addr v1, v2

    :goto_9
    if-lt v1, v0, :cond_e

    .line 3091
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v3, :cond_c

    goto :goto_a

    .line 3094
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3095
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1, v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3102
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result p1

    if-nez p1, :cond_10

    .line 3103
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    goto :goto_c

    :cond_f
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_c
    return v2
.end method

.method private clipChild(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_c

    .line 3729
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v0, p2}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3733
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 3737
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    add-int/2addr v0, v3

    .line 3738
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 3739
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v4, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3740
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v4, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 3743
    :goto_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 3744
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    .line 3745
    iget-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    goto :goto_2

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    neg-float v6, v6

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3746
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 3747
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-boolean v9, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    :cond_5
    iget v9, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    neg-float v9, v9

    :goto_3
    sub-float/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3743
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 3750
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v2

    .line 3751
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_7

    move v2, v3

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v0, v2

    :cond_9
    if-nez v1, :cond_a

    if-nez v0, :cond_a

    .line 3755
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 3756
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 3757
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :cond_a
    if-nez v1, :cond_b

    .line 3759
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 3760
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusTop:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3761
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :cond_b
    if-nez v0, :cond_c

    .line 3763
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 3764
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusBottom:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3765
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public static drawBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 3699
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3700
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundStrokePaint:Landroid/graphics/Paint;

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v5, 0xc000000

    invoke-static {v5, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v0, v4, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3701
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3702
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v5, 0xa000000

    invoke-static {v5, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 3704
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3706
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p5

    invoke-static {p5, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    cmpl-float p4, p2, p3

    if-nez p4, :cond_2

    .line 3708
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    if-eqz p3, :cond_1

    .line 3709
    sget-object p3, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3711
    :cond_1
    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 3713
    :cond_2
    sget-object p4, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    .line 3714
    sget-object p5, Lorg/telegram/ui/Components/RecyclerListView;->radii:[F

    const/4 v2, 0x3

    aput p2, p5, v2

    const/4 v2, 0x2

    aput p2, p5, v2

    const/4 v2, 0x1

    aput p2, p5, v2

    aput p2, p5, v1

    const/4 p2, 0x7

    .line 3715
    aput p3, p5, p2

    const/4 p2, 0x6

    aput p3, p5, p2

    const/4 p2, 0x5

    aput p3, p5, p2

    const/4 p2, 0x4

    aput p3, p5, p2

    .line 3716
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, p1, p5, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3717
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    if-eqz p1, :cond_3

    .line 3718
    sget-object p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionBackgroundStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3720
    :cond_3
    invoke-virtual {p0, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 8

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 3514
    :cond_0
    instance-of v0, p3, Lorg/telegram/ui/Components/JoinToSendSettingsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3515
    move-object v0, p3

    check-cast v0, Lorg/telegram/ui/Components/JoinToSendSettingsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->getBottomInfoMargin()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3518
    :goto_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 3519
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 3520
    iget-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    neg-float v3, v3

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v5

    if-eqz p4, :cond_3

    iget p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    goto :goto_2

    :cond_3
    move p4, v1

    :goto_2
    sub-float/2addr v5, p4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 3521
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 3522
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    goto :goto_3

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    neg-float v6, v6

    :goto_3
    sub-float/2addr v5, v6

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v6, p3

    if-eqz p5, :cond_5

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    :cond_5
    add-float/2addr v6, v1

    sub-float/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 3518
    invoke-virtual {v4, v2, p4, v3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3524
    iget p3, v4, Landroid/graphics/RectF;->bottom:F

    iget p4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float p3, p3, p4

    if-gez p3, :cond_6

    goto :goto_4

    .line 3525
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    iget p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2742
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2744
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->clipChild(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2745
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 2748
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSelectors2(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2714
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2718
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    if-ne v1, v3, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2720
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v0, :cond_2

    .line 2721
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->getSelectionBottomPadding(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2725
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 2727
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2729
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2730
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    if-eq v0, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_5

    .line 2731
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2733
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    if-eq v0, v2, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2734
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2737
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_2
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2656
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 2657
    :cond_2
    :goto_1
    iget p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 2658
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2659
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2660
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2662
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 2664
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 2667
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2668
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2670
    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 2672
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2675
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, p2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static filterThemeDescription(I[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 6

    .line 3999
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    if-ne p0, v0, :cond_4

    if-eqz p1, :cond_4

    .line 4004
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    if-ge v1, p0, :cond_1

    aget-object v4, p1, v1

    .line 4005
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4010
    :cond_1
    array-length p0, p1

    if-eq v2, p0, :cond_4

    .line 4011
    new-array p0, v2, [Ljava/lang/Class;

    .line 4013
    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v4, p1, v0

    .line 4014
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 4015
    aput-object v4, p0, v2

    move v2, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    return-object p1
.end method

.method private getDrawableStateForSelector()[I
    .locals 3

    const/4 v0, 0x1

    .line 2530
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 2531
    array-length v2, v1

    sub-int/2addr v2, v0

    const v0, 0x10100a7

    aput v0, v1, v2

    return-object v1
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2645
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 2647
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_1
    return-object p1
.end method

.method private hasAbove(Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gtz p2, :cond_2

    .line 3529
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3530
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3532
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    .line 3533
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private hasBelow(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3536
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3537
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3538
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 3539
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    .line 3540
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private hasClickableChild(Landroid/view/ViewGroup;FF)Z
    .locals 7

    .line 1336
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 1337
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1338
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1342
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    .line 1343
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p3, v4

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_3

    .line 1345
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 1346
    instance-of v5, v2, Lorg/telegram/ui/Components/RecyclerListView$HitTestable;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/RecyclerListView$HitTestable;

    .line 1347
    invoke-interface {v5, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView$HitTestable;->hasClickableNodeAt(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    .line 1350
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    .line 1353
    :cond_2
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 1354
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->hasClickableChild(Landroid/view/ViewGroup;FF)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private hasSectionChildAt(Landroid/view/View;IZ)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 3558
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-ne v1, p2, :cond_0

    goto :goto_1

    .line 3560
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3561
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eq v2, v3, :cond_4

    .line 3562
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3563
    invoke-interface {v3, v2}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 3564
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 3566
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eq v3, p3, :cond_3

    goto :goto_1

    .line 3567
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V
    .locals 9

    .line 2181
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2182
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2183
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2185
    :cond_0
    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;->run()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2187
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;ZFFZ)V

    .line 2188
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 2189
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2190
    instance-of p3, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p3, :cond_3

    .line 2191
    iget-object p3, v2, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    if-nez p3, :cond_2

    iget-object p3, v2, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 2194
    :cond_1
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 2192
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2197
    :cond_3
    :goto_1
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2199
    :cond_4
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2200
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2201
    iget-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-lez p2, :cond_7

    .line 2205
    iput-object v1, v2, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2206
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_6
    move-object v2, p0

    if-eqz p3, :cond_7

    .line 2221
    iput-object p1, v2, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    :cond_7
    return-void
.end method

.method private synthetic lambda$drawSectionsBackgrounds$6(Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    move-object v0, p3

    .line 3620
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v1, p2, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object p2, p1

    .line 3621
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    invoke-interface/range {p1 .. p6}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$drawSectionsBackgrounds$7(Landroid/graphics/Canvas;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    move-object v0, p3

    .line 3628
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v1, p2, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object p2, p1

    .line 3629
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    invoke-interface/range {p1 .. p6}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$highlightRowInternal$1()V
    .locals 2

    const/4 v0, 0x0

    .line 2207
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2208
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2209
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2210
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2211
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_0

    .line 2212
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$onLayout$0()V
    .locals 1

    .line 1747
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1749
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 2439
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;ZFFZ)V

    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFFZ)V
    .locals 8

    .line 2450
    iget-object p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    if-eqz p6, :cond_0

    .line 2451
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p6, 0x0

    .line 2452
    iput-object p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2453
    iput-object p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2455
    :cond_0
    iget-object p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p6, :cond_1

    goto/16 :goto_5

    .line 2458
    :cond_1
    iget p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p6, :cond_2

    move p6, v0

    goto :goto_0

    :cond_2
    move p6, v1

    .line 2460
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v2, :cond_3

    .line 2461
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->getSelectionBottomPadding(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    .line 2466
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    .line 2468
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2469
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 2470
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->setMaskDrawableRad(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4

    .line 2471
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    if-lez v3, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2472
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne p1, v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    goto :goto_3

    :cond_7
    move v5, v1

    :goto_3
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setMaskDrawableRad(Landroid/graphics/drawable/Drawable;II)V

    .line 2474
    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2477
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    .line 2478
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    if-eq v2, p2, :cond_9

    .line 2479
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    :cond_9
    if-eqz p6, :cond_a

    .line 2483
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2484
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2486
    :cond_a
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(Ljava/lang/Integer;)V

    .line 2487
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz p6, :cond_b

    .line 2489
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 2490
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_b
    if-eqz p3, :cond_c

    .line 2494
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_c
    :goto_5
    return-void
.end method

.method private removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1414
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1415
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1418
    instance-of v0, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    .line 1419
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    if-eqz p2, :cond_3

    .line 1422
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 1426
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1428
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    :cond_4
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2933
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2935
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2936
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getTouchParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 2938
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private startMultiselectScroll(Z)V
    .locals 0

    .line 3138
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollToTop:Z

    .line 3139
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3140
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    .line 3141
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3142
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateSelectorState()V
    .locals 2

    .line 2518
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2521
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2524
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addEdgeEffectListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 3199
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Lorg/telegram/ui/Components/EdgeEffectTrackerFactory$OnEdgeEffectListener;)V

    return-void
.end method

.method public addEdgeEffectListener(Lorg/telegram/ui/Components/EdgeEffectTrackerFactory$OnEdgeEffectListener;)V
    .locals 1

    .line 3203
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->edgeEffectTrackerFactory:Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;->addEdgeEffectListener(Lorg/telegram/ui/Components/EdgeEffectTrackerFactory$OnEdgeEffectListener;)V

    return-void
.end method

.method public addOverlayView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 2862
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2863
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$5;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    .line 2877
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected allowSelectChildAtPosition(FF)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 2342
    invoke-super {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 2131
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelClickRunnables(Z)V
    .locals 3

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1433
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1434
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    .line 1436
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1439
    invoke-virtual {p0, v0, p1, p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 1441
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .line 1442
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1444
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1446
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1447
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    .line 1449
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return-void
.end method

.method public capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    .line 3217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3219
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasActiveEdgeEffects()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 3220
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfTransformationsMatrix:Landroid/graphics/Matrix;

    if-nez p2, :cond_0

    .line 3221
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfTransformationsMatrix:Landroid/graphics/Matrix;

    .line 3224
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3225
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 3226
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfTransformationsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3227
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfTransformationsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3229
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3233
    :try_start_0
    invoke-super {p0, p1, p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 3235
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3237
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3239
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    return-void

    .line 3243
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    .line 3244
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v5

    .line 3245
    instance-of v6, v5, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    if-eqz v6, :cond_4

    .line 3246
    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    if-ne v5, v6, :cond_3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->canCaptureSectionsDecorator:Z

    if-nez v6, :cond_3

    goto :goto_2

    .line 3249
    :cond_3
    check-cast v5, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 3250
    invoke-interface {v5, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;->capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3253
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    .line 3254
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3256
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    .line 3257
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    .line 3258
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 3259
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    .line 3261
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    .line 3265
    iput-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreClipChild:Z

    .line 3266
    invoke-virtual {p0, p1, v5, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3267
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreClipChild:Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 7

    .line 3276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 3277
    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->unsupported()V

    return-void

    .line 3281
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasActiveEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3282
    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->unsupported()V

    return-void

    .line 3286
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3287
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v3

    .line 3288
    instance-of v4, v3, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    if-eqz v4, :cond_3

    .line 3289
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    if-ne v3, v4, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->canCaptureSectionsDecorator:Z

    if-nez v4, :cond_2

    goto :goto_1

    .line 3292
    :cond_2
    check-cast v3, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 3293
    invoke-interface {v3, p1, p2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;->captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3296
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 3297
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3299
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    .line 3300
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    .line 3301
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 3302
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 3304
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 3308
    :cond_5
    invoke-interface {p1, v2}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public checkIfEmpty()V
    .locals 1

    .line 2272
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateEmptyViewAnimated()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public checkSection(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1800
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v1, :cond_2

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_2b

    .line 1801
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 1802
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2b

    .line 1803
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1804
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 1805
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_28

    .line 1806
    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 1807
    :goto_0
    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/high16 v7, 0x42000000    # 32.0f

    const/4 v8, 0x3

    const v10, 0x7fffffff

    if-eq v6, v3, :cond_15

    if-ne v6, v8, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v1, 0x2

    if-ne v6, v1, :cond_2b

    const/4 v1, 0x0

    .line 1909
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    .line 1910
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_10

    .line 1913
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v11, v5

    move v12, v11

    move v8, v10

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v11, v1, :cond_a

    .line 1921
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1922
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1923
    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v15, v2

    if-gt v14, v15, :cond_6

    goto :goto_2

    :cond_6
    if-ge v14, v10, :cond_7

    move-object v9, v13

    move v10, v14

    .line 1930
    :cond_7
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1931
    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v15, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    if-ge v14, v15, :cond_8

    goto :goto_2

    :cond_8
    if-ge v14, v8, :cond_9

    move-object v6, v13

    move v8, v14

    :cond_9
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_a
    if-nez v9, :cond_b

    goto/16 :goto_10

    .line 1942
    :cond_b
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_10

    .line 1946
    :cond_c
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1947
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v7

    if-gez v7, :cond_d

    goto/16 :goto_10

    .line 1951
    :cond_d
    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    if-ne v8, v7, :cond_e

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-nez v8, :cond_f

    .line 1952
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    .line 1953
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1954
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v8, v5, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1955
    iput v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 1957
    :cond_f
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v8, :cond_10

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v6, v8, :cond_10

    .line 1958
    iput v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    .line 1960
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v4

    .line 1962
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    if-eqz v12, :cond_11

    .line 1963
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v12, v6, :cond_11

    goto :goto_3

    :cond_11
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    :goto_3
    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_14

    .line 1966
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1969
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_12

    sub-int/2addr v3, v1

    goto :goto_4

    :cond_12
    move v3, v2

    :goto_4
    if-gez v3, :cond_13

    .line 1977
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 1979
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 1982
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1985
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1808
    :cond_15
    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v12, v5

    move v14, v12

    move v11, v10

    const/4 v13, 0x0

    :goto_7
    if-ge v12, v6, :cond_1a

    .line 1815
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move/from16 v16, v7

    .line 1816
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1817
    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v9, v2

    if-gt v7, v9, :cond_16

    goto :goto_8

    :cond_16
    if-ge v7, v10, :cond_17

    move v10, v7

    move-object v13, v15

    .line 1824
    :cond_17
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1825
    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v9, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v9, v15

    if-ge v7, v9, :cond_18

    goto :goto_8

    :cond_18
    if-ge v7, v11, :cond_19

    move v11, v7

    :cond_19
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v16

    goto :goto_7

    :cond_1a
    if-nez v13, :cond_1b

    goto/16 :goto_10

    .line 1835
    :cond_1b
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_1c

    goto/16 :goto_10

    .line 1840
    :cond_1c
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v6

    .line 1841
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v6

    .line 1842
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 1844
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v7, :cond_1d

    if-eqz p1, :cond_1e

    :cond_1d
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1845
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    .line 1846
    instance-of v7, v7, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v7, :cond_1e

    .line 1847
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    int-to-float v9, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getTotalItemsCount()I

    move-result v10

    sub-int/2addr v10, v1

    add-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 1851
    :cond_1e
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1852
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1853
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_10

    .line 1856
    :cond_1f
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    if-ne v4, v6, :cond_20

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    if-eq v4, v1, :cond_21

    .line 1857
    :cond_20
    iput v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 1858
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    .line 1860
    iput v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    .line 1861
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    .line 1862
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v4

    add-int/2addr v4, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v7

    sub-int/2addr v4, v7

    :goto_9
    add-int v7, v6, v1

    if-ge v4, v7, :cond_21

    .line 1864
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 1865
    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    goto :goto_9

    .line 1869
    :cond_21
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-eq v1, v8, :cond_2b

    .line 1871
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    move v3, v6

    :goto_a
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v4, v7

    if-ge v1, v4, :cond_2b

    .line 1873
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 1874
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1875
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_22
    const/4 v4, 0x0

    .line 1877
    :goto_b
    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1878
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v7

    .line 1880
    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    const/high16 v9, 0x42c80000    # 100.0f

    if-ne v1, v8, :cond_26

    .line 1881
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v8

    add-int/lit8 v10, v7, -0x1

    if-ne v8, v10, :cond_23

    .line 1883
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_d

    :cond_23
    add-int/lit8 v10, v7, -0x2

    if-ne v8, v10, :cond_25

    sub-int v8, v3, v6

    .line 1885
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_24

    .line 1888
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_c

    .line 1890
    :cond_24
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    .line 1892
    :goto_c
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_d

    .line 1894
    :cond_25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1896
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v4

    sub-int/2addr v7, v4

    :goto_e
    add-int/2addr v3, v7

    goto :goto_f

    :cond_26
    sub-int v8, v3, v6

    .line 1898
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 1900
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_e

    .line 1902
    :cond_27
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_e

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 1988
    :cond_28
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 1989
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1990
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    const/4 v1, -0x1

    if-ne v2, v1, :cond_29

    goto :goto_10

    .line 1996
    :cond_29
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_2a

    if-eqz p1, :cond_2b

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1997
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 1999
    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v2, :cond_2b

    .line 2000
    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v2

    .line 2001
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v1

    .line 2002
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setIsVisible(Z)V

    .line 2003
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 2004
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->-$$Nest$mgetCurrentLetter(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V

    :cond_2b
    :goto_10
    return-void
.end method

.method public clickItem(Landroid/view/View;I)V
    .locals 2

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 2043
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void

    .line 2044
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2045
    invoke-interface {v0, p1, p2, v1, v1}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->onItemClick(Landroid/view/View;IFF)V

    :cond_1
    return-void
.end method

.method public disableSections()V
    .locals 2

    .line 3350
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/4 v0, 0x0

    .line 3351
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    const/4 v1, 0x0

    .line 3352
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    .line 3353
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusTop:[F

    .line 3354
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusBottom:[F

    .line 3355
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    .line 3356
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    if-eqz v1, :cond_0

    .line 3357
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3358
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v0, :cond_0

    .line 2770
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->dispatchDraw()V

    .line 2774
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    if-eqz v0, :cond_1

    .line 2775
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectors2(Landroid/graphics/Canvas;)V

    .line 2777
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2778
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    if-nez v0, :cond_2

    .line 2779
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectors2(Landroid/graphics/Canvas;)V

    .line 2781
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 2782
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2785
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->skipDrawSection:Z

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 2787
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 2788
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    .line 2789
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 2790
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2791
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2792
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2793
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2794
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2795
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2796
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2800
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_c

    .line 2801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2802
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2803
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    :cond_7
    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2804
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 2805
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2806
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2807
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2810
    iget-wide v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastAlphaAnimationTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x14

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2811
    iput-wide v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastAlphaAnimationTime:J

    .line 2812
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    cmpg-float v6, v1, v2

    const/high16 v7, 0x43340000    # 180.0f

    if-gez v6, :cond_9

    long-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v1, v4

    .line 2813
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 2815
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    .line 2817
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_9
    cmpl-float v6, v1, v2

    if-lez v6, :cond_b

    long-to-float v4, v4

    div-float/2addr v4, v7

    sub-float/2addr v1, v4

    .line 2819
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    .line 2821
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    .line 2823
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2826
    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2827
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2828
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    :goto_3
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 2627
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    if-eqz v0, :cond_1

    .line 2628
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    if-eqz p4, :cond_0

    int-to-float p5, p1

    int-to-float v0, p2

    .line 2629
    invoke-interface {p4, p5, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;->onMove(FF)V

    :cond_0
    const/4 p4, 0x0

    .line 2631
    aput p1, p3, p4

    const/4 p1, 0x1

    .line 2632
    aput p2, p3, p1

    return p1

    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2635
    invoke-super/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2248
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->activeTouches:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->adaptiveOverScroll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2249
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2251
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->activeTouches:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->activeTouches:I

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 2253
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->activeTouches:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->activeTouches:I

    if-nez v0, :cond_3

    .line 2254
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->adaptiveOverScroll:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 2255
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2259
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2260
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz v3, :cond_4

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4

    return v2

    .line 2263
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 2266
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 6

    .line 3724
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->drawBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 2756
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreClipChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    if-eq p2, v0, :cond_0

    .line 2757
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2758
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->clipChild(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2759
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2760
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 2763
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected drawSectionBackground(Landroid/graphics/Canvas;III)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1593
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;IIIII)V

    return-void
.end method

.method protected drawSectionBackground(Landroid/graphics/Canvas;IIIII)V
    .locals 6

    if-lt p3, p2, :cond_5

    if-ltz p2, :cond_5

    if-gez p3, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 1603
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1604
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1608
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 1609
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, p2, :cond_2

    if-gt v4, p3, :cond_2

    .line 1611
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v4, v5

    .line 1612
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_5

    .line 1617
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_4

    .line 1618
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 1620
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    sub-int/2addr v0, p5

    int-to-float p3, v0

    .line 1621
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p4, p2

    add-int/2addr v1, p6

    int-to-float p5, v1

    iget-object p6, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public drawSectionsBackgrounds(Landroid/graphics/Canvas;)V
    .locals 13

    .line 3575
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    if-nez v0, :cond_0

    move-object p1, p0

    goto/16 :goto_9

    .line 3577
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 3578
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sections:Ljava/util/ArrayList;

    .line 3579
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    :cond_2
    move v0, v3

    .line 3581
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 3582
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3583
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    if-eq v4, v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eq v4, v5, :cond_8

    .line 3586
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v1

    if-lez v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v5, v5, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3587
    invoke-interface {v5, v4}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 3590
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    .line 3591
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 3592
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3594
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpg-float v8, v8, v2

    if-gez v8, :cond_5

    .line 3596
    invoke-direct {p0, v4, v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->hasSectionChildAt(Landroid/view/View;IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 3600
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    iget v9, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    sub-float/2addr v5, v9

    .line 3603
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-direct {v8, v5, v6, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;-><init>(FFF)V

    .line 3600
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3605
    :cond_5
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->isInsideForcedSection(I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 3608
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 3610
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_7

    const v7, 0x3f7d70a4    # 0.99f

    cmpg-float v7, v8, v7

    if-gez v7, :cond_7

    const/4 v7, 0x1

    invoke-direct {p0, v4, v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->hasSectionChildAt(Landroid/view/View;IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    move v8, v2

    .line 3613
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sections:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;

    invoke-direct {v7, v5, v6, v8}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;-><init>(FFF)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3618
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/graphics/Canvas;)V

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->draw(Ljava/util/List;FLorg/telegram/messenger/Utilities$Callback5;)V

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removedSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3627
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sections:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/graphics/Canvas;)V

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;->draw(Ljava/util/List;FLorg/telegram/messenger/Utilities$Callback5;)V

    .line 3631
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v7, p1

    move-object p1, p0

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x0

    const/4 v4, -0x1

    move-object v8, v0

    move-object v9, v8

    move v5, v3

    move v6, v4

    move v7, v6

    .line 3635
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_10

    .line 3636
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3637
    iget-object v10, p0, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    if-eq v12, v10, :cond_f

    iget-object v10, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eq v12, v10, :cond_f

    .line 3640
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v10

    cmpg-float v10, v10, v1

    if-lez v10, :cond_f

    iget-object v10, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v10, v10, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3641
    invoke-interface {v10, v12}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3642
    invoke-virtual {p0, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->isInsideForcedSection(I)Z

    move-result v10

    if-eqz v10, :cond_c

    move v11, v7

    move-object v7, p1

    move-object p1, p0

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    .line 3649
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_d

    .line 3650
    invoke-direct {p0, v8, v6}, Lorg/telegram/ui/Components/RecyclerListView;->hasAbove(Landroid/view/View;I)Z

    move-result v10

    invoke-direct {p0, v9, v7}, Lorg/telegram/ui/Components/RecyclerListView;->hasBelow(Landroid/view/View;I)Z

    move-result v11

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;ZZ)V

    move-object p1, v6

    move-object v8, v0

    move v6, v4

    move-object v9, v7

    goto :goto_3

    :cond_d
    move-object v9, p1

    move-object p1, p0

    :goto_3
    if-nez v8, :cond_e

    move v6, v5

    move-object v8, v12

    :cond_e
    move-object v7, v9

    move-object v9, v8

    move v8, v5

    goto :goto_5

    :cond_f
    move-object v10, v9

    move-object v9, p1

    move-object p1, p0

    move v11, v7

    move-object v7, v9

    move-object v9, v10

    .line 3644
    :goto_4
    invoke-direct {p0, v8, v6}, Lorg/telegram/ui/Components/RecyclerListView;->hasAbove(Landroid/view/View;I)Z

    move-result v10

    invoke-direct {p0, v9, v11}, Lorg/telegram/ui/Components/RecyclerListView;->hasBelow(Landroid/view/View;I)Z

    move-result v11

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;ZZ)V

    move-object v9, v0

    move-object v12, v9

    move v6, v4

    move v8, v6

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object p1, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v12

    goto/16 :goto_2

    :cond_10
    move v11, v7

    move-object v7, p1

    move-object p1, p0

    .line 3661
    invoke-direct {p0, v8, v6}, Lorg/telegram/ui/Components/RecyclerListView;->hasAbove(Landroid/view/View;I)Z

    move-result v10

    invoke-direct {p0, v9, v11}, Lorg/telegram/ui/Components/RecyclerListView;->hasBelow(Landroid/view/View;I)Z

    move-result v11

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 3664
    :goto_6
    iget-object v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    move v0, v3

    .line 3665
    :goto_7
    iget-object v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 3666
    iget-object v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3667
    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->unpackA(J)I

    move-result v1

    .line 3668
    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->unpackB(J)I

    move-result v4

    .line 3670
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    add-float/2addr v5, v6

    neg-float v6, v6

    move v8, v3

    .line 3671
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_12

    .line 3672
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3673
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    .line 3675
    iget-object v11, p1, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    if-eq v9, v11, :cond_11

    if-lt v10, v1, :cond_11

    if-gt v10, v4, :cond_11

    .line 3676
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3677
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v10, v9

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    cmpg-float v1, v5, v6

    if-gez v1, :cond_13

    .line 3682
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 3683
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v4, p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 3685
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v4, v9

    iget-object v9, p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-static {v9}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->-$$Nest$fgetpadding(Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;)I

    move-result v9

    sub-int/2addr v4, v9

    int-to-float v4, v4

    .line 3682
    invoke-virtual {v8, v1, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3688
    iget-object v6, p1, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    iget v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface/range {v6 .. v11}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_14
    :goto_9
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 2554
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2555
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method public emptyViewIsVisible()Z
    .locals 2

    .line 2350
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2353
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected emptyViewUpdated(ZZ)V
    .locals 0

    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 7

    .line 1365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 1368
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1369
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_0

    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 1370
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-nez v1, :cond_3

    .line 1371
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 1372
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_4

    .line 1373
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_4

    .line 1374
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    .line 1375
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_4

    return-object v3

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 3320
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3321
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3322
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_1

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 11

    .line 3770
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3773
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v3

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 3777
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    add-int/2addr v0, v2

    .line 3778
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 3779
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v4, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 3780
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;->isSectionItem:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-interface {v4, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 3783
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 3785
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    .line 3786
    iget-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3787
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 3788
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-boolean v9, p0, Lorg/telegram/ui/Components/RecyclerListView;->applyPaddingToSections:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    goto :goto_3

    :cond_5
    move v9, v3

    :goto_3
    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3784
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 3791
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    .line 3792
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 3793
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {v3, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    return-object p1

    :cond_8
    move v0, v2

    .line 3795
    :cond_9
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    if-nez v1, :cond_a

    if-nez v0, :cond_a

    .line 3797
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 3798
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_6

    :cond_a
    if-nez v1, :cond_b

    .line 3800
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 3801
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusTop:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_6

    :cond_b
    if-nez v0, :cond_c

    .line 3803
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 3804
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusBottom:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3807
    :cond_c
    :goto_6
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$7;

    invoke-direct {v0, p0, p1, v2, v4}, Lorg/telegram/ui/Components/RecyclerListView$7;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    return-object v0

    :cond_d
    :goto_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2887
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadersCache()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method public getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method public getPinnedHeader()Landroid/view/View;
    .locals 1

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getPressedChildView()Landroid/view/View;
    .locals 1

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object v0
.end method

.method public getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    const/4 v0, 0x0

    .line 1487
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".R$styleable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 1

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor:Lorg/telegram/messenger/GenericProvider;

    if-eqz v0, :cond_0

    .line 2020
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1796
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectorRect()Landroid/graphics/Rect;
    .locals 1

    .line 2702
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 3151
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3155
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3156
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3161
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getTouchParent()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasActiveEdgeEffects()Z
    .locals 1

    .line 3195
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->edgeEffectTrackerFactory:Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EdgeEffectTrackerFactory;->hasVisibleEdges()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSections()Z
    .locals 1

    .line 3331
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .line 2357
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2360
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    .line 2361
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 2362
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2364
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2365
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideSelector(Z)V
    .locals 3

    .line 2503
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2505
    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    const/4 v1, 0x0

    .line 2506
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2508
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    if-nez p1, :cond_1

    .line 2512
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2513
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V
    .locals 2

    const/16 v0, 0x2bc

    const/4 v1, 0x1

    .line 2139
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    return-void
.end method

.method public highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2143
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    return-void
.end method

.method public invalidateViews()V
    .locals 4

    .line 2109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2111
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2112
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    if-eqz v3, :cond_0

    .line 2113
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/Theme$Colorable;->updateColors()V

    .line 2115
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isFastScrollAnimationRunning()Z
    .locals 1

    .line 2899
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    return v0
.end method

.method public isInsideForcedSection(I)Z
    .locals 5

    .line 3545
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 3546
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3547
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->forcedSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3548
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->unpackA(J)I

    move-result v4

    .line 3549
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->unpackB(J)I

    move-result v2

    if-lt p1, v4, :cond_1

    if-gt p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public isMultiselect()Z
    .locals 1

    .line 3147
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 2565
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2566
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2567
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2573
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2579
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2580
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2583
    :cond_1
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_2

    .line 2585
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 2537
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v0, :cond_0

    .line 2538
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2540
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2541
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    if-eqz v0, :cond_1

    .line 2542
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2546
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 2547
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2549
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 0

    .line 1396
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->disableHighlightState:Z

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 2847
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, -0x1

    .line 2848
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v0, 0x0

    .line 2849
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2850
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2851
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v0, :cond_0

    .line 2852
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->onDetached()V

    .line 2855
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2856
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 2857
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2227
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2230
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2231
    invoke-direct {p0, p0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2233
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1726
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, p0

    .line 1727
    :try_start_1
    iget-object p2, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    const/4 p5, 0x1

    .line 1728
    iput-boolean p5, p1, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 1729
    iget-boolean p5, p2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_3

    :cond_0
    iget p2, p2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    :goto_1
    add-int/2addr p3, p2

    .line 1731
    iget-object p2, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-boolean p5, p2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz p5, :cond_1

    .line 1732
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget-object v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, p4, p3, p5, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    goto :goto_2

    .line 1734
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p5, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    sub-int/2addr p2, p5

    .line 1735
    iget-object p5, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p5, p2, p3, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    .line 1737
    :goto_2
    iput-boolean p4, p1, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 1739
    :cond_2
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/RecyclerListView;->checkSection(Z)V

    .line 1740
    iget-object p2, p1, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    if-eqz p2, :cond_3

    const/16 p3, 0x2bc

    .line 1741
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void

    :catch_1
    move-exception v0

    move-object p1, p0

    goto :goto_0

    .line 1744
    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1745
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1713
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 1714
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1715
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    .line 1716
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1718
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/high16 v0, 0x43040000    # 132.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1720
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->touchSlop:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 2681
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 2682
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2685
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 2686
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2689
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 2690
    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2691
    invoke-direct {p0, p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_4

    .line 2694
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_1

    .line 2697
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3004
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->-$$Nest$fgetpressed(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3007
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    .line 3008
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 3009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 3010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 3012
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->touchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 3013
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    .line 3014
    invoke-direct {p0, p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 3016
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    if-eqz v0, :cond_7

    .line 3017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->chekMultiselect(FF)Z

    .line 3018
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->getPaddings([I)V

    .line 3019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v0}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3020
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->startMultiselectScroll(Z)V

    goto :goto_0

    .line 3021
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3022
    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->startMultiselectScroll(Z)V

    goto :goto_0

    .line 3024
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelMultiselectScroll()V

    :cond_7
    :goto_0
    return v3

    .line 3029
    :cond_8
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 3030
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 3031
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    .line 3032
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    .line 3033
    invoke-direct {p0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 3034
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelMultiselectScroll()V

    .line 3035
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public relayoutPinnedHeader()V
    .locals 4

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2839
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2841
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeHighlightRow()V
    .locals 4

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2149
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2151
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2152
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    return-void

    .line 2154
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2155
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2157
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 2158
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2159
    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2162
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2163
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    return-void

    .line 2165
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 2166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2167
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_3

    .line 2168
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2171
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2173
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2904
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2907
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0

    .line 3178
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 2591
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2593
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 2595
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2596
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2597
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, -0x1

    .line 2599
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 2600
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v0, 0x0

    .line 2601
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2602
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2603
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    .line 2604
    instance-of v1, p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_2

    .line 2605
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    goto :goto_0

    .line 2607
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 2609
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_3

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3
    const/4 p1, 0x0

    .line 2613
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public setAdaptiveOverScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 2240
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->adaptiveOverScroll:Z

    const/4 v0, 0x2

    .line 2241
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public setAllowItemsInteractionDuringAnimation(Z)V
    .locals 0

    .line 2499
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    return-void
.end method

.method public setAllowStopHeaveOperations(Z)V
    .locals 0

    .line 3182
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowStopHeaveOperations:Z

    return-void
.end method

.method public setAnimateEmptyView(ZI)V
    .locals 0

    .line 2942
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    .line 2943
    iput p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    return-void
.end method

.method public setCaptureSectionsDecoratorAllowed(Z)V
    .locals 0

    .line 3315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->canCaptureSectionsDecorator:Z

    return-void
.end method

.method public setDisableHighlightState(Z)V
    .locals 0

    .line 1388
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disableHighlightState:Z

    return-void
.end method

.method public setDisallowInterceptTouchEvents(Z)V
    .locals 0

    .line 2407
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    return-void
.end method

.method public setDraggingChild(Landroid/view/View;)V
    .locals 0

    .line 3344
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->draggingChild:Landroid/view/View;

    return-void
.end method

.method public setDrawSelection(Z)V
    .locals 0

    .line 3186
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    return-void
.end method

.method public setDrawSelectorBehind(Z)V
    .locals 0

    .line 1768
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 2079
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2085
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    .line 2086
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2087
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz p1, :cond_4

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 2091
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    .line 2092
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p1, -0x1

    .line 2095
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    const/4 p1, 0x0

    .line 2096
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public setFastScrollEnabled(I)V
    .locals 2

    .line 2411
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    .line 2412
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2413
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFastScrollVisible(Z)V
    .locals 2

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2421
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    return-void
.end method

.method public setHideIfEmpty(Z)V
    .locals 0

    .line 2391
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    return-void
.end method

.method public setInstantClick(Z)V
    .locals 0

    .line 2403
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 3445
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2026
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V
    .locals 0

    .line 3174
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setListSelectorColor(Ljava/lang/Integer;)V
    .locals 2

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_settings_listSelector:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    return-void
.end method

.method public setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V
    .locals 0

    .line 2399
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V
    .locals 0

    .line 2034
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V
    .locals 2

    .line 2059
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;J)V
    .locals 1

    .line 2063
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setIsLongpressEnabled(Z)V

    .line 2065
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setLongpressDuration(J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V
    .locals 2

    .line 2069
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V
    .locals 1

    .line 2073
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setIsLongpressEnabled(Z)V

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setLongpressDuration(J)V

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 2387
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPadding(IIIIZ)V
    .locals 0

    if-eqz p5, :cond_0

    .line 2914
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setPaddingWithoutRequestLayout(IIII)V

    return-void

    .line 2916
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingWithoutRequestLayout(IIII)V
    .locals 1

    .line 2921
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2922
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreLayout:Z

    .line 2923
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 2924
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->ignoreLayout:Z

    return-void
.end method

.method public setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2126
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPinnedSectionOffsetY(I)V
    .locals 0

    .line 2434
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    .line 2435
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResetSelectorOnChanged(Z)V
    .locals 0

    .line 1454
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 2135
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    return-void
.end method

.method public setSections()V
    .locals 3

    const/high16 v0, 0x41400000    # 12.0f

    .line 3363
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(IFZ)V

    return-void
.end method

.method public setSections(IFZ)V
    .locals 6

    .line 3369
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Lorg/telegram/messenger/Utilities$CallbackReturn;IFLorg/telegram/messenger/Utilities$Callback5;Z)V

    return-void
.end method

.method public setSections(Lorg/telegram/messenger/Utilities$CallbackReturn;IFLorg/telegram/messenger/Utilities$Callback5;Z)V
    .locals 8

    .line 3407
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->cachedIsViewTypeShadow(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;)Landroid/util/Pair;

    move-result-object p1

    .line 3408
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/Utilities$CallbackReturn;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lorg/telegram/messenger/Utilities$CallbackReturn;

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Lorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$CallbackReturn;IFLorg/telegram/messenger/Utilities$Callback5;Z)V

    return-void
.end method

.method public setSections(Lorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$CallbackReturn;IFLorg/telegram/messenger/Utilities$Callback5;Z)V
    .locals 11

    .line 3418
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_settings_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 3419
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isViewTypeSection:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 3420
    iput p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadius:F

    const/16 p2, 0x8

    .line 3421
    new-array v1, p2, [F

    const/4 v2, 0x0

    aput p4, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    const/4 v4, 0x2

    aput p4, v1, v4

    const/4 v5, 0x3

    aput p4, v1, v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, v1, v6

    const/4 v8, 0x5

    aput v7, v1, v8

    const/4 v9, 0x6

    aput v7, v1, v9

    const/4 v10, 0x7

    aput v7, v1, v10

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusTop:[F

    .line 3427
    new-array p2, p2, [F

    aput v7, p2, v2

    aput v7, p2, v3

    aput v7, p2, v4

    aput v7, p2, v5

    aput p4, p2, v6

    aput p4, p2, v8

    aput p4, p2, v9

    aput p4, p2, v10

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionRadiusBottom:[F

    move-object/from16 p2, p5

    .line 3433
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground:Lorg/telegram/messenger/Utilities$Callback5;

    .line 3434
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    if-eqz p2, :cond_0

    .line 3435
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3437
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    move/from16 v0, p6

    invoke-direct {p2, p0, p1, p3, v0}, Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/messenger/Utilities$CallbackReturn;IZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsItemDecoration:Lorg/telegram/ui/Components/RecyclerListView$ListSectionsDecoration;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setSections(Z)V
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    .line 3366
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(IFZ)V

    return-void
.end method

.method public setSectionsType(I)V
    .locals 1

    .line 2426
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2428
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    .line 2429
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-void
.end method

.method public setSelectorDrawableColor(I)V
    .locals 4

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1773
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1775
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1776
    invoke-static {v3, v3, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1778
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 1780
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1781
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    if-lez v1, :cond_4

    .line 1782
    invoke-static {p1, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1783
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    if-lez v1, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/high16 v0, -0x1000000

    .line 1784
    invoke-static {v1, v3, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 1786
    invoke-static {p1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1788
    :cond_6
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1790
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 1791
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    return-void
.end method

.method public setSelectorRadius(I)V
    .locals 0

    .line 1760
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    return-void
.end method

.method public setSelectorTransformer(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setSelectorType(I)V
    .locals 0

    .line 1756
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    return-void
.end method

.method public setSkipDrawSection(Z)V
    .locals 0

    .line 2834
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->skipDrawSection:Z

    return-void
.end method

.method public setTopBottomSelectorRadius(I)V
    .locals 0

    .line 1764
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    return-void
.end method

.method public setTranslateSelector(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2706
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    return-void
.end method

.method public setTranslateSelectorPosition(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    .line 2710
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:I

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 2981
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2982
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    .line 2983
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 1706
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-eqz v0, :cond_0

    .line 1707
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2379
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2381
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 2370
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2373
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    .line 2374
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public startMultiselect(IZLorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;)V
    .locals 1

    .line 2988
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2989
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    .line 2990
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectedPositions:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 2992
    invoke-direct {p0, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2994
    iput-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    .line 2995
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    .line 2996
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    .line 2998
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->useRelativePositions:Z

    return-void
.end method

.method public stopScroll()V
    .locals 0

    .line 2619
    :try_start_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected updateEmptyViewAnimated()Z
    .locals 1

    .line 2101
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public updateFastScrollColors()V
    .locals 1

    .line 2120
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    .line 2121
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->-$$Nest$mupdateColors(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    :cond_0
    return-void
.end method

.method public updateSelector()V
    .locals 2

    .line 2443
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2444
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 2445
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2560
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
