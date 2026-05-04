.class public abstract Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClippingTextViewSwitcher"
.end annotation


# instance fields
.field private activeIndex:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final clipProgress:[F

.field private final erasePaint:Landroid/graphics/Paint;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private gradientShader:Landroid/graphics/LinearGradient;

.field private final gradientSize:I

.field private isCenter:Z

.field private final rectF:Landroid/graphics/RectF;

.field private rightPadding:I

.field private stableOffest:I

.field private final textViews:[Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$6L9Wx8TLROSD28xytT6UeTjA4VY(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->lambda$setText$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-Q4KUF9A6LdowAvxBgNXtwk_8c(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->lambda$setText$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgettextViews(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;)[Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 3235
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 3219
    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    .line 3220
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    const/high16 v0, 0x41c00000    # 24.0f

    .line 3221
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    const/4 v0, -0x1

    .line 3230
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 3231
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_1

    .line 3237
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->createTextView()Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v2, v0

    if-ne v0, v1, :cond_0

    .line 3239
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3240
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3242
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3244
    :cond_1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    .line 3245
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    .line 3246
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3247
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    .line 3248
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private synthetic lambda$setText$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 3390
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 3391
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setText$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 3398
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 3399
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected abstract createTextView()Landroid/widget/TextView;
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    .line 3281
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    move-object v7, p2

    if-ne v7, v3, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v4

    .line 3285
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->isCenter:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_1

    .line 3286
    iput v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 3289
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    if-lez v3, :cond_3

    .line 3290
    array-length v3, v1

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_3

    aget-object v9, v1, v6

    .line 3291
    instance-of v10, v9, Lorg/telegram/ui/Components/MarqueeTextView;

    if-eqz v10, :cond_2

    check-cast v9, Lorg/telegram/ui/Components/MarqueeTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/MarqueeTextView;->isNeedMarquee()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3292
    iput v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3298
    :cond_3
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-lez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3299
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 3300
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    cmpl-float v5, v1, v3

    if-nez v5, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    cmpl-float v5, v3, v1

    if-lez v5, :cond_5

    .line 3305
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v1, v10, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 3307
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v3, v10, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    if-eqz v4, :cond_6

    .line 3310
    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-ne v8, v1, :cond_6

    .line 3311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3312
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 3313
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    move v11, v4

    goto :goto_4

    :cond_7
    move v11, v2

    .line 3317
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v1, v1, v8

    cmpl-float v1, v1, v10

    if-gtz v1, :cond_9

    if-eqz v11, :cond_8

    goto :goto_5

    .line 3335
    :cond_8
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0

    .line 3318
    :cond_9
    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3319
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, v2

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .line 3320
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v6

    move v12, v3

    .line 3321
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 3322
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v0, v0, v8

    sub-float/2addr v9, v0

    mul-float v1, v12, v9

    .line 3323
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 3324
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3325
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    .line 3326
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v3

    cmpl-float v0, v12, v1

    if-lez v0, :cond_a

    const/4 v2, 0x0

    .line 3328
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    if-eqz v11, :cond_b

    .line 3331
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3333
    :cond_b
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v7
.end method

.method public getCustomPaddingRight()I
    .locals 1

    .line 3423
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rightPadding:I

    return v0
.end method

.method public getNextTextView()Landroid/widget/TextView;
    .locals 2

    .line 3419
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 2

    .line 3415
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 3266
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3267
    iget-boolean p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->isCenter:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    move p3, p2

    .line 3268
    :goto_0
    iget-object p4, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    array-length p5, p4

    if-ge p3, p5, :cond_2

    .line 3269
    aget-object p4, p4, p3

    if-nez p4, :cond_0

    goto :goto_1

    .line 3271
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 3272
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    .line 3273
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p4, p5, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 3253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 3254
    new-instance v0, Landroid/graphics/LinearGradient;

    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    int-to-float v1, p1

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientShader:Landroid/graphics/LinearGradient;

    .line 3255
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setCustomPaddingRight(I)V
    .locals 5

    .line 3427
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rightPadding:I

    .line 3428
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3429
    instance-of v4, v3, Lorg/telegram/ui/Components/MarqueeTextView;

    if-eqz v4, :cond_0

    .line 3430
    check-cast v3, Lorg/telegram/ui/Components/MarqueeTextView;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/MarqueeTextView;->setCustomPaddingRight(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3433
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsCenter()V
    .locals 1

    const/4 v0, 0x1

    .line 3261
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->isCenter:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 3341
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 13

    .line 3345
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3350
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 3354
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 3355
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, p2

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    .line 3357
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 3360
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3362
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, -0x1

    .line 3363
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 3366
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-nez v0, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, p2

    .line 3368
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    .line 3370
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_6

    .line 3371
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3373
    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3374
    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3381
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3382
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 3383
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3387
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget p1, p1, v0

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput p1, v5, p2

    const/high16 p1, 0x3f400000    # 0.75f

    aput p1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v5, 0xc8

    .line 3388
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3389
    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3394
    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v7, v7, v2

    new-array v8, v4, [F

    aput v7, v8, p2

    const/4 v7, 0x0

    aput v7, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v9, 0x64

    .line 3395
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3396
    invoke-virtual {v8, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3397
    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3402
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v0, v5, v0

    new-array v5, v3, [F

    aput v7, v5, p2

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v9, 0x4b

    .line 3403
    invoke-virtual {v0, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v11, 0x96

    .line 3404
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3406
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v2, v5, v2

    new-array v5, v3, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, p2

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3407
    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3408
    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3410
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p1, v6, p2

    aput-object v8, v6, v3

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3411
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 3348
    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
