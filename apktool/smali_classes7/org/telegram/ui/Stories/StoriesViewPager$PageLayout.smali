.class Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageLayout"
.end annotation


# instance fields
.field day:Ljava/util/ArrayList;

.field dialogId:J

.field isVisible:Z

.field public peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesViewPager;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesViewPager;Landroid/content/Context;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->this$0:Lorg/telegram/ui/Stories/StoriesViewPager;

    .line 459
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 464
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 471
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    if-eq v0, p1, :cond_0

    .line 472
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setIsVisible(Z)V

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->this$0:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkAllowScreenshots()V

    :cond_0
    return-void
.end method
