.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;
.super Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$radius:F

.field final synthetic val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;


# direct methods
.method public static synthetic $r8$lambda$CddIKtIMy4frrCudqDPnaYUkxdE(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;F)V
    .locals 0

    .line 418
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$radius:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawAbove(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$radius:F

    float-to-double v2, p2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p2, v2

    invoke-virtual {v0, p1, v1, v1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawPlus(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method protected hide()V
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected show(Z)V
    .locals 4

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawAvatar:Z

    .line 422
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 424
    new-array p1, p1, [I

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    .line 426
    aget v0, p1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    aget p1, p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;->val$storyCell:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/LaunchActivity;->makeRipple(FFF)V

    :cond_0
    return-void
.end method
