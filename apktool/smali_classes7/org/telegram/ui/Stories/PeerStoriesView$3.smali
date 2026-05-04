.class Lorg/telegram/ui/Stories/PeerStoriesView$3;
.super Lorg/telegram/ui/Stories/StoryMediaAreasView;
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
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryMediaAreasView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 519
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getPlayingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getPlayingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onHintVisible(Z)V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 514
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method public showEffect(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)V
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mlikeStory(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_0
    const/4 v0, 0x3

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 532
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->playAnimation()V

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetemojiAnimationsOverlay(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForWidget(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)Z

    return-void
.end method
