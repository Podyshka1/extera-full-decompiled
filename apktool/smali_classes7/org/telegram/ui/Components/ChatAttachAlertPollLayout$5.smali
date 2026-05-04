.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    if-nez p2, :cond_0

    const/high16 p1, 0x41500000    # 13.0f

    .line 442
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 443
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackgroundPaddingTop()I

    move-result p2

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 445
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_0

    .line 447
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    const/high16 v0, 0x42820000    # 65.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p2, v2, :cond_0

    .line 448
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->getDelegate()Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    move-result-object p1

    .line 414
    instance-of p2, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p2, :cond_3

    .line 415
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 416
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 418
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v2, 0x43260000    # 166.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 424
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    if-le p2, p1, :cond_4

    .line 425
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    goto :goto_1

    .line 428
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    goto :goto_1

    .line 431
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgethintView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgethintView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_5
    return-void
.end method
