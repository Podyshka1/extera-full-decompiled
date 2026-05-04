.class Lorg/telegram/ui/ChatActivity$124;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field final synthetic val$primaryMessage:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 31697
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$124;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$124;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$124;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLongPress()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$allowLongPress(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 12

    .line 31701
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$124;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$124;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/BaseCell;

    move-result-object v1

    .line 31702
    instance-of v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 31703
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 31704
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 31706
    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v4, v6

    .line 31707
    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    goto :goto_1

    :cond_0
    move v0, v4

    :goto_0
    move v6, v0

    move v5, v4

    goto :goto_2

    .line 31709
    :cond_1
    instance-of v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_2

    .line 31710
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 31711
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 31713
    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v4, v6

    .line 31714
    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    :goto_1
    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v0, v5

    goto :goto_0

    :cond_2
    move v5, v4

    move v6, v5

    :goto_2
    if-eqz p2, :cond_3

    .line 31717
    iget-boolean v0, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, p3

    .line 31720
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$124;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$124;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$124;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move-object v7, p2

    move/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ChatActivity;->selectReaction(Landroid/view/View;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZZ)V

    return-void
.end method
