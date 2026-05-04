.class public Lorg/telegram/ui/Stories/StoryPrivacyButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final arrowPaint:Landroid/graphics/Paint;

.field private final arrowPath:Landroid/graphics/Path;

.field private final backgroundPaint:[Landroid/graphics/Paint;

.field private bottomColor:I

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public draw:Z

.field private drawArrow:Z

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final icon:[Landroid/graphics/drawable/Drawable;

.field private iconResId:I

.field private final iconSize:[F

.field private topColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 31
    new-array v0, p1, [Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    .line 32
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x104

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 36
    new-array v1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    .line 37
    new-array p1, p1, [F

    iput-object p1, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    .line 43
    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v3, p0, v4, v5}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v3, v2, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 48
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v3, v0, v1

    .line 49
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setIcon(IF)V
    .locals 6

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 115
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v5, v4, v1

    aput v5, v4, v3

    if-eqz v2, :cond_1

    .line 116
    iget v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconResId:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconResId:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v1

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    aput p2, p1, v1

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setupGradient(II)V
    .locals 11

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    iget v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->topColor:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bottomColor:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 127
    :cond_1
    :goto_0
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->topColor:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bottomColor:I

    filled-new-array {p1, p2}, [I

    move-result-object v8

    const/4 p1, 0x2

    new-array v9, p1, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 138
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-nez v2, :cond_0

    return-void

    .line 142
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 143
    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const v5, 0x41bd47ae    # 23.66f

    if-eqz v4, :cond_2

    const/high16 v4, 0x422c0000    # 43.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    .line 144
    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    .line 145
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    div-float/2addr v9, v8

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    div-float/2addr v10, v8

    add-float/2addr v2, v10

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    .line 145
    invoke-virtual {v6, v7, v9, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v4, 0x3d99999a    # 0.075f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 156
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    cmpl-float v3, v2, v3

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x1

    if-lez v3, :cond_3

    .line 158
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    const/16 v7, 0xff

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v9, v9, v5

    invoke-virtual {v1, v6, v3, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v7, v2, v3

    const/4 v9, 0x0

    if-gez v7, :cond_4

    .line 162
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v9

    const/high16 v10, 0x437f0000    # 255.0f

    sub-float/2addr v3, v2

    mul-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v10, v10, v9

    invoke-virtual {v1, v6, v3, v7, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v7, v2, v3

    .line 166
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v7, v3

    .line 167
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v5

    const v11, 0x416a8f5c    # 14.66f

    if-eqz v10, :cond_6

    cmpl-float v10, v2, v3

    if-lez v10, :cond_6

    .line 168
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v10, :cond_5

    iget v10, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    add-float/2addr v10, v12

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    .line 169
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v13, v13, v5

    div-float/2addr v13, v8

    mul-float/2addr v13, v7

    sub-float v13, v10, v13

    float-to-int v13, v13

    .line 171
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v15, v15, v5

    div-float v16, v15, v8

    mul-float v16, v16, v7

    sub-float v14, v14, v16

    float-to-int v14, v14

    div-float/2addr v15, v8

    mul-float/2addr v15, v7

    add-float/2addr v10, v15

    float-to-int v10, v10

    .line 173
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    move/from16 v16, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v3, v3, v5

    div-float/2addr v3, v8

    mul-float/2addr v3, v7

    add-float/2addr v15, v3

    float-to-int v3, v15

    .line 169
    invoke-virtual {v12, v13, v14, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_6
    move/from16 v16, v3

    .line 177
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    if-eqz v3, :cond_8

    cmpg-float v2, v2, v16

    if-gtz v2, :cond_8

    .line 178
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v2, :cond_7

    iget v2, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 179
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v5, v5, v9

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    sub-float v5, v2, v5

    float-to-int v5, v5

    .line 181
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v11, v11, v9

    div-float v12, v11, v8

    mul-float/2addr v12, v7

    sub-float/2addr v10, v12

    float-to-int v10, v10

    div-float/2addr v11, v8

    mul-float/2addr v11, v7

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 183
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v12, v12, v9

    div-float/2addr v12, v8

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    float-to-int v7, v11

    .line 179
    invoke-virtual {v3, v5, v10, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    :cond_8
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v2, :cond_9

    .line 188
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 189
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    const v5, 0x417a8f5c    # 15.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const v7, 0x3faa3d71    # 1.33f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const v5, 0x40151eb8    # 2.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    const v4, 0x41028f5c    # 8.16f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x42700000    # 60.0f

    .line 207
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z
    .locals 4

    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 59
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    goto/16 :goto_1

    .line 60
    :cond_0
    iget-boolean v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v2, :cond_1

    .line 61
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_stories_closefriends:I

    const/high16 p2, 0x41700000    # 15.0f

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x7726c6

    const p2, -0xd249c5

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    .line 64
    :cond_1
    iget-boolean v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    const v3, 0x418aa3d7    # 17.33f

    if-eqz v2, :cond_2

    .line 65
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_private:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x3b970e

    const p2, -0x69a306

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    .line 68
    :cond_2
    iget-boolean v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-nez v2, :cond_5

    if-eqz p1, :cond_3

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 73
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_channels:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0xe95a0e

    const p2, -0xee7f09

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    .line 77
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    goto :goto_1

    .line 69
    :cond_5
    :goto_0
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const/16 p1, -0x48bd

    const p2, -0x971cc

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 71
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 79
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 81
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    return p1
.end method

.method public set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z
    .locals 3

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 87
    iget-object p2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-nez p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget p2, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    if-ne p2, v0, :cond_1

    .line 90
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_stories_closefriends:I

    const/high16 p2, 0x41700000    # 15.0f

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x7726c6

    const p2, -0xd249c5

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const v2, 0x418aa3d7    # 17.33f

    if-ne p2, v0, :cond_2

    .line 94
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_private:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x3b970e

    const p2, -0x69a306

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 98
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const/16 p1, -0x48bd

    const p2, -0x971cc

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 102
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_channels:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0xe95a0e

    const p2, -0xee7f09

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    .line 106
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    goto :goto_1

    .line 88
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    .line 108
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 110
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    return p1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method
