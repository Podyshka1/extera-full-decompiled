.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 5565
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$24;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5568
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$24;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->invalidateBlur()V

    return-void
.end method
