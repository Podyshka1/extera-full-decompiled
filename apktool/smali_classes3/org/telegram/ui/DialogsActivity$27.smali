.class Lorg/telegram/ui/DialogsActivity$27;
.super Lorg/telegram/ui/RightSlidingDialogContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field anotherFragmentOpened:Z

.field fromScrollYProperty:F

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field final synthetic val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ContentView;Landroid/content/Context;)V
    .locals 0

    .line 5601
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$27;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$27;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/RightSlidingDialogContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getOccupyStatusbar()Z
    .locals 1

    .line 5610
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openAnimationFinished(Z)V
    .locals 6

    .line 5689
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 5690
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 5691
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 5692
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 5693
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetDialogsListFrozen(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5694
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5695
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5696
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5697
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5698
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v4, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 5699
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputrightFragmentTransitionInProgress(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5700
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 5701
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v0, :cond_0

    .line 5702
    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5703
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5704
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 5705
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5708
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5709
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    .line 5711
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateFilterTabs(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 5712
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_searchFieldHint(Lorg/telegram/ui/DialogsActivity;)V

    .line 5713
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateDialogsHint(Lorg/telegram/ui/DialogsActivity;)V

    .line 5714
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5715
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updateTitleOverlay()V

    :cond_2
    return-void
.end method

.method public openAnimationStarted(Z)V
    .locals 12

    .line 5615
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputrightFragmentTransitionInProgress(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5616
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputrightFragmentTransitionIsOpen(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5617
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 5618
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$27;->fromScrollYProperty:F

    .line 5620
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 5621
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5622
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$27$1;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$27;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/DialogsActivity$27$1;-><init>(Lorg/telegram/ui/DialogsActivity$27;Landroid/content/Context;)V

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 5648
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 5649
    new-instance v3, Lorg/telegram/ui/DialogsActivity$27$2;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$27;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v0}, Lorg/telegram/ui/DialogsActivity$27$2;-><init>(Lorg/telegram/ui/DialogsActivity$27;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 5658
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5659
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$27;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfolderId(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetonlySelect(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$9400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetrequestPeerType(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    .line 5660
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setIsTransitionSupport()V

    .line 5661
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5662
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_1

    .line 5665
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5666
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetMaxScrollYOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetScrollY(Lorg/telegram/ui/DialogsActivity;F)V

    .line 5669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 5670
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 5671
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 5672
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 5673
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 5674
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixEndGap(Z)V

    .line 5675
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetDialogsListFrozen(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5676
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$27;->anotherFragmentOpened:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideFloatingButton(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5677
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5678
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportDialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5679
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    neg-float v0, v0

    .line 5680
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetanimationSupportListView(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v3, v1, v0, p1, v2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 5681
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5682
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 5683
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_searchFieldHint(Lorg/telegram/ui/DialogsActivity;)V

    .line 5684
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateDialogsHint(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method setOpenProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5722
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity$27;->anotherFragmentOpened:Z

    if-eq v3, v1, :cond_1

    .line 5723
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$27;->anotherFragmentOpened:Z

    .line 5725
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 5726
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5729
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 5730
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    sub-float v4, v3, p1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5731
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 5732
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5735
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5736
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$10000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    cmpl-float v4, p1, v3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5739
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfolderId(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 5740
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetactionBarDefaultPaint(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 5742
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 5743
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    .line 5741
    invoke-static {v1, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 5740
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5749
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v0, :cond_7

    .line 5750
    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setOpenRightFragmentProgress(F)V

    .line 5753
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_menuItems(Lorg/telegram/ui/DialogsActivity;)V

    .line 5754
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_topPanelVisible(Lorg/telegram/ui/DialogsActivity;)V

    .line 5755
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_filterTabsVisible(Lorg/telegram/ui/DialogsActivity;)V

    .line 5756
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_searchFieldVisibility(Lorg/telegram/ui/DialogsActivity;)V

    .line 5757
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-eqz p1, :cond_8

    .line 5758
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    .line 5760
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 5761
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
