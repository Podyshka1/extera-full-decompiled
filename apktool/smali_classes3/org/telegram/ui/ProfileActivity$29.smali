.class Lorg/telegram/ui/ProfileActivity$29;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 6000
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 6005
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 6007
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetopeningAvatar(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 6008
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputopeningAvatar(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 6010
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6011
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    invoke-static {v0, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputscrolling(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 6012
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetscrolling(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisPulledDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6014
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    iput-boolean p1, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollingByUser:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 6019
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 6020
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->updateBlurContent()V

    .line 6021
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p3, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 6022
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateMainTabsVisibility(Lorg/telegram/ui/ProfileActivity;)V

    .line 6025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfwdRestrictedHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6026
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfwdRestrictedHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 6028
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckListViewScroll(Lorg/telegram/ui/ProfileActivity;)V

    .line 6029
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ProfileActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetusersEndReached(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetmembersEndRow(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le v0, v1, :cond_3

    .line 6030
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetChannelParticipants(Lorg/telegram/ui/ProfileActivity;Z)V

    :cond_3
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 6032
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6033
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float p3, p3

    sub-float/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {v1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 6034
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcreationDateHint(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 6036
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p3, p3, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_5
    move p1, p2

    :goto_1
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    .line 6037
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$29;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateBottomButtonY(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method
