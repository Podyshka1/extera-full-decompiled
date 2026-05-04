.class Lorg/telegram/ui/Stories/PeerStoriesView$10;
.super Lorg/telegram/ui/Stories/LiveCommentsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 2267
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Stories/LiveCommentsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method protected getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 1

    .line 2276
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_0

    .line 2277
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isMe(J)Z
    .locals 5

    .line 2284
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2286
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    return v1

    .line 2289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetsendAsPeersObj(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    .line 2290
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetsendAsPeersObj(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2291
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetsendAsPeersObj(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method protected onCancelledStarReaction(J)V
    .locals 1

    .line 2337
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButtonEffectsView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButtonEffectsView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;->removeChipsFrom(J)V

    return-void
.end method

.method protected onMessagesCountUpdated()V
    .locals 2

    .line 2309
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcommentButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/CommentButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcommentButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/CommentButton;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getUnreadMessagesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/CommentButton;->setCount(I)V

    :cond_0
    return-void
.end method

.method protected onStarReaction(JII)V
    .locals 1

    .line 2331
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButtonEffectsView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2332
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButtonEffectsView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PaidReactionButton$PaidReactionButtonEffectsView;->pushChip(JII)V

    return-void
.end method

.method protected onStarsButtonCancelled()V
    .locals 1

    .line 2343
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PaidReactionButton;->stopEffects()V

    return-void
.end method

.method protected onStarsButtonPressed(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2323
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/PaidReactionButton;->playEffect(J)V

    return-void

    .line 2325
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PaidReactionButton;->stopEffects()V

    return-void
.end method

.method protected onStarsCountUpdated()V
    .locals 3

    .line 2316
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->getStarsCount()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PaidReactionButton;->setCount(I)V

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstarsButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/PaidReactionButton;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LiveCommentsView;->areSendingStars()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PaidReactionButton;->setFilled(Z)V

    return-void
.end method

.method public setCollapsed(ZZ)V
    .locals 1

    .line 2301
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView;->setCollapsed(ZZ)V

    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcommentButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/CommentButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcommentButton(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/CommentButton;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/CommentButton;->setCollapsed(ZZ)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 2270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$10;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsShadowView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
