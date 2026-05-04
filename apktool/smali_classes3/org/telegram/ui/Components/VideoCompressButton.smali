.class public Lorg/telegram/ui/Components/VideoCompressButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final clearPaint:Landroid/graphics/Paint;

.field private disabled:Z

.field private final disabledT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final sizes:[I

.field private final strokePaint:Landroid/graphics/Paint;

.field private final textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->strokePaint:Landroid/graphics/Paint;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->fillPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->clearPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x12c

    move-object v4, p0

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move-object v10, v9

    iput-object v4, v3, Lorg/telegram/ui/Components/VideoCompressButton;->disabledT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/16 v4, 0x8

    .line 63
    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, v3, Lorg/telegram/ui/Components/VideoCompressButton;->sizes:[I

    .line 37
    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v11, 0x0

    invoke-direct {v4, v0, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v4, v3, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x168

    const v5, 0x3ecccccd    # 0.4f

    .line 38
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 39
    const-string v12, "fonts/num.otf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v13, -0x1

    .line 40
    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const v5, 0x4129999a    # 10.6f

    .line 41
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 42
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 v5, 0x11

    .line 43
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 45
    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v4, v0, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v4, v3, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v5, 0x3e4ccccd    # 0.2f

    .line 46
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 47
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const v0, 0x4109999a    # 8.6f

    .line 49
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 50
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x5

    .line 51
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 52
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 55
    invoke-virtual {p1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        0x90
        0xf0
        0x168
        0x1e0
        0x2d0
        0x438
        0x5a0
        0x870
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 109
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->disabledT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->disabled:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    .line 113
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->strokePaint:Landroid/graphics/Paint;

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v7, v3, v1

    float-to-int v1, v7

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->strokePaint:Landroid/graphics/Paint;

    const v8, 0x3faa3d71    # 1.33f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, 0x41aaa3d7    # 21.33f

    .line 116
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x418aa3d7    # 17.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    .line 117
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    div-float/2addr v6, v5

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    div-float/2addr v10, v5

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 117
    invoke-virtual {v9, v4, v6, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 123
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoCompressButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v4, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    div-float/2addr v6, v5

    float-to-int v3, v6

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x410547ae    # 8.33f

    .line 131
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v3, v6

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sub-float/2addr v3, v12

    float-to-int v3, v3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v12, v4

    float-to-int v4, v12

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v12, v5

    add-float/2addr v12, v2

    float-to-int v2, v12

    .line 133
    invoke-virtual {v10, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 140
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v9, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    const v12, 0x3fd47ae1    # 1.66f

    .line 141
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoCompressButton;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 144
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v2

    mul-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoCompressButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 147
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setPhotoState(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoCompressButton;->disabled:Z

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    const-string p1, "HD"

    goto :goto_0

    :cond_0
    const-string p1, "SD"

    :goto_0
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setState(ZZI)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 75
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->disabled:Z

    .line 76
    const-string p1, ""

    if-eqz p2, :cond_2

    .line 77
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string p3, "GIF"

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    .line 80
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v1, 0x2d0

    if-lt p3, v1, :cond_3

    const-string v1, "HD"

    goto :goto_2

    :cond_3
    const-string v1, "SD"

    :goto_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizes:[I

    array-length p2, p2

    sub-int/2addr p2, v0

    :goto_3
    if-ltz p2, :cond_5

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizes:[I

    aget v1, v1, p2

    if-lt p3, v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_5
    const/4 p2, -0x1

    :goto_4
    if-gez p2, :cond_6

    .line 89
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_6
    const/4 p3, 0x6

    if-ne p2, p3, :cond_7

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "2K"

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_7
    const/4 p3, 0x7

    if-ne p2, p3, :cond_8

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "4K"

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    .line 95
    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizes:[I

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 97
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoCompressButton;->disabled:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoCompressButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoCompressButton;->sizeTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
