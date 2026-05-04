.class Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/FilteredSearchView$UiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesSearchContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;
    }
.end annotation


# instance fields
.field canLoadMore:Z

.field chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field isLoading:Z

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private keyboardSize:I

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field messagesEndRow:I

.field messagesHeaderRow:I

.field messagesIsLoading:Z

.field messagesStartRow:I

.field recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field rowCount:I

.field searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

.field searchContainer:Landroid/widget/FrameLayout;

.field searchResultMessages:Ljava/util/ArrayList;

.field searchResultTopics:Ljava/util/ArrayList;

.field searchRunnable:Ljava/lang/Runnable;

.field searchString:Ljava/lang/String;

.field private selectedItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field topicsEndRow:I

.field topicsHeaderRow:I

.field topicsStartRow:I

.field private viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$Q47Uc8jFAbkSODfGSLArtjxZVwM(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$loadMessages$3(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJ3ef0Na0OSaafU-Gmp-Rj6fDwo(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U0w8HjoskpC7iZUeSX9rvp1zlFA(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$searchMessages$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBqM9sEoUUobxAnh5bgrRF1_qW8(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->lambda$loadMessages$2(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadMessages(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->loadMessages(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msearch(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Landroid/view/View;ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 3

    .line 3425
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    .line 3426
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    .line 3399
    const-string v0, "empty"

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    .line 3401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    .line 3402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    .line 3624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    .line 3428
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    .line 3429
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$1;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    .line 3450
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 3451
    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment-IA;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3452
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3453
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 3462
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$2;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3479
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x7

    .line 3480
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 3481
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 3482
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 3484
    new-instance p1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 3485
    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget p2, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3486
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 3488
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3489
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 3491
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 3492
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 3493
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3494
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3495
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3497
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 3498
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    .line 3500
    new-instance p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method private synthetic lambda$loadMessages$2(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    .line 3772
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3773
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    const/4 v1, 0x0

    .line 3774
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3775
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3776
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 3777
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move v2, v1

    .line 3779
    :goto_0
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3780
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3781
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$2600(Lorg/telegram/ui/TopicsFragment;)I

    move-result v6

    invoke-direct {v5, v6, v4, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 3782
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 3783
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3785
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3786
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    if-ge p1, v2, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    goto :goto_1

    .line 3788
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    .line 3791
    :goto_1
    iget p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    if-nez p1, :cond_3

    .line 3792
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3794
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadMessages$3(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3771
    new-instance p3, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 3

    .line 3454
    instance-of p2, p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    if-eqz p2, :cond_0

    .line 3455
    check-cast p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 3456
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, p2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TopicSearchCell;->getTopic()Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, p1, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    return-void

    .line 3457
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p2, :cond_1

    .line 3458
    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 3459
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, p2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget-object v2, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getMessageId()I

    move-result p1

    invoke-static {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$searchMessages$1(Ljava/lang/String;)V
    .locals 5

    .line 3716
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3718
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3719
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3720
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3725
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3726
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3727
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3729
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3730
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3732
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 3735
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->loadMessages(Ljava/lang/String;)V

    return-void
.end method

.method private loadMessages(Ljava/lang/String;)V
    .locals 4

    .line 3748
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 3751
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 3752
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3753
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    const/16 v1, 0x14

    .line 3754
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 3755
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 3756
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3757
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 3759
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3771
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$2300(Lorg/telegram/ui/TopicsFragment;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private search(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 11

    .line 3670
    iput-object p3, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    .line 3671
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchContainer:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_0

    .line 3672
    invoke-direct {p0, p3}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchMessages(Ljava/lang/String;)V

    return-void

    .line 3673
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/FilteredSearchView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3674
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/FilteredSearchView;

    iget v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->keyboardSize:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    .line 3675
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->viewPagerAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;

    .line 3676
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    sget-object v4, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$Item;->filterIndex:I

    aget-object v7, v4, v1

    move-wide v1, v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    return-void

    .line 3677
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v1, :cond_2

    .line 3678
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->keyboardSize:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    .line 3679
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->search(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private searchMessages(Ljava/lang/String;)V
    .locals 3

    .line 3684
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3685
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3686
    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 3691
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesIsLoading:Z

    .line 3692
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->canLoadMore:Z

    .line 3693
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3694
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3695
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    .line 3696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3697
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3698
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3699
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 3700
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_1

    .line 3701
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3705
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    return-void

    .line 3709
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->updateRows()V

    const/4 v0, 0x1

    .line 3712
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    .line 3713
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3715
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 3737
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, -0x1

    .line 3800
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    .line 3801
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    .line 3802
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    .line 3803
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    .line 3804
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    .line 3805
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    const/4 v0, 0x0

    .line 3807
    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3809
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3810
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    .line 3811
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    .line 3812
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3813
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    .line 3816
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3817
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    .line 3818
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    .line 3819
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    .line 3820
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    .line 3823
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchAdapter:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public actionModeShowing()Z
    .locals 1

    .line 3628
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$2000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    return v0
.end method

.method public goToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 3605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3606
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 3607
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3608
    const-string v3, "enc_id"

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3609
    :cond_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3610
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 3612
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$1900(Lorg/telegram/ui/TopicsFragment;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3613
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_2

    .line 3614
    const-string v4, "migrated_to"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3615
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    .line 3617
    :cond_2
    const-string v3, "chat_id"

    neg-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3619
    :goto_0
    const-string v1, "message_id"

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3620
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3646
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3647
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 3648
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->messageId:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->dialogId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 3

    .line 3741
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3744
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v2

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public showActionMode()V
    .locals 1

    .line 3657
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$2200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    return-void
.end method

.method public toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V
    .locals 0

    .line 3633
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3634
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3636
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3637
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$2100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :cond_1
    return-void
.end method
