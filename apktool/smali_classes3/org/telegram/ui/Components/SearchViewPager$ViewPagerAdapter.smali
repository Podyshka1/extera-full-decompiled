.class Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    .line 1492
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    .line 1503
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->updateItems()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 2

    .line 1639
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, p3, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p3, p1, p2, v0, v1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$msearch(Lorg/telegram/ui/Components/SearchViewPager;Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1574
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 1578
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v3, v2, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/DialogsActivity;

    iget v2, v2, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fputdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    .line 1579
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetpagesPaddingTop(Lorg/telegram/ui/Components/SearchViewPager;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetpagesPaddingBottom(Lorg/telegram/ui/Components/SearchViewPager;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setPagesPaddings(II)V

    .line 1580
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1581
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1588
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 1589
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 1590
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetdownloadsContainer(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 1592
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->postsSearchContainer:Lorg/telegram/ui/Components/PostsSearchContainer;

    return-object p1

    .line 1594
    :cond_5
    new-instance p1, Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetpagesPaddingTop(Lorg/telegram/ui/Components/SearchViewPager;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetpagesPaddingBottom(Lorg/telegram/ui/Components/SearchViewPager;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/FilteredSearchView;->setPagesPaddings(II)V

    .line 1598
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    if-eqz v0, :cond_6

    .line 1599
    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setBlurredBackgroundDrawableFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    .line 1601
    :cond_6
    iget-object v0, p1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1602
    iget-object v0, p1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$2;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1609
    iget-object v0, p1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    sget p1, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1543
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1544
    sget p1, Lorg/telegram/messenger/R$string;->ChannelsTab:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1546
    sget p1, Lorg/telegram/messenger/R$string;->AppsTab:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1547
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1548
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->postsAreNew:Z

    if-eqz p1, :cond_3

    .line 1549
    sget p1, Lorg/telegram/messenger/R$string;->SearchPosts:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1551
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->SearchPosts:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1553
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1554
    sget p1, Lorg/telegram/messenger/R$string;->DownloadsTabs:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1555
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1556
    sget p1, Lorg/telegram/messenger/R$string;->PublicPostsTabs:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1558
    :cond_6
    sget-object v0, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    iget p1, p1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1619
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1622
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    return v1

    .line 1625
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    return v1

    .line 1628
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    return v1

    .line 1631
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->-$$Nest$fgettype(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    return v1

    :cond_5
    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public updateItems()V
    .locals 7

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v4, 0x5

    invoke-direct {v1, p0, v4, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v5, 0x4

    invoke-direct {v1, p0, v5, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v6, 0x6

    invoke-direct {v1, p0, v6, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager;->-$$Nest$fgetshowOnlyDialogsAdapter(Lorg/telegram/ui/Components/SearchViewPager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1518
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    .line 1519
    iput v2, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 1520
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->includeDownloads()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v6, p0, v2, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    .line 1525
    iput v4, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 1526
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    .line 1528
    iput v2, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 1529
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    .line 1531
    iput v1, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 1532
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager-IA;)V

    .line 1534
    iput v5, v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    .line 1535
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
