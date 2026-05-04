.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;IIZ)V
    .locals 0

    .line 896
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected hasSiblingChild(I)Z
    .locals 7

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-ltz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 917
    iget-byte v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v0, v3, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 922
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetgroupedMessages(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 926
    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 1

    .line 905
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 906
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

    const/4 v0, 0x0

    return v0
.end method
