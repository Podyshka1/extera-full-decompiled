.class Lorg/telegram/ui/DialogsActivity$32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showSearch(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 7773
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$32;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 7827
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 7828
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimator(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 7829
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$32;->val$show:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7830
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hide()V

    goto :goto_0

    .line 7832
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->show()V

    .line 7834
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputsearchAnimator(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 7776
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 7777
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimator(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 7780
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetDialogsListFrozen(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7781
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$32;->val$show:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    .line 7782
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hide()V

    .line 7783
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p1, :cond_1

    .line 7784
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7786
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputsearchWasFullyShowed(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7787
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$10800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 7788
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7789
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_6

    .line 7790
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7794
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->whiteActionBar:Z

    .line 7795
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7796
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7798
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7799
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FragmentSearchField;->clearSearchFilters()V

    .line 7802
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7803
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->clear()V

    .line 7805
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->show()V

    .line 7806
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputsearchWasFullyShowed(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7807
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_6

    .line 7808
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7812
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 7813
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 7816
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$32;->val$show:Z

    if-eqz v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    invoke-static {p1, v2, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetSearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;FZ)V

    .line 7818
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 7819
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 7820
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7822
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$32;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputsearchAnimator(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)V

    return-void
.end method
