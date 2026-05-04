.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V
    .locals 0

    .line 5844
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    .line 5845
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 5858
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5859
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41400000    # 12.0f

    .line 5860
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5861
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5862
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 5863
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5865
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5866
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5867
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 5869
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetchangeToScrimColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5870
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetscrimColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetaccentColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v7

    invoke-static {v5, v6, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 5872
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5874
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5875
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetcurrent(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5877
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    .line 5878
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v5, v3, v5

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 5880
    :goto_2
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 5881
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 5882
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v9

    mul-float/2addr v10, v5

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 5883
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v11, v9

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 5884
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    mul-float/2addr v4, v5

    add-float/2addr v11, v4

    float-to-int v4, v11

    .line 5880
    invoke-virtual {v6, v7, v8, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5886
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v5

    sub-float v5, v3, v5

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    .line 5887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpg-float v5, v4, v3

    const/high16 v7, 0x41000000    # 8.0f

    if-gez v5, :cond_4

    .line 5889
    iget v5, v6, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5890
    invoke-virtual {p1, v3, v4, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5891
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v7

    sub-float v5, v3, v5

    sub-float v8, v3, v4

    mul-float/2addr v5, v8

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 5892
    iget v5, v6, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v8, v6, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5894
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetclipBottom(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v9

    const/high16 v10, 0x42340000    # 45.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v2, v2, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5895
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5896
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5897
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5899
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v2, 0x0

    if-nez v0, :cond_5

    mul-float/2addr v4, v7

    .line 5900
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 5901
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    .line 5902
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 5903
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v5, 0x6

    if-ne v0, v5, :cond_7

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v4, v0

    .line 5904
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 5905
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_8

    const/high16 v0, -0x3f000000    # -8.0f

    mul-float/2addr v4, v0

    .line 5906
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5908
    :cond_8
    :goto_3
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v0

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    float-to-int v12, v3

    const/16 v13, 0x1f

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5909
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5910
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetbottomGradientView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetparentDialogX(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetbottomGradientView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetparentDialogY(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v7, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5911
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetbottomGradientView(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5912
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_9
    move-object v7, p1

    .line 5914
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_b

    .line 5915
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v0

    sub-float/2addr v3, v0

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5916
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetcurrent(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 5917
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageViewEmoji(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_4

    :cond_a
    move-object v7, p1

    .line 5920
    :cond_b
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5921
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetshowT(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5922
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetcurrent(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 5923
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 5934
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 5935
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5936
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 5929
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fputlastInsets(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/WindowInsets;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 5942
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 5943
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5944
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetimageReceiver(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 5950
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 5952
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$mgetParentActivity(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5956
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 5957
    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    if-ne p3, p4, :cond_2

    iget-object p3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-eq p3, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 5958
    :cond_2
    :goto_1
    iget-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->-$$Nest$mprepareBlurBitmap(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 5851
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5852
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5850
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
