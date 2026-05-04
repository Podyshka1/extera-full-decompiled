.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$editMode:I

.field final synthetic val$oldEditMode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    .line 5582
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->val$oldEditMode:I

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->val$editMode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 5585
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->val$oldEditMode:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->val$editMode:I

    if-eq p1, v0, :cond_0

    .line 5586
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$monSwitchEditModeEnd(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    :cond_0
    return-void
.end method
