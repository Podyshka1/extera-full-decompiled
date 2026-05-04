.class Lorg/telegram/ui/PhotoViewer$28;
.super Lorg/telegram/ui/Components/VideoTimelinePlayView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 1

    .line 6500
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;-><init>(Landroid/content/Context;)V

    .line 6509
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$28;->path:Landroid/graphics/Path;

    .line 6510
    new-instance p2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$28;->blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-void
.end method


# virtual methods
.method protected customBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9

    .line 6519
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6520
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 6521
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    neg-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6522
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$28;->blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v4, -0xe1e1e2

    const/high16 v5, 0x33000000

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/PhotoViewer;->drawCaptionBlur(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;IIZZZ)V

    .line 6523
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 6528
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 6531
    :cond_1
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 6503
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 6504
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6505
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
