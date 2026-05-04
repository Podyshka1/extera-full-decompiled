.class public abstract Lorg/telegram/ui/Components/MentionsContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;,
        Lorg/telegram/ui/Components/MentionsContainerView$Delegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private animationIndex:I

.field private backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field baseFragment:Ljava/lang/ref/WeakReference;

.field private botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private botContextResults:Ljava/util/ArrayList;

.field private final clipBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private color:Ljava/lang/Integer;

.field private containerBottom:F

.field private containerPadding:F

.field private containerTop:F

.field private delegate:Ljava/lang/ref/WeakReference;

.field private gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private hideT:F

.field private ignoreLayout:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

.field private listViewHiding:Z

.field private listViewPadding:F

.field private listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollRangeUpdateTries:I

.field private scrollToFirst:Z

.field private shouldLiftMentions:Z

.field private shown:Z

.field private switchLayoutManagerOnEnd:Z

.field private updateVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$MleTDL2j1i5cjBW58sa4BD1z4fI(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$withDelegate$4(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0RBUas03aNl8uv9eCnt3Tgs_hs(Landroid/view/View;)V
    .locals 1

    .line 917
    instance-of v0, p0, Lorg/telegram/ui/Cells/MentionCell;

    if-eqz v0, :cond_0

    .line 918
    check-cast p0, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/MentionCell;->invalidateEmojis()V

    return-void

    .line 919
    :cond_0
    instance-of v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    if-eqz v0, :cond_1

    .line 920
    check-cast p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    invoke-virtual {p0}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->invalidateEmojis()V

    return-void

    .line 922
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$UqWP8-_zpas1gvXY34-zy2hFTjs(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dd_L2UtPYzHyIxI7hKB0lrroym8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$gnnajvVGDQZvcbMuUn0OBb5VIhQ(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$withDelegate$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uRBGmG7gxFOcCAcGSkaV79EuAgM(Lorg/telegram/ui/Components/MentionsContainerView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$updateListViewTranslation$2(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$uS7DXN16iRvLd78lvRuIaz9FjZc(Lorg/telegram/ui/Components/MentionsContainerView;FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$updateListViewTranslation$1(FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbotContextResults(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->botContextResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgridLayoutManager(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlinearLayoutManager(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistViewPadding(Lorg/telegram/ui/Components/MentionsContainerView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollToFirst(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshown(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateVisibilityRunnable(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistViewPadding(Lorg/telegram/ui/Components/MentionsContainerView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToFirst(Lorg/telegram/ui/Components/MentionsContainerView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchLayoutManagerOnEnd(Lorg/telegram/ui/Components/MentionsContainerView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBackgroundBounds(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->checkBackgroundBounds()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    move-object/from16 v8, p7

    .line 78
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 261
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    .line 401
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    .line 415
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 416
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 417
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    const/4 v11, -0x1

    .line 462
    iput v11, p0, Lorg/telegram/ui/Components/MentionsContainerView;->animationIndex:I

    .line 463
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 465
    iput-boolean v10, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 562
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MentionsContainerView$5;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 954
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    .line 955
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipBounds:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Ljava/lang/ref/WeakReference;

    .line 80
    iput-object v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v0, 0x8

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v10}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const/high16 v1, 0x42fc0000    # 126.0f

    .line 85
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    .line 87
    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-direct {v1, p0, p1, v8}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    .line 88
    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 100
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 101
    new-instance v2, Lorg/telegram/ui/Components/MentionsContainerView$2;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x64

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MentionsContainerView$2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;IZZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 172
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MentionsContainerView$3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 194
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 195
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 197
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 198
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 199
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v7, Lorg/telegram/ui/Components/MentionsContainerView$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/MentionsContainerView$4;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isStories()Z

    move-result v9

    const/4 v2, 0x0

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    .line 245
    new-instance p1, Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Adapters/PaddedListAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    .line 246
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {v11, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    return-void
.end method

.method private checkBackgroundBounds()V
    .locals 6

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 962
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    const/4 v1, 0x0

    .line 963
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 967
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 968
    iget v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 970
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    .line 971
    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    goto :goto_2

    .line 973
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v3, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    int-to-float v0, v0

    .line 974
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    sub-float/2addr v0, v1

    .line 975
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 978
    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    .line 979
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    .line 982
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_5

    .line 983
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    .line 985
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    .line 986
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v5, v5

    .line 987
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v5, v3

    .line 983
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPaddedBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 993
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isGif()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipBounds:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 996
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 997
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 995
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 1001
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1002
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 1003
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1001
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1007
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1008
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_4
    return-void
.end method

.method private checkListViewPadding()V
    .locals 8

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1023
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isGif()Z

    move-result v0

    .line 1024
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1027
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40e00000    # 7.0f

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-eqz v0, :cond_5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_5
    invoke-virtual {v1, v5, v7, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private isGif()Z
    .locals 2

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v1, :cond_0

    .line 1014
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateListViewTranslation(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$1(FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 522
    iget-object p5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p5, p6}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onAnimationScroll()V

    sub-float/2addr p6, p3

    sub-float/2addr p4, p3

    div-float/2addr p6, p4

    .line 524
    invoke-static {p1, p2, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$2(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 529
    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    move p3, p2

    .line 530
    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-boolean p3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 532
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$withDelegate$4(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz p3, :cond_15

    .line 610
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBannedInline()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v2, p3, -0x1

    .line 614
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 615
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultStartPosition()I

    move-result v4

    .line 616
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultLength()I

    move-result v5

    .line 617
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isLocalHashtagHint(I)Z

    move-result v6

    const-string v7, ""

    const-string v8, "@"

    const-string v9, " "

    const/4 v10, 0x0

    if-eqz v6, :cond_3

    .line 618
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_1

    .line 619
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_1

    .line 620
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 622
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getHashtagHint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    return-void

    .line 624
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isGlobalHashtagHint(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getHashtagHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    return-void

    .line 628
    :cond_4
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    .line 629
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 630
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemParent(I)Ljava/lang/Object;

    move-result-object v4

    .line 631
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 632
    iget-object v7, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v7, v0, v5, v4}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 633
    :cond_5
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v12, ", "

    if-eqz v0, :cond_7

    .line 634
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 635
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 637
    iget-object v7, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    if-eqz v0, :cond_6

    move-object v9, v12

    :cond_6
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v4, v5, v0, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 639
    :cond_7
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v13, 0x21

    if-eqz v0, :cond_b

    .line 640
    move-object v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 642
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 643
    iget-object v7, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    if-eqz v0, :cond_8

    move-object v9, v12

    :cond_8
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v4, v5, v0, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 645
    :cond_9
    invoke-static {v0, v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    move-result-object v8

    .line 646
    new-instance v14, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v16, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    if-eqz v16, :cond_a

    move-object v9, v12

    :cond_a
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 647
    new-instance v9, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-direct {v9, v0, v6}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    invoke-interface {v14, v9, v10, v0, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 648
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v4, v5, v14, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 650
    :cond_b
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 651
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 652
    :cond_c
    instance-of v0, v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v0, :cond_f

    .line 653
    move-object v0, v3

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v6, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 654
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v6}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->addEmojiToRecent(Ljava/lang/String;)V

    if-eqz v6, :cond_e

    .line 655
    const-string v0, "animated_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 659
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v7, 0x9

    .line 664
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 665
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    .line 666
    new-instance v12, Landroid/text/SpannableString;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_d

    .line 669
    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v7, v9, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 671
    :cond_d
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v9, v7, v8, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    move-object v7, v9

    .line 673
    :goto_1
    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v12, v7, v10, v0, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 674
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v4, v5, v12, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 676
    :catch_1
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v4, v5, v6, v11}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto :goto_2

    .line 679
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v4, v5, v6, v11}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    .line 681
    :goto_2
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    .line 682
    :cond_f
    :goto_3
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_15

    .line 683
    check-cast v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 684
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v4, "photo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_12

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v0, :cond_12

    :cond_10
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v4, "gif"

    .line 685
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_12

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v4, "video"

    .line 686
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_14

    .line 687
    :cond_12
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getSearchResultBotContext()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v13, v1, Lorg/telegram/ui/Components/MentionsContainerView;->botContextResults:Ljava/util/ArrayList;

    .line 688
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_4

    :cond_13
    const/4 v6, 0x0

    :goto_4
    iget-object v3, v1, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 689
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemPosition(I)I

    move-result v14

    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/16 v18, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto :goto_5

    .line 691
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    invoke-interface {v0, v3, v11, v10}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->sendBotInlineResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V

    :cond_15
    :goto_5
    return-void
.end method

.method private synthetic lambda$withDelegate$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 695
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private updateListViewTranslation(ZZ)V
    .locals 11

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    if-nez v0, :cond_1

    :cond_0
    move-object v6, p0

    goto/16 :goto_5

    .line 473
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 474
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    return-void

    .line 477
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 480
    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    neg-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_0

    .line 482
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 483
    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->getPadding()I

    move-result v4

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v4, v5

    if-gtz v3, :cond_4

    .line 484
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v3

    if-lez v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    add-int/2addr v3, v2

    .line 485
    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    .line 486
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    return-void

    :cond_4
    move v3, v4

    .line 490
    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    const/4 v4, 0x0

    .line 491
    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    if-eqz v0, :cond_5

    sub-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    neg-float v3, v3

    goto :goto_1

    :cond_5
    neg-float v6, v5

    sub-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v6

    :goto_1
    if-eqz p1, :cond_6

    if-nez v0, :cond_6

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_6
    move v10, v3

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_7

    .line 497
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_7
    const/16 v0, 0x8

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_d

    .line 500
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    .line 501
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v9

    .line 503
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    if-eqz p1, :cond_8

    move v8, v5

    goto :goto_2

    :cond_8
    move v8, v4

    :goto_2
    cmpl-float p2, v9, v10

    if-nez p2, :cond_b

    .line 506
    iput-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    .line 507
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 508
    iget-boolean p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    .line 509
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 511
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_a
    move-object v6, p0

    goto :goto_4

    .line 514
    :cond_b
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v9}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v10}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 518
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x44098000    # 550.0f

    .line 519
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 516
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 521
    new-instance v5, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;FFFF)V

    invoke-virtual {p2, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz p1, :cond_c

    .line 527
    iget-object p2, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 539
    :cond_c
    iget-object p1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 542
    iget-object p1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_4

    :cond_d
    move-object v6, p0

    if-eqz p1, :cond_e

    move v4, v5

    .line 545
    :cond_e
    iput v4, v6, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 546
    iget-object p2, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2, v10}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    if-eqz p1, :cond_f

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_10

    .line 553
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void

    .line 470
    :goto_5
    iput v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    return-void
.end method


# virtual methods
.method protected canOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clipBottom()F
    .locals 2

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public clipTop()F
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 915
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 916
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    new-instance p2, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 335
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/4 v4, 0x2

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 343
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40c00000    # 6.0f

    .line 346
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 347
    iget v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v6, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    .line 350
    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 351
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 352
    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iput v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v7, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v0, v0

    invoke-virtual {v6, v3, v7, v8, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v5

    if-lez v1, :cond_8

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v3, v1, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    float-to-int v6, v0

    sub-int/2addr v3, v6

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 359
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-ne v0, v6, :cond_6

    .line 360
    iget v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    .line 361
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 363
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v6, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    int-to-float v0, v0

    .line 364
    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    sub-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    .line 365
    iget v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 366
    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v8, v8

    invoke-virtual {v6, v3, v0, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    iget v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v5

    if-lez v1, :cond_8

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v3, v1, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    float-to-int v6, v0

    add-int/2addr v3, v6

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 373
    :cond_8
    :goto_4
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    .line 374
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onAnimationScroll()V

    .line 377
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_a

    .line 378
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    .line 379
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x1e000000

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 381
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_b
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getThemedColor(I)I

    move-result v2

    :goto_5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    .line 390
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 391
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method public getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0
.end method

.method public getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object v0
.end method

.method public getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return v0
.end method

.method public isReversed()Z
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isStories()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAnimationScroll()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 893
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 894
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 897
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onClose()V
    .locals 0

    return-void
.end method

.method protected onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 0

    return-void
.end method

.method protected onContextSearch(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 904
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 905
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 908
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 937
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 938
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->checkBackgroundBounds()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 457
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->checkListViewPadding()V

    .line 458
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onOpen()V
    .locals 0

    return-void
.end method

.method protected onScrolled(ZZ)V
    .locals 0

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 1

    .line 946
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x41b00000    # 22.0f

    .line 947
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 948
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 950
    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->checkListViewPadding()V

    return-void
.end method

.method public setDialogId(J)V
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setDialogId(J)V

    return-void
.end method

.method public setIgnoreLayout(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 0

    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setIsReversed(Z)V

    :cond_0
    return-void
.end method

.method public updateVisibility(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 423
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v1

    .line 424
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 425
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 426
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    const v2, -0x186a0

    goto :goto_0

    :cond_0
    const v2, 0x186a0

    .line 427
    :goto_0
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 430
    iput v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    add-float/2addr v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 434
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 436
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 438
    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 441
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 443
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentBeginToShow()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v1, 0x64

    :goto_3
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-eqz p1, :cond_7

    .line 445
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onOpen()V

    return-void

    .line 447
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onClose()V

    return-void
.end method

.method public withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Ljava/lang/ref/WeakReference;

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 695
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
