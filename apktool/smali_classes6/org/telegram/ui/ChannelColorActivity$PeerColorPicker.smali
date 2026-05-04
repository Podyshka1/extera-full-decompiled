.class Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeerColorPicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;
    }
.end annotation


# instance fields
.field public final adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field private final currentAccount:I

.field public final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedPosition:I


# direct methods
.method public static synthetic $r8$lambda$OQfe0vx5S75ZiRCianEWDtIaadA(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Lorg/telegram/messenger/MessagesController$PeerColors;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->lambda$updateColors$1(Lorg/telegram/messenger/MessagesController$PeerColors;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_p48mf52olCPLmnKug7f8pxWA8(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->lambda$setSelectedPosition$0(ZLandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPosition(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->selectedPosition:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 2184
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2185
    iput p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->currentAccount:I

    .line 2186
    iput-object p3, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2188
    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$1;-><init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 2194
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2195
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2197
    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$2;-><init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2226
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2227
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2228
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, -0x1

    const/high16 p2, -0x40800000    # -1.0f

    .line 2229
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setSelectedPosition$0(ZLandroid/view/View;)V
    .locals 2

    .line 2243
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->selectedPosition:I

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->setSelected(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateColors$1(Lorg/telegram/messenger/MessagesController$PeerColors;Landroid/view/View;)V
    .locals 3

    .line 2267
    instance-of v0, p2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;

    if-eqz v0, :cond_0

    .line 2268
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->setBackgroundColor(I)V

    .line 2269
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2270
    iget-object v1, p1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 2271
    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2177
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2178
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2180
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelected(IZ)V
    .locals 0

    .line 2234
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->toPosition(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 3

    .line 2238
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->selectedPosition:I

    if-eq p1, v0, :cond_1

    .line 2239
    iput p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->selectedPosition:I

    if-nez p2, :cond_0

    .line 2241
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2243
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Z)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_1
    return-void
.end method

.method public toColorId(I)I
    .locals 2

    .line 2278
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 2279
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2282
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toPosition(I)I
    .locals 4

    .line 2252
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    .line 2256
    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2257
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public updateColors()V
    .locals 3

    .line 2265
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    .line 2266
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Lorg/telegram/messenger/MessagesController$PeerColors;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method
