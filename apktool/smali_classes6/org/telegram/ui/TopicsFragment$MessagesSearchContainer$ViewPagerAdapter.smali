.class Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;

.field final synthetic this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V
    .locals 4

    .line 3516
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    .line 3514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    .line 3517
    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3518
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    .line 3519
    iput v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    .line 3520
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3522
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-direct {v0, p1, v1, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    const/4 v2, 0x1

    .line 3523
    iput v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    .line 3524
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3525
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-direct {v0, p1, v1, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    .line 3526
    iput v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    .line 3527
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3528
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-direct {v0, p1, v1, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    const/4 v2, 0x3

    .line 3529
    iput v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    .line 3530
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3531
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-direct {v0, p1, v1, v3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;ILorg/telegram/ui/TopicsFragment-IA;)V

    const/4 p1, 0x4

    .line 3532
    iput p1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    .line 3533
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 2

    .line 3599
    iget-object p3, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v0, p3, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p3, p1, p2, v0, v1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->-$$Nest$msearch(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3548
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3550
    new-instance p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1800(Lorg/telegram/ui/TopicsFragment;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 3551
    iget-object v0, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter$1;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3558
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    return-object p1

    .line 3561
    :cond_1
    new-instance p1, Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p1, v0}, Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3562
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    .line 3563
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 3564
    iget-object v0, p1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter$2;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 3542
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 3512
    invoke-virtual {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 2

    .line 3577
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->-$$Nest$fgettype(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3578
    sget p1, Lorg/telegram/messenger/R$string;->SearchMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->-$$Nest$fgettype(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3580
    sget p1, Lorg/telegram/messenger/R$string;->DownloadsTabs:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3582
    :cond_1
    sget-object v0, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    iget p1, p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 3588
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->-$$Nest$fgettype(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->-$$Nest$fgettype(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 3594
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->-$$Nest$fgettype(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
