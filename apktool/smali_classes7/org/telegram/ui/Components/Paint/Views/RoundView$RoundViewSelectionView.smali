.class public Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/RoundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoundViewSelectionView"
.end annotation


# instance fields
.field private final arcRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/RoundView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/RoundView;Landroid/content/Context;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    .line 220
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 246
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;->arcRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 250
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    .line 254
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getShowAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v8

    if-gez v1, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 261
    :cond_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40b51eb8    # 5.66f

    .line 262
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v0, v6

    const/high16 v1, 0x41700000    # 15.0f

    .line 264
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v10, v0, v9

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;->arcRect:Landroid/graphics/RectF;

    mul-float/2addr v1, v10

    add-float v11, v9, v1

    invoke-virtual {v0, v9, v9, v11, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;->arcRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;->arcRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v10, v9

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 272
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v6, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v10, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 275
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v10, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 225
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x419c0000    # 19.5f

    .line 226
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    sub-float v5, v0, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    sub-float v5, v2, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    add-float v5, v2, v1

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 p1, 0x1

    return p1

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    add-float/2addr v5, v0

    sub-float/2addr v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    sub-float v5, v2, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr v2, v1

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 239
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v1, p1

    float-to-double p1, v0

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    cmpg-double p1, v1, p1

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
