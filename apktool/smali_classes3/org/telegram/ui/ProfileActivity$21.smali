.class Lorg/telegram/ui/ProfileActivity$21;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$UUGJIYFyjWdcBSCV4-sv9IZpnAM(Lorg/telegram/ui/ProfileActivity$21;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$21;->lambda$dispatchDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 5349
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0()V
    .locals 2

    .line 5382
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 5383
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarsViewPager(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->scrollToLastItem()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 5355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5356
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionOnlineText(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5358
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5359
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionOnlineText(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionOnlineText(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarAnimationProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    sub-float v0, v1, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v8, v0

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5360
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettransitionOnlineText(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5361
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 5362
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 5363
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 5365
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgethasFallbackPhoto(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v0, p1, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    .line 5366
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr p1, v5

    const/high16 v5, 0x41b00000    # 22.0f

    .line 5367
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x41e00000    # 28.0f

    .line 5368
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomPhotoOffset(Lorg/telegram/ui/ProfileActivity;)F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    add-float/2addr v8, v9

    sub-float/2addr v8, v5

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetRatingViewTranslationXOffset(Lorg/telegram/ui/ProfileActivity;)F

    move-result v9

    sub-float/2addr v8, v9

    .line 5370
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    div-float v6, v5, v6

    sub-float v6, p1, v6

    invoke-virtual {v9, v8, v6, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 5371
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v6, v6, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5372
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 5373
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v6, v5, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    .line 5374
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v5

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    invoke-virtual {v3, v6, v6, v5, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5375
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5376
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 5378
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_3

    .line 5379
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v5, :cond_1

    .line 5380
    new-instance v5, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 5381
    new-instance v6, Lorg/telegram/ui/ProfileActivity$21$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$21;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 5388
    :cond_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    sub-float/2addr v1, v6

    mul-float/2addr v5, v1

    .line 5390
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v1

    int-to-float v1, v1

    .line 5392
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    if-eqz v6, :cond_2

    const/high16 v4, 0x41c00000    # 24.0f

    .line 5393
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/StarRatingView;->getVisibilityFactor()F

    move-result v6

    mul-float/2addr v4, v6

    .line 5395
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v5, v1

    .line 5397
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v8, v4

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, p1, v9

    add-float/2addr v8, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {v1, v4, v9, v8, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5398
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 5399
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 5400
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    const/4 v0, -0x1

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 5401
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 5403
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz p1, :cond_4

    .line 5404
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CanvasButton;->cancelRipple()V

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 5422
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 5423
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 5428
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 5429
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetfallbackImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5412
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 5434
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 5435
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ProfileActivity;->updateCollectibleHint()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5417
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcustomAvatarProgress(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
