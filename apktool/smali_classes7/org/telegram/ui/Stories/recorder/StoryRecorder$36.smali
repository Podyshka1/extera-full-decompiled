.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLandroid/view/View;)V
    .locals 0

    .line 7876
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->val$visible:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 7879
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mupdateActionBarButtonsOffsets(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 7880
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->val$visible:Z

    if-nez p1, :cond_0

    .line 7881
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
