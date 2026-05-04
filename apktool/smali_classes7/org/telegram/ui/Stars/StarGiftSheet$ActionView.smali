.class public Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionView"
.end annotation


# instance fields
.field private final bgDarkerPaint:Landroid/graphics/Paint;

.field private final bgPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurInvertMatrix:Landroid/graphics/Matrix;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private fullRect:Z

.field private layout:Landroid/text/StaticLayout;

.field private final paint:Landroid/text/TextPaint;

.field private final path:Lorg/telegram/ui/Components/LinkPath;

.field private px:I

.field private py:I

.field private textToSet:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$PRbqyJLWwsMs7wHivmB5PWcuswM(Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->lambda$prepareBlur$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 8232
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 8229
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->px:I

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->py:I

    .line 8234
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->paint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    .line 8235
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 8236
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8238
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgPaint:Landroid/graphics/Paint;

    .line 8239
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const v2, 0x411a8f5c    # 9.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 8241
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgDarkerPaint:Landroid/graphics/Paint;

    .line 8242
    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 8244
    new-instance p1, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    return-void
.end method

.method private synthetic lambda$prepareBlur$0(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 8271
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    .line 8272
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurInvertMatrix:Landroid/graphics/Matrix;

    .line 8273
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 8274
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8275
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 8276
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 8277
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method private set(Ljava/lang/CharSequence;I)V
    .locals 9

    if-gtz p2, :cond_0

    .line 8392
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->textToSet:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    .line 8396
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v4, p2, v0

    .line 8397
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->paint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    .line 8398
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CornerPath;->rewind()V

    .line 8399
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    iget p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->px:I

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->py:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CornerPath;->setPadding(II)V

    .line 8400
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->fullRect:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 8401
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, v0}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    .line 8403
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v4, p1

    move v6, v0

    move v5, v1

    .line 8404
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 8405
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 8406
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 8407
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 8408
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8410
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    .line 8414
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float v7, p1

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 8410
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/LinkPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 8418
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1, p2, v0, v0}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    .line 8419
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 8420
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    .line 8422
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 8433
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8435
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    .line 8436
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8437
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8438
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 8439
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 8440
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 8443
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 8444
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8446
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurInvertMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 8447
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->px:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8448
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 8449
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 8451
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8452
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgDarkerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const v2, 0x3eb33333    # 0.35f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8453
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->path:Lorg/telegram/ui/Components/LinkPath;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgDarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8454
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 8455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 8285
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8286
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->textToSet:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 8287
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;I)V

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 8290
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 8291
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8289
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8294
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 8295
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public prepareBlur(Landroid/view/View;)V
    .locals 4

    .line 8266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 8268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8270
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p1, v3, v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;FILandroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public set(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 5

    if-eqz p2, :cond_3

    .line 8363
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 8367
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8369
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    .line 8370
    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 8374
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->crafted:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->GiftSelfTopActionCrafted:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->GiftSelfTopAction:I

    :goto_0
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    int-to-long v3, p2

    .line 8375
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 8373
    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;)V

    return-void

    .line 8378
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->GiftTopAction:I

    .line 8380
    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    int-to-long v3, p2

    .line 8381
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v2

    .line 8378
    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_1
    const/16 p1, 0x8

    .line 8364
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public set(Ljava/lang/CharSequence;)V
    .locals 1

    .line 8387
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 8299
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 8304
    :cond_0
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 8305
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 8307
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v5, :cond_1

    .line 8308
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    .line 8313
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8333
    :cond_1
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v5, :cond_6

    .line 8334
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    .line 8336
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v5, :cond_2

    .line 8337
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8341
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    cmp-long v0, v2, v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 8345
    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->craft:Z

    if-nez v0, :cond_4

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->crafted:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->GiftSelfTopAction:I

    goto :goto_1

    :cond_4
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->GiftSelfTopActionCrafted:I

    :goto_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, p1

    .line 8346
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 8344
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8349
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->GiftTopAction:I

    .line 8351
    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, p1

    .line 8352
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDate(J)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object p1, v4, v2

    .line 8349
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;)V

    .line 8355
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8358
    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8300
    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setFullRect(Z)V
    .locals 0

    .line 8248
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->fullRect:Z

    return-void
.end method

.method public setPadding(II)V
    .locals 0

    .line 8252
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->px:I

    .line 8253
    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->py:I

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 2

    .line 8257
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 8258
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->bgDarkerPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 8427
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8428
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
