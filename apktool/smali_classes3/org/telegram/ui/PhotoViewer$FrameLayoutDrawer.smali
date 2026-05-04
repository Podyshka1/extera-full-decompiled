.class abstract Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field private captionAbove:Z

.field private exclusionRects:Ljava/util/ArrayList;

.field private ignoreLayout:Z

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 3042
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p1, 0x0

    .line 3043
    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 3038
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    .line 3044
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3045
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x33000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 3046
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;)Z
    .locals 0

    .line 3036
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 3327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3330
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 3331
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3332
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettranslationY(Lorg/telegram/ui/PhotoViewer;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettranslationY(Lorg/telegram/ui/PhotoViewer;)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3333
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoForwardDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3335
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3336
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettranslationY(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v6

    div-float/2addr v0, v6

    float-to-int v0, v0

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3337
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetseekSpeedDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekSpeedDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 3343
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetleftPaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrightPaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3350
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->drawChildInternal(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected drawChildInternal(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 3358
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetminiProgressView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 3362
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 3363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3364
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 3366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_1
    const/4 v0, 0x1

    .line 3370
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-eq p2, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v2

    if-eq p2, v2, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :catchall_0
    return v0
.end method

.method public notifyHeightChanged()V
    .locals 4

    .line 3428
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    .line 3429
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3430
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoProgressViews(Lorg/telegram/ui/PhotoViewer;)[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setIndexedAlpha(IFZ)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 3386
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 3387
    new-instance v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;-><init>(Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 3422
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 3423
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 3308
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$monDraw(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V

    .line 3310
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3311
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    const v2, 0x3efef9db    # 0.498f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3312
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-lez v0, :cond_0

    .line 3313
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p1

    .line 3315
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    if-lez p1, :cond_1

    .line 3316
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float v11, p1

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3318
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-lez p1, :cond_2

    const/high16 p1, 0x41c00000    # 24.0f

    .line 3319
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    .line 3320
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float v9, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v11, v0, p1

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 3174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3175
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result v2

    .line 3176
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputkeyboardSize(Lorg/telegram/ui/PhotoViewer;I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1e

    .line 3181
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3182
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto/16 :goto_11

    .line 3186
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    goto :goto_1

    .line 3191
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int v5, p2, v5

    .line 3192
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v6, p4, v6

    .line 3193
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, p5, v7

    .line 3195
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 3197
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 3198
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 3203
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    const/16 v11, 0x33

    :cond_2
    and-int/lit8 v12, v11, 0x7

    and-int/lit8 v11, v11, 0x70

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    if-eq v12, v13, :cond_3

    .line 3220
    iget v6, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    sub-int/2addr v6, v5

    sub-int/2addr v6, v9

    .line 3216
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v6, v12

    goto :goto_3

    :cond_4
    sub-int/2addr v6, v5

    sub-int/2addr v6, v9

    .line 3213
    div-int/lit8 v6, v6, 0x2

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :goto_3
    const/16 v12, 0x10

    if-eq v11, v12, :cond_6

    const/16 v12, 0x50

    if-eq v11, v12, :cond_5

    .line 3231
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_5
    sub-int v11, v7, p3

    sub-int/2addr v11, v10

    .line 3228
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_4
    sub-int/2addr v11, v12

    goto :goto_5

    :cond_6
    sub-int v11, v7, p3

    sub-int/2addr v11, v10

    .line 3225
    div-int/lit8 v11, v11, 0x2

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 3235
    :goto_5
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v4, v12, :cond_7

    goto/16 :goto_10

    .line 3236
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v4, v12, :cond_8

    .line 3237
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v11, v7

    goto/16 :goto_10

    .line 3238
    :cond_8
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_1b

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto/16 :goto_e

    .line 3240
    :cond_9
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v12

    if-ne v4, v12, :cond_a

    .line 3241
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v11, v7, v8

    goto/16 :goto_10

    .line 3242
    :cond_a
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v12

    const/high16 v15, 0x42600000    # 56.0f

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x42200000    # 40.0f

    const/high16 v18, 0x41700000    # 15.0f

    const/4 v2, 0x4

    if-eq v4, v12, :cond_16

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditCoverButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/EditCoverButton;

    move-result-object v12

    if-ne v4, v12, :cond_b

    goto/16 :goto_b

    .line 3252
    :cond_b
    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteHints(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteHints(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3254
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c

    .line 3255
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_6

    .line 3257
    :cond_c
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3259
    :goto_6
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-eq v8, v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ne v2, v13, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v17, v18

    :cond_e
    :goto_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v7, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v7, v2

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_8
    sub-int v11, v7, v2

    goto/16 :goto_10

    .line 3260
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v4, v2, :cond_11

    .line 3261
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v11, v2

    .line 3262
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ne v2, v14, :cond_10

    const/high16 v2, 0x42500000    # 52.0f

    .line 3263
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_9
    sub-int/2addr v11, v2

    goto/16 :goto_10

    .line 3264
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1d

    .line 3265
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_9

    .line 3267
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEditContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v4, v2, :cond_12

    sub-int v7, v7, p3

    sub-int/2addr v7, v10

    .line 3268
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v2

    .line 3269
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_8

    .line 3270
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEditContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v4, v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopBulletinUnderCaption(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v4, v2, :cond_13

    goto :goto_a

    .line 3272
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbottomBulletinUnderCaption(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v4, v2, :cond_14

    sub-int v7, v7, p3

    sub-int/2addr v7, v10

    .line 3273
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v2

    .line 3274
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_8

    .line 3275
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoAvatarTooltip(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v4, v2, :cond_1d

    .line 3276
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/high16 v7, 0x41f80000    # 31.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_9

    .line 3271
    :cond_15
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    goto/16 :goto_10

    .line 3244
    :cond_16
    :goto_b
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_17

    .line 3245
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineViewContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_c

    .line 3246
    :cond_17
    iget-boolean v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    if-nez v7, :cond_18

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v7

    if-eqz v7, :cond_18

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_18

    .line 3247
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_c

    .line 3249
    :cond_18
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3251
    :goto_c
    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-eq v8, v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ne v2, v13, :cond_19

    goto :goto_d

    :cond_19
    move/from16 v17, v18

    :cond_1a
    :goto_d
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v7, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto/16 :goto_8

    :cond_1b
    :goto_e
    sub-int v2, p5, p3

    sub-int/2addr v2, v10

    .line 3239
    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinBubbleMode(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v7

    if-nez v7, :cond_1c

    sget-boolean v7, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v7, :cond_1c

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_f

    :cond_1c
    const/4 v7, 0x0

    :goto_f
    add-int v11, v2, v7

    :cond_1d
    :goto_10
    add-int v2, v6, v5

    add-int/2addr v6, v9

    add-int/2addr v6, v5

    add-int/2addr v10, v11

    .line 3278
    invoke-virtual {v4, v2, v11, v6, v10}, Landroid/view/View;->layout(IIII)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3281
    :cond_1e
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->notifyHeightChanged()V

    .line 3282
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->updateExclusionRects()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 3051
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 3052
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3053
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    .line 3054
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    move v7, v1

    .line 3057
    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3059
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_3

    .line 3060
    iput-boolean v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 3061
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptionLayout(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3062
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    .line 3063
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3064
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 3066
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3067
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3069
    :goto_1
    iput-boolean v9, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 3072
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbottomLayout(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_4

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v11, v1

    goto :goto_2

    :cond_4
    move v11, v9

    .line 3075
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_7

    .line 3076
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3077
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3078
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3079
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3081
    iput-boolean v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    .line 3082
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_5

    if-ge v7, v6, :cond_5

    .line 3083
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 3084
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 3087
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    .line 3088
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3091
    :cond_6
    :goto_3
    iput-boolean v9, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    move v12, v1

    goto :goto_4

    :cond_7
    move/from16 v2, p1

    move v12, v9

    .line 3096
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerControlFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3097
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerControlFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->-$$Nest$fputparentWidth(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)V

    .line 3098
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerControlFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object v1

    invoke-static {v1, v7}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->-$$Nest$fputparentHeight(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)V

    .line 3101
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v6, v1

    .line 3102
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v7, v1

    .line 3104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    move v14, v9

    :goto_5
    if-ge v14, v13, :cond_22

    .line 3106
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3107
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    if-ne v1, v3, :cond_9

    goto/16 :goto_f

    .line 3110
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_b

    .line 3111
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_a
    move v5, v9

    :goto_6
    add-int/2addr v3, v5

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3112
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    .line 3113
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v3

    if-ne v1, v3, :cond_10

    .line 3116
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 3117
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetusedSurfaceView(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoSurfaceView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTextureView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    .line 3118
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 3119
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_8

    .line 3121
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v3

    .line 3122
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v1

    :goto_8
    if-eqz v3, :cond_e

    if-nez v1, :cond_f

    :cond_e
    move v3, v6

    move v1, v7

    .line 3128
    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v5

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v5, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    .line 3129
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_e

    .line 3142
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v3

    if-ne v1, v3, :cond_17

    .line 3144
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetdontChangeCaptionPosition(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3145
    iget-boolean v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    if-eqz v3, :cond_15

    add-int v3, v11, v12

    goto :goto_9

    .line 3148
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetgroupedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/GroupedPhotosListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_13

    if-le v7, v6, :cond_14

    :cond_13
    add-int v3, v11, v12

    .line 3150
    iput-boolean v8, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    goto :goto_9

    .line 3152
    :cond_14
    iput-boolean v9, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->captionAbove:Z

    :cond_15
    move v3, v11

    .line 3154
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_a

    :cond_16
    move v5, v9

    :goto_a
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v15

    add-int/2addr v5, v15

    sub-int v5, v7, v5

    sub-int/2addr v5, v3

    .line 3156
    iget-object v15, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v15}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionScrollView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionScrollView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3157
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    .line 3158
    :cond_17
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEditContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eq v1, v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopBulletinUnderCaption(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne v1, v3, :cond_18

    goto :goto_c

    .line 3162
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v1, v3, :cond_1a

    .line 3163
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_b

    :cond_19
    move v3, v9

    :goto_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int/2addr v3, v5

    sub-int v3, v7, v3

    .line 3164
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3165
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    :cond_1a
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    .line 3167
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_f

    .line 3159
    :cond_1b
    :goto_c
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_d

    :cond_1c
    move v3, v9

    :goto_d
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int/2addr v3, v5

    sub-int v3, v7, v3

    .line 3160
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3161
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_f

    .line 3131
    :cond_1d
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinBubbleMode(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3132
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_f

    .line 3133
    :cond_1e
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v3, :cond_20

    .line 3134
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3135
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v15, v7, v15

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_f

    .line 3137
    :cond_1f
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v5, v7, v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_f

    .line 3140
    :cond_20
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v5, v15

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_21
    :goto_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_22
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3378
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3381
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public updateExclusionRects()V
    .locals 10

    .line 3288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 3289
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    .line 3292
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3293
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetswitchingToMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3294
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3298
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    invoke-direct {v3, v9, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3299
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3301
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 3302
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
