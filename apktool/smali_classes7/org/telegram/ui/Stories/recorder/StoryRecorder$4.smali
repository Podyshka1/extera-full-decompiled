.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final leftExclRect:Landroid/graphics/Rect;

.field private renderNode:Landroid/graphics/RenderNode;

.field private final rightExclRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V
    .locals 0

    .line 2067
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2089
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->leftExclRect:Landroid/graphics/Rect;

    .line 2090
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->rightExclRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-nez v3, :cond_1

    .line 2118
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    if-nez v3, :cond_0

    .line 2119
    const-string v3, "StoryRecorder.PreviewView"

    invoke-static {v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    .line 2121
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 2122
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    move-object v1, p1

    .line 2125
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_3

    if-lt v0, v2, :cond_3

    .line 2127
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2128
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetblurManager(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2129
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetblurManager(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    const v2, -0xe0e0e1

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setRenderNode(Landroid/view/View;Ljava/lang/Object;I)V

    .line 2131
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_3
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetopenCloseAnimator(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2109
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 2094
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 2095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2098
    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->leftExclRect:Landroid/graphics/Rect;

    const/high16 p3, 0x42f00000    # 120.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p5, v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2099
    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->rightExclRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p4, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int p3, p5, p3

    invoke-virtual {p2, v0, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2100
    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->leftExclRect:Landroid/graphics/Rect;

    iget-object p3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->rightExclRect:Landroid/graphics/Rect;

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/graphics/Rect;

    aput-object p2, p4, v3

    const/4 p2, 0x1

    aput-object p3, p4, p2

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 2079
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2081
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewCurvesControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2082
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewCurvesControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewCurvesControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewCurvesControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    .line 2084
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewBlurControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewBlurControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewBlurControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetphotoFilterViewBlurControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewTouchable(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewTouchable(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;->onTouch(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 2074
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
