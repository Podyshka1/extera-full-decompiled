.class Lorg/telegram/ui/PhotoViewer$QualityChooseView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityChooseView"
.end annotation


# instance fields
.field private circleSize:I

.field private gapSize:I

.field private hightQualityDescription:Ljava/lang/String;

.field private lineSize:I

.field private lowQualityDescription:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private sideSide:I

.field private startMovingQuality:I

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 21309
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 21310
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21312
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    .line 21313
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41600000    # 14.0f

    .line 21314
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21315
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const p2, -0x323233

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21317
    const-string p1, "AccDescrVideoCompressLow"

    sget p2, Lorg/telegram/messenger/R$string;->AccDescrVideoCompressLow:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lowQualityDescription:Ljava/lang/String;

    .line 21318
    const-string p1, "AccDescrVideoCompressHigh"

    sget p2, Lorg/telegram/messenger/R$string;->AccDescrVideoCompressHigh:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 21362
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    .line 21363
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    sub-int/2addr v2, v6

    div-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    goto :goto_0

    .line 21365
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    .line 21367
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v8, v1, v2

    const/4 v1, 0x0

    move v9, v1

    .line 21368
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 21369
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 21370
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-gt v9, v2, :cond_1

    .line 21371
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v3, -0xac5111

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 21373
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v3, 0x66ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    int-to-float v2, v1

    int-to-float v3, v8

    .line 21376
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    if-ne v9, v4, :cond_2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_3
    int-to-float v4, v4

    goto :goto_4

    :cond_2
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v4, v4, 0x2

    goto :goto_3

    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v9, :cond_5

    .line 21379
    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    sub-int/2addr v1, v2

    .line 21380
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    add-int/2addr v2, v6

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v9, v2, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    goto :goto_5

    :cond_3
    move v2, v3

    .line 21381
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-ne v9, v5, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    :cond_4
    int-to-float v5, v1

    add-float/2addr v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21382
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v8, v2

    int-to-float v2, v2

    iget v10, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    add-int/2addr v1, v10

    int-to-float v1, v1

    sub-float v3, v1, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v4, v1

    move v1, v5

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 21386
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lowQualityDescription:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v8, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21387
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 21388
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->hightQualityDescription:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v8, v1

    int-to-float v1, v8

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 21354
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 21355
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 21356
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    const/high16 p1, 0x41900000    # 18.0f

    .line 21357
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 21323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 21324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 21325
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    .line 21326
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 21343
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 21344
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->startMovingQuality:I

    if-eq p1, v0, :cond_3

    .line 21345
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mrequestVideoPreview(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21347
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmoving(Lorg/telegram/ui/PhotoViewer;Z)V

    goto :goto_2

    :cond_4
    :goto_0
    move p1, v3

    .line 21330
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 21331
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->sideSide:I

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->lineSize:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->gapSize:I

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, p1

    add-int/2addr v1, v7

    div-int/lit8 v7, v8, 0x2

    add-int/2addr v1, v7

    .line 21332
    div-int/2addr v5, v4

    div-int/2addr v8, v4

    add-int/2addr v5, v8

    add-int/2addr v5, v6

    sub-int v6, v1, v5

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 21334
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 21335
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputselectedCompression(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21336
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mdidChangedCompressionLevel(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 21337
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v2
.end method
