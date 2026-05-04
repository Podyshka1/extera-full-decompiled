.class public abstract Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$RecyclerListViewInner;
    }
.end annotation


# instance fields
.field private TOP_PADDING:I

.field private checkAutoscroll:Z

.field currentAccount:I

.field currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field private dialogId:J

.field headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

.field private isAttachedToWindow:Z

.field isSearchDebounce:Z

.field public layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

.field private measuerdHeight:I

.field onSharedStateChanged:Lcom/google/android/exoplayer2/util/Consumer;

.field private popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private final scroller:Lorg/telegram/ui/RecyclerListViewScroller;

.field searchField:Lorg/telegram/ui/Components/SearchField;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final shadowView:Landroid/view/View;

.field private final shadowView2:Landroid/view/View;

.field final sharedFilterState:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field private showContactsFilter:Z

.field private showReactionsSort:Z

.field private showSearch:Z

.field private showServerErrorText:Z

.field final state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

.field storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private final titleView:Landroid/widget/TextView;

.field private final topViewsContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$pnUPbG6EfVbyTzhyP9XK7U24Wm4(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTOP_PADDING(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmeasuerdHeight(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupMenu(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Lorg/telegram/ui/Components/CustomPopupMenu;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscroller(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Lorg/telegram/ui/RecyclerListViewScroller;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshowContactsFilter(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowSearch(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckAutoscroll(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmeasuerdHeight(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpopupMenu(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Components/CustomPopupMenu;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLoadMore(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misStoryShownToUser(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isStoryShownToUser(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreload(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->reload()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPremiumAlert(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showPremiumAlert()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewState(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewState(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 10

    .line 174
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x60

    .line 98
    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    .line 133
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    .line 175
    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->sharedFilterState:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    .line 177
    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onSharedStateChanged:Lcom/google/android/exoplayer2/util/Consumer;

    .line 178
    iget-object p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 182
    iget p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    iput p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    .line 184
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    .line 185
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p4, 0x41a00000    # 20.0f

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p3, v0, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p4, 0x41a80000    # 21.0f

    .line 188
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p3, v1, v2, p4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 190
    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p4, p0, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    .line 192
    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p0, p2, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 203
    new-instance p4, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p4, v2, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 204
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-direct {v2, p2, v1, p4}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/SelfStoryViewsPage-IA;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    new-instance p2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-direct {p2, p4, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 208
    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 215
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    new-instance p2, Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p2, p4}, Lorg/telegram/ui/RecyclerListViewScroller;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    .line 217
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$3;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 238
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 405
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    .line 406
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView:Landroid/view/View;

    .line 407
    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-direct {p4, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 p4, p4, -0x8

    int-to-float v7, p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView2:Landroid/view/View;

    .line 411
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 412
    iget p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 p4, p4, -0x11

    int-to-float v4, p4

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 416
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41500000    # 13.0f

    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    .line 443
    sget p2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/SearchField;->setHint(Ljava/lang/String;)V

    .line 444
    iget-object p2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkLoadMore()V
    .locals 2

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    if-le v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_0
    return-void
.end method

.method private isStoryShownToUser(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/StoriesController;->isBlocked(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 153
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_2

    return v2

    .line 157
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    if-eqz v1, :cond_5

    .line 160
    iget-object v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_4

    .line 161
    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-nez v0, :cond_3

    .line 162
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    return p1

    .line 165
    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 4

    if-ltz p3, :cond_8

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto/16 :goto_2

    .line 242
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    .line 243
    iget-object p3, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->view:Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    if-eqz v0, :cond_1

    .line 244
    iget-wide p2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 245
    :cond_1
    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViewPublicRepost;

    if-eqz v0, :cond_2

    .line 246
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->view:Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViewPublicRepost;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 247
    :cond_2
    iget-object v0, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->reaction:Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReaction;

    if-eqz v1, :cond_3

    .line 248
    iget-object p2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 249
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionPublicRepost;

    if-eqz v1, :cond_4

    .line 250
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->reaction:Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionPublicRepost;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 251
    :cond_4
    instance-of p2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionPublicForward;

    if-nez p2, :cond_5

    instance-of p2, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViewPublicForward;

    if-eqz p2, :cond_8

    .line 253
    :cond_5
    instance-of p2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionPublicForward;

    if-eqz p2, :cond_6

    .line 254
    iget-object p2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;->message:Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_0

    .line 256
    :cond_6
    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 258
    :goto_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 259
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    .line 261
    const-string v2, "user_id"

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 263
    :cond_7
    const-string v2, "chat_id"

    neg-long v0, v0

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 265
    :goto_1
    const-string v0, "message_id"

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 266
    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static preload(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 10

    if-nez p3, :cond_0

    goto :goto_2

    .line 641
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroidx/collection/LongSparseArray;

    iget-wide v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 642
    :cond_1
    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 643
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    :goto_1
    if-eqz v1, :cond_4

    .line 644
    iget v3, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v3, v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 646
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 648
    :cond_5
    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    const/4 v9, 0x1

    move v5, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V

    .line 649
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    if-nez v0, :cond_6

    .line 651
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroidx/collection/LongSparseArray;

    iget-wide p1, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 653
    :cond_6
    iget p0, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private reload()V
    .locals 4

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 1632
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-nez v0, :cond_1

    return-void

    .line 1636
    :cond_1
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->getTopOffset()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showPremiumAlert()V
    .locals 4

    .line 1059
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 1060
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private updateViewState(Z)V
    .locals 2

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->setState(ZZ)V

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->lastSortType:Z

    .line 1645
    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->replacableDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_reposts3:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_reactions3:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_recent3:I

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    return-void
.end method

.method private updateViewsVisibility()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 539
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 540
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 541
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 543
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v7, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/16 v2, 0x2e

    const/16 v9, 0x8

    if-eqz v7, :cond_1e

    .line 545
    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    const/16 v12, 0xa

    const/4 v13, 0x5

    const/16 v14, 0xf

    const/16 v15, 0x14

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 546
    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lt v5, v14, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 547
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v6, :cond_1

    move v6, v13

    goto :goto_1

    :cond_1
    move v6, v12

    :goto_1
    if-lt v3, v6, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    const-wide/16 v16, 0x0

    .line 548
    iget-wide v10, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v3, v10, v16

    if-ltz v3, :cond_3

    if-lt v5, v15, :cond_3

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-nez v3, :cond_3

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-nez v3, :cond_3

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    goto :goto_4

    :cond_4
    const-wide/16 v16, 0x0

    .line 550
    :goto_4
    iget v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroidx/collection/LongSparseArray;

    iget-wide v5, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v3, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_5

    .line 551
    iget v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 552
    iget-object v5, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v5, :cond_6

    move v5, v1

    goto :goto_6

    :cond_6
    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    :goto_6
    if-eqz v3, :cond_8

    .line 553
    iget-boolean v6, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-nez v6, :cond_7

    iget v6, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v6, v5, :cond_7

    goto :goto_7

    .line 568
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v3, v5, v6, v8}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    move v11, v4

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 555
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 557
    :cond_9
    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    move v5, v4

    iget v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    move v8, v5

    iget-wide v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    move v11, v8

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 558
    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    .line 559
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    if-eqz v10, :cond_a

    .line 561
    iget v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 563
    :cond_a
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 564
    iget v4, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    iget v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroidx/collection/LongSparseArray;

    iget-wide v5, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v4, v5, v6, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 570
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v3, :cond_b

    .line 571
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 573
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v3, :cond_c

    .line 574
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    if-eqz v4, :cond_c

    .line 575
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 577
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v3, :cond_d

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz v3, :cond_d

    iget v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v4, :cond_10

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v4, :cond_10

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 578
    :cond_e
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 579
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 580
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 581
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v4, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->Reactions:I

    goto :goto_9

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->Viewers:I

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iput v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto/16 :goto_14

    .line 585
    :cond_10
    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz v3, :cond_1c

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-nez v3, :cond_11

    goto/16 :goto_12

    .line 594
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->showReactionOnly:Z

    if-eqz v4, :cond_13

    .line 596
    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v3, :cond_12

    sget v3, Lorg/telegram/messenger/R$string;->Reactions:I

    goto :goto_a

    :cond_12
    sget v3, Lorg/telegram/messenger/R$string;->Viewers:I

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 598
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 599
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    goto/16 :goto_10

    .line 601
    :cond_13
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->getCount()I

    move-result v3

    if-ge v3, v15, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->getCount()I

    move-result v3

    iget-object v4, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-ge v3, v4, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v4, :cond_14

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v3, :cond_14

    .line 602
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 603
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 604
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 605
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showServerErrorText:Z

    goto :goto_e

    .line 607
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-nez v3, :cond_15

    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lt v3, v14, :cond_15

    move v4, v11

    goto :goto_b

    :cond_15
    move v4, v1

    :goto_b
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 608
    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_16

    move v12, v13

    :cond_16
    if-lt v4, v12, :cond_17

    move v4, v11

    goto :goto_c

    :cond_17
    move v4, v1

    :goto_c
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 609
    iget-wide v4, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v4, v4, v16

    if-ltz v4, :cond_18

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lt v3, v15, :cond_18

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-nez v3, :cond_18

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-nez v3, :cond_18

    iget-boolean v3, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-nez v3, :cond_18

    move v4, v11

    goto :goto_d

    :cond_18
    move v4, v1

    :goto_d
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 611
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v4, :cond_19

    sget v4, Lorg/telegram/messenger/R$string;->Reactions:I

    goto :goto_f

    :cond_19
    sget v4, Lorg/telegram/messenger/R$string;->Viewers:I

    :goto_f
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    if-eqz v4, :cond_1a

    move v4, v1

    goto :goto_11

    :cond_1a
    move v4, v9

    :goto_11
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    if-eqz v3, :cond_1b

    const/16 v2, 0x60

    :cond_1b
    iput v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto :goto_14

    .line 586
    :cond_1c
    :goto_12
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 587
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 588
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 589
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v4, :cond_1d

    sget v4, Lorg/telegram/messenger/R$string;->Reactions:I

    goto :goto_13

    :cond_1d
    sget v4, Lorg/telegram/messenger/R$string;->Viewers:I

    :goto_13
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iput v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto :goto_14

    .line 619
    :cond_1e
    iput v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    .line 620
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UploadingStory:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    if-eqz v3, :cond_1f

    move v3, v1

    goto :goto_15

    :cond_1f
    move v3, v9

    :goto_15
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->allViewersView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-eqz v3, :cond_20

    move v3, v1

    goto :goto_16

    :cond_20
    move v3, v9

    :goto_16
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->contactsViewersView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-eqz v3, :cond_21

    move v3, v1

    goto :goto_17

    :cond_21
    move v3, v9

    :goto_17
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-nez v2, :cond_22

    .line 628
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 630
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 634
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 v2, v2, -0x11

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 709
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_5

    .line 711
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 713
    :goto_0
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_5

    .line 714
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 715
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    const/4 p3, 0x0

    iput-object p3, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 717
    iput-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 718
    iget-wide p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setStoryItem(JLorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 724
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    if-ne p1, p2, :cond_5

    .line 725
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 727
    instance-of p2, p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    if-eqz p2, :cond_4

    .line 728
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_3

    .line 732
    :cond_2
    check-cast p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->view:Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isStoryShownToUser(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    .line 454
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 455
    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 456
    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    if-lt v6, v4, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    move-object v1, v5

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez v4, :cond_3

    .line 464
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    move v1, v2

    goto :goto_1

    .line 468
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 470
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 471
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 472
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onTopOffsetChanged(I)V

    .line 474
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    if-eqz v1, :cond_7

    .line 477
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    .line 478
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(I)V

    goto :goto_2

    .line 482
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(I)V

    .line 487
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 514
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 515
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    .line 519
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getTopOffset()F
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 659
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 666
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 667
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 668
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$6;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v1

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v1

    :cond_1
    return v2
.end method

.method public onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V
    .locals 1

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result p1

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewsVisibility()V

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 696
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 678
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 679
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 683
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 684
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 685
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 499
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyboardShown()V
    .locals 5

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    const-wide/16 v2, 0xfa

    sget-object v4, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(IJLandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public onTopOffsetChanged(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 507
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListBottomPadding(F)V
    .locals 2

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStoryItem(JLorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V
    .locals 1

    .line 529
    iput-wide p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    .line 530
    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    .line 531
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewsVisibility()V

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewState(Z)V

    if-eqz p3, :cond_0

    .line 533
    iget-object v0, p3, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 534
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object p3, p3, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->processSeenStoryReactions(JI)V

    :cond_0
    return-void
.end method

.method protected updateSharedState()V
    .locals 0

    return-void
.end method
