.class Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 1538
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    return-void
.end method

.method private offset(Lorg/telegram/ui/Cells/ChatMessageCell;I)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1695
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1702
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v0

    .line 1704
    :cond_2
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-eqz v2, :cond_3

    .line 1705
    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    float-to-int v4, v4

    .line 1706
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 1707
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    goto :goto_0

    .line 1709
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->layoutTextXY(Z)V

    .line 1710
    iget v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    .line 1711
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1712
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 1713
    iget-boolean v5, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    if-eqz v5, :cond_4

    .line 1714
    iget v5, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    :cond_4
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_0
    if-eqz v2, :cond_8

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    .line 1720
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 1721
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 1722
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1723
    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1724
    iget v8, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    if-le p2, v8, :cond_7

    sub-int v0, p2, v8

    .line 1726
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_6

    .line 1727
    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v5, v2, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result p1

    iget p2, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p2, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v4, p1

    int-to-float p1, v4

    goto :goto_2

    :cond_6
    int-to-float v0, v4

    .line 1729
    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v5, v2, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result p1

    add-float/2addr v0, p1

    iget p1, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, v5, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int/2addr p2, p1

    invoke-virtual {v6, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    :goto_2
    float-to-int p1, p1

    return p1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1742
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1646
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1647
    iget-boolean p1, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasSpoilers:Z

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidateSpoilersParent(Z)V

    .line 1648
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setParentViewSize(II)V

    .line 1649
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1650
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1651
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagePreviewParams;->checkCurrentLink(Lorg/telegram/messenger/MessageObject;)V

    .line 1653
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 1654
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1655
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 1660
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 1661
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-ne v2, v3, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 1662
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    .line 1663
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    .line 1664
    invoke-virtual {v1, p1, p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1543
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v5, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    .line 1580
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1581
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1582
    new-instance p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 1637
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 1673
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1675
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1676
    :goto_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 1677
    :goto_1
    invoke-virtual {p1, v2, v0, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v2, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->isReplyMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$fgetfirstAttach(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->offset(Lorg/telegram/ui/Cells/ChatMessageCell;I)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->scrollToOffset:I

    .line 1683
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$fputfirstAttach(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    return-void

    .line 1687
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    :cond_4
    :goto_2
    return-void
.end method
