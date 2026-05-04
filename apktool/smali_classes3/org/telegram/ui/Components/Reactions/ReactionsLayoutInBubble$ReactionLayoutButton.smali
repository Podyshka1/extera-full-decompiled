.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;
.super Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReactionLayoutButton"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZ)V
    .locals 8

    .line 758
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    .line 759
    iget v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iget-object v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    iget-object v7, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getDrawServiceShaderBackground()F
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    return v0
.end method

.method protected getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 2

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected isOutOwner()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    return v0
.end method

.method protected isPlaying()Z
    .locals 4

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isPlaying(IJLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result v0

    return v0
.end method

.method protected removeImageReceiver()V
    .locals 2

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
