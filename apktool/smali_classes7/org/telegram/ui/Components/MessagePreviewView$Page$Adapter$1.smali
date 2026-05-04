.class Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 1546
    invoke-super {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 1552
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate(IIII)V

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1576
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1577
    iget-object p2, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateLinkHighlight(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->preview:Z

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideStickerTime:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1565
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeAlpha()F

    move-result v1

    .line 1566
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZZ)V

    move-object p1, p0

    if-eqz v0, :cond_2

    .line 1568
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->resetAnimation()V

    const/4 p2, 0x0

    cmpl-float p2, v1, p2

    if-nez p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1569
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 1571
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$1;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateLinkHighlight(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method
