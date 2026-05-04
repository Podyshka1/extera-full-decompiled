.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;
.super Lorg/telegram/ui/Cells/PollEditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onEditTextFocusChanged(Z)V
    .locals 1

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$monCellFocusChanges(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method protected onEmojiButtonClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 1

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$monEmojiClicked(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method protected onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 2

    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public onPastedMultipleLines(Ljava/util/ArrayList;)Z
    .locals 7

    .line 1665
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1667
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v1

    .line 1669
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1670
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_1
    if-le v2, v0, :cond_1

    .line 1671
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1673
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v0

    .line 1674
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1677
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mupdateRows(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputrequestFieldFocusAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V

    .line 1679
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetitemAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v3
.end method
