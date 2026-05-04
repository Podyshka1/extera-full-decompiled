.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastRainbowX:F

.field private lastRainbowY:F

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$palette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->val$palette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 635
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->path:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 638
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 639
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object p2

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private checkRainbow(FF)V
    .locals 4

    .line 644
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 645
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowX:F

    .line 646
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowY:F

    const/16 v0, 0x8

    .line 648
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v0, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        -0x14b4b5
        -0x117d12
        -0x9f7f1c
        -0xff0001
        -0x703200
        -0x100
        -0x5b00
        -0x14b4b5
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 672
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetBarView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 675
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 676
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    .line 677
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    .line 678
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    .line 679
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v7

    .line 675
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 681
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/high16 v5, 0x42000000    # 32.0f

    .line 683
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    .line 684
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetblurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x40800000    # 4.0f

    .line 685
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 686
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetblurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 687
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetblurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetblurredBackgroundDrawableForTools(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 693
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_9

    .line 694
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 695
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 697
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 698
    instance-of v6, v2, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v6, :cond_1

    .line 699
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getColorClickableView()Landroid/view/View;

    move-result-object v5

    :cond_1
    move-object v8, v5

    .line 702
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    .line 703
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getPivotX()F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getPivotY()F

    move-result v10

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 705
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    sub-float v6, v7, v6

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v9

    mul-float/2addr v6, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 707
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 708
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v6, v10

    .line 709
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    int-to-float v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v11, v13

    int-to-float v13, v6

    div-float/2addr v13, v12

    add-float/2addr v11, v13

    .line 710
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatch(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 711
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettabsNewSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 712
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettabsNewSelectedIndex(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I

    move-result v15

    invoke-static {v14, v15}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$mgetBarView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    if-nez v14, :cond_2

    move-object v15, v2

    goto :goto_1

    :cond_2
    move-object v15, v14

    .line 713
    :goto_1
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move/from16 v16, v7

    .line 714
    instance-of v7, v14, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v7, :cond_3

    .line 715
    check-cast v14, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getColorClickableView()Landroid/view/View;

    move-result-object v15

    .line 717
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v15}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v7, v14

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v15}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v14, v14, v17

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v14, v14, v17

    int-to-float v14, v14

    div-float/2addr v14, v12

    add-float/2addr v7, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettabsSelectionProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v14

    invoke-static {v10, v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 718
    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v7, v14

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    sub-int v14, v14, v17

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    div-float/2addr v14, v12

    add-float/2addr v7, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettabsSelectionProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v14

    invoke-static {v11, v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    goto :goto_2

    :cond_4
    move/from16 v16, v7

    .line 720
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 721
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 722
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    add-float/2addr v13, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v14

    invoke-static {v10, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 723
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v13, v2

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    add-float/2addr v13, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v2

    invoke-static {v11, v13, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 724
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->val$palette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result v2

    .line 725
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatch(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v7

    iget v7, v7, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v13

    invoke-static {v7, v2, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    .line 727
    :cond_5
    invoke-direct {v0, v10, v11}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->checkRainbow(FF)V

    .line 729
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 730
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 731
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 732
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    :cond_6
    move v7, v2

    sub-float v2, v10, v7

    sub-float v3, v11, v7

    add-float v5, v10, v7

    add-float v6, v11, v7

    .line 734
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorPickerRainbowPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 737
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 739
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 742
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v7, v3

    .line 743
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->getSelectedColorIndex()I

    move-result v4

    if-eqz v4, :cond_7

    .line 744
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v7, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 746
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchPaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v1, v10, v11, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawColorCircle(Landroid/graphics/Canvas;FFFI)V

    .line 748
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorsListView(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->getSelectedColorIndex()I

    move-result v3

    if-nez v3, :cond_8

    .line 749
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 750
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgettoolsTransformProgress(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float/2addr v2, v3

    sub-float/2addr v7, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->-$$Nest$fgetcolorSwatchOutlinePaint(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 754
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 664
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
