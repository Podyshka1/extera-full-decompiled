.class Lorg/telegram/ui/Components/PipVideoOverlay$9;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/content/Context;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1066
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1056
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_1

    .line 1057
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$9;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->-$$Nest$fgetphotoViewer(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/video/VideoFramesRewinder;->draw(Landroid/graphics/Canvas;II)V

    .line 1060
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method
