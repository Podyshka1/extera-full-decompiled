.class Lorg/telegram/ui/MessageSendPreview$8;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field computingScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;IIZ)V
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$8;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 868
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    .line 869
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 876
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    .line 877
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 878
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    .line 885
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->computingScroll:Z

    return p1
.end method

.method protected hasSiblingChild(I)Z
    .locals 8

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmessageObjects(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$8;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0, p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 908
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    .line 909
    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v4, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v3, v4, :cond_3

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v3, v4, :cond_3

    if-nez v3, :cond_0

    goto :goto_2

    .line 912
    :cond_0
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 914
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v5, p1, :cond_1

    goto :goto_1

    .line 918
    :cond_1
    iget-byte v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v7, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v6, v7, :cond_2

    iget-byte v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v5, v7, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 1

    .line 897
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 898
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
