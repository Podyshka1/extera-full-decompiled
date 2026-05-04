.class Lorg/telegram/ui/Stories/StoryViewer$9$2;
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

    .line 2457
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2460
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2461
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2462
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$9;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoriesIntro;->startAnimation(Z)V

    :cond_0
    return-void
.end method
