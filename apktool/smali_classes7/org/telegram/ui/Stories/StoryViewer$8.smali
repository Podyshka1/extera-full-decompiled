.class Lorg/telegram/ui/Stories/StoryViewer$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 1971
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$8;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$8;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 1975
    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 1976
    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 1977
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
