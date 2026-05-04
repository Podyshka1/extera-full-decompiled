.class Lorg/telegram/ui/Stories/StoryViewer$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryViewer$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer$9;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2443
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2444
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2445
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesIntro;->stopAnimation()V

    .line 2446
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2448
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)V

    .line 2449
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method
