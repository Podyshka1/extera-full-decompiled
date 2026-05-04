.class Lorg/telegram/ui/DialogsActivity$17;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field private wasManualScroll:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    .line 4661
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$17;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4670
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$17;->wasManualScroll:Z

    .line 4671
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputscrollingManually(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4672
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    invoke-virtual {v0}, Lorg/telegram/ui/RecyclerListViewScroller;->cancel()V

    .line 4674
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4675
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4676
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 4680
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputscrollingManually(Lorg/telegram/ui/DialogsActivity;Z)V

    :cond_1
    :goto_0
    if-nez p2, :cond_4

    .line 4683
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$17;->wasManualScroll:Z

    .line 4684
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputdisableActionBarScrolling(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4685
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetwaitingForScrollFinished(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4686
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputwaitingForScrollFinished(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4687
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetupdatePullAfterScroll(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4688
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->-$$Nest$mupdatePullState(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    .line 4689
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputupdatePullAfterScroll(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4691
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 4693
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckAutoscrollToStories(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    :cond_4
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .line 4699
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    if-eqz v0, :cond_0

    .line 4700
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurContent()V

    .line 4702
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsItemAnimator(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v0

    neg-int v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->onListScroll(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    .line 4705
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 4706
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_4

    if-eq v3, v0, :cond_1

    if-le v5, v3, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    if-eq v4, v0, :cond_3

    if-ge v5, v4, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4716
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckListLoad(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 4717
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4718
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 4719
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 4721
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetinitialDialogsType(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_f

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$17;->wasManualScroll:Z

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_f

    if-eq v4, v0, :cond_f

    .line 4723
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4724
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ltz v2, :cond_f

    :cond_7
    if-eqz v0, :cond_8

    .line 4727
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 4731
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprevPosition(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 4732
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprevTop(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    sub-int/2addr v2, v0

    .line 4733
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprevTop(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    if-ge v0, v5, :cond_9

    move v5, v3

    goto :goto_2

    :cond_9
    move v5, v1

    .line 4734
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_a

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_4

    .line 4736
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprevPosition(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-le v4, v2, :cond_c

    move v5, v3

    goto :goto_3

    :cond_c
    move v5, v1

    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_e

    .line 4738
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollUpdated(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v5, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollingManually(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4739
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideFloatingButton(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4741
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputprevPosition(Lorg/telegram/ui/DialogsActivity;I)V

    .line 4742
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputprevTop(Lorg/telegram/ui/DialogsActivity;I)V

    .line 4743
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputscrollUpdated(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4747
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v2, :cond_11

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetdisableActionBarScrolling(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_11

    if-lez p3, :cond_10

    .line 4748
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_10

    .line 4749
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4751
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4752
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_10

    .line 4753
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr v2, v0

    add-int p1, v2, p3

    if-lez p1, :cond_10

    if-gez v2, :cond_18

    neg-int p3, v2

    .line 4764
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    .line 4768
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4769
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_11

    .line 4770
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4787
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 4788
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    .line 4790
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-eqz p1, :cond_13

    .line 4791
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4793
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4794
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4797
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result p1

    .line 4798
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4799
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_5

    :cond_15
    move v0, v1

    :goto_5
    if-gt v4, p1, :cond_16

    int-to-float p1, v0

    .line 4800
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$17;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_17

    :cond_16
    move v1, v3

    .line 4801
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatorShadowVisible(Lorg/telegram/ui/DialogsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    if-eqz p3, :cond_18

    .line 4803
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_18

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_18

    .line 4804
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    :cond_18
    return-void
.end method
