.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method public static synthetic $r8$lambda$HaHHaSlVM4x9chdo7w9lTZB-qJI(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2038
    check-cast p1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 2039
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2040
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->callOnDelete()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_0EU7t--SAPHKmxHV6pjp1-VIHw(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jW1e_GDHBncAoxubB-YM7I10YtM(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1468
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 7

    .line 1817
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1820
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1821
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1822
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1824
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1826
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetitemAnimator(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1827
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1828
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1829
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1830
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1831
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1832
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v5, 0x0

    aput-boolean v5, v2, v3

    .line 1833
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V

    .line 1834
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    .line 1835
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 1837
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1838
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 1839
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_2

    .line 1840
    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1841
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1842
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1843
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1844
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mhideEmojiPopup(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V

    goto :goto_0

    .line 1845
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz v2, :cond_4

    .line 1846
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mhideEmojiPopup(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V

    .line 1848
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1849
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mcheckDoneButton(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    .line 1850
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mupdateRows(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    .line 1851
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1852
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 1853
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    .line 1855
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1856
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetemptyRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    .line 2013
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 2015
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_2

    .line 2017
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p4

    sub-int p4, p2, p4

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2019
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$maddNewField(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    goto :goto_0

    .line 2021
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_1

    .line 2022
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 2024
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2025
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p2, :cond_2

    .line 2026
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 2027
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetrowCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2055
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsettingsHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 2057
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2059
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsolutionInfoRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 2061
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetaddAnswerRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 2063
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 2065
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsolutionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x7

    return p1

    .line 2067
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowAddingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 2069
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetemptyRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 2071
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetpaddingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const/4 p1, 0x5

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_a
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_b
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1611
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetaddAnswerRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1478
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    const/4 v3, 0x6

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v3, :cond_9

    const/16 v3, 0x9

    if-eq v0, v3, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 1522
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1523
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1524
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1525
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1526
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1527
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1528
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1529
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->TodoNewTask:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOption:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 1499
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1501
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1502
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1504
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsolutionInfoRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1505
    sget p2, Lorg/telegram/messenger/R$string;->AddAnExplanationInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1506
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1507
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 1508
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1510
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->QuizInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1512
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr p2, v0

    if-gtz p2, :cond_7

    .line 1513
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->TodoAddTaskInfoMax:I

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfoMax:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1514
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1515
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr p2, v0

    const-string v0, "TodoNewTaskInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1517
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfo:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "Option"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1533
    :cond_9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1534
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowAddingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_b

    .line 1535
    sget p2, Lorg/telegram/messenger/R$string;->TodoAllowAddingTasks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowAdding(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-eq v3, v4, :cond_a

    move v6, v2

    :cond_a
    invoke-virtual {v0, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1536
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 1537
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_c

    .line 1538
    sget p2, Lorg/telegram/messenger/R$string;->TodoAllowMarkingDone:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetallowMarking(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    invoke-virtual {v0, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1539
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 1540
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_f

    .line 1541
    sget p2, Lorg/telegram/messenger/R$string;->PollAnonymous:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanonymousPoll(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-eq v3, v4, :cond_e

    :cond_d
    move v6, v2

    :cond_e
    invoke-virtual {v0, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1542
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1543
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_11

    .line 1544
    sget p2, Lorg/telegram/messenger/R$string;->PollMultiple:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetmultipleChoise(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-eq v3, v4, :cond_10

    move v6, v2

    :cond_10
    invoke-virtual {v0, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1545
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1546
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_13

    .line 1547
    sget p2, Lorg/telegram/messenger/R$string;->PollQuiz:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizPoll(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    invoke-virtual {v0, p2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1548
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-nez p2, :cond_12

    goto :goto_2

    :cond_12
    move v2, v6

    :goto_2
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1552
    :cond_13
    :goto_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 1480
    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1482
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1483
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result p2

    if-eqz p2, :cond_15

    sget p2, Lorg/telegram/messenger/R$string;->TodoTitle:I

    goto :goto_4

    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->PollQuestion:I

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1485
    :cond_16
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_17

    const/4 v1, 0x5

    :cond_17
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1487
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-ne p2, v2, :cond_18

    .line 1488
    sget p2, Lorg/telegram/messenger/R$string;->QuizAnswers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1490
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result p2

    if-eqz p2, :cond_19

    sget p2, Lorg/telegram/messenger/R$string;->TodoItemsTitle:I

    goto :goto_5

    :cond_19
    sget p2, Lorg/telegram/messenger/R$string;->AnswerOptions:I

    :goto_5
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1492
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsettingsHeaderRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1493
    sget p2, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    const p1, -0x8100

    .line 1812
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1816
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetisPremium(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v5

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v7, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v3, v2

    .line 1964
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 2008
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowNextButton(Z)V

    .line 2009
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 2010
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result p2

    or-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2011
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2037
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    :pswitch_1
    move-object v3, p0

    .line 1806
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$5;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;)V

    .line 1812
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v3, p0

    .line 1800
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;-><init>(Landroid/content/Context;)V

    .line 1802
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    move-object v3, p0

    .line 1730
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$3;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetisPremium(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    .line 1757
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1758
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$4;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    :goto_0
    move-object v1, v2

    goto/16 :goto_1

    :pswitch_4
    move-object v3, p0

    .line 1727
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    :pswitch_5
    move-object v3, p0

    .line 1636
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetisPremium(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v6

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v8, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1684
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1685
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$2;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0

    :pswitch_6
    move-object v3, p0

    .line 1633
    new-instance v1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :pswitch_7
    move-object v3, p0

    .line 1630
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :pswitch_8
    move-object v3, p0

    .line 1623
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p2, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1624
    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1625
    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p2, v2, p1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1626
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    goto :goto_1

    :pswitch_9
    move-object v3, p0

    .line 1620
    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v6, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object p1, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v11, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v8, 0x15

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, v5

    .line 2049
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2050
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    const/4 v0, 0x1

    .line 1563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1560
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1561
    const-string v5, ""

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    .line 1562
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1563
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1564
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetquestionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->TodoTitlePlaceholder:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->QuestionHint:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1565
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$msetTextLeft(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    return-void

    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 1568
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 1569
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1570
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1571
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    sub-int v1, v2, v1

    .line 1572
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v1, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgettodo(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->TodoTaskPlaceholder:I

    goto :goto_1

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->OptionHint:I

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1573
    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetrequestFieldFocusAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1575
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1577
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputrequestFieldFocusAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)V

    .line 1580
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$msetTextLeft(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    return-void

    :cond_5
    const/4 v0, 0x7

    if-ne v2, v0, :cond_7

    .line 1582
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1583
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1584
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsolutionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsolutionString(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->AddAnExplanation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1585
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$msetTextLeft(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1592
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1593
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1594
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1595
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetisPremium(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 1600
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$mhideEmojiPopup(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V

    .line 1602
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fputcurrentCell(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1604
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public swapElements(II)V
    .locals 5

    .line 2079
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int v0, p1, v0

    .line 2080
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 2081
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 2084
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    .line 2085
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 2086
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswers(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v2, v3, v1

    .line 2087
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    .line 2088
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v0

    .line 2089
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    .line 2090
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method
