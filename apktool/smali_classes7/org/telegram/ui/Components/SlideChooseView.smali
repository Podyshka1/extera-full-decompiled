.class public Lorg/telegram/ui/Components/SlideChooseView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SlideChooseView$Callback;
    }
.end annotation


# instance fields
.field private final accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field private allowSlide:Z

.field private callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

.field private circleSize:I

.field private dashedFrom:I

.field private gapSize:I

.field private lastDash:I

.field private leftDrawables:[Landroid/graphics/drawable/Drawable;

.field private linePaint:Landroid/graphics/Paint;

.field private lineSize:I

.field private minIndex:I

.field private moving:Z

.field private movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

.field private needDivider:Z

.field private optionsSizes:[I

.field private optionsStr:[Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedIndex:I

.field private selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

.field private selectedIndexTouch:F

.field private sideSide:I

.field private startMoving:Z

.field private startMovingPreset:I

.field private textPaint:Landroid/text/TextPaint;

.field private touchWasClose:Z

.field private xTouchDown:F

.field private yTouchDown:F


# direct methods
.method static bridge synthetic -$$Nest$fgetoptionsStr(Lorg/telegram/ui/Components/SlideChooseView;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedIndex(Lorg/telegram/ui/Components/SlideChooseView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msetOption(Lorg/telegram/ui/Components/SlideChooseView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->needDivider:Z

    const/high16 v0, -0x80000000

    .line 53
    iput v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x78

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x96

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->touchWasClose:Z

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    .line 71
    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    .line 74
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40000000    # 2.0f

    .line 76
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SlideChooseView$1;-><init>(Lorg/telegram/ui/Components/SlideChooseView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private setOption(I)V
    .locals 1

    .line 213
    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq v0, p1, :cond_0

    .line 214
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    .line 216
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/SlideChooseView$Callback;->onOptionSelected(I)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 325
    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 234
    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v7

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v11, 0x2

    div-int/2addr v2, v11

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v12, v2, v3

    const/4 v14, 0x0

    .line 238
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    if-ge v14, v2, :cond_e

    .line 239
    iget v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    iget v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    mul-int/2addr v6, v11

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v14

    add-int/2addr v2, v5

    div-int/2addr v6, v11

    add-int/2addr v2, v6

    int-to-float v5, v14

    sub-float v6, v5, v7

    .line 240
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x40c00000    # 6.0f

    sub-float v3, v9, v17

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v5, v7, v5

    add-float/2addr v5, v9

    .line 241
    invoke-static {v5, v8, v9}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    const/16 v17, 0x0

    .line 242
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v13

    const/high16 v19, 0x41400000    # 12.0f

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v15

    move/from16 v20, v9

    iget v9, v0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    const/high16 v8, -0x80000000

    if-eq v9, v8, :cond_1

    if-gt v14, v9, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move/from16 v8, v20

    :goto_2
    invoke-static {v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-static {v13, v8, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 243
    iget-boolean v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    if-nez v8, :cond_2

    .line 244
    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->getTransparentColor(IF)I

    move-result v5

    .line 246
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    int-to-float v8, v12

    .line 248
    iget v9, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    div-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    invoke-static {v9, v13, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    iget-object v13, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8, v9, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v9, 0x40400000    # 3.0f

    if-eqz v14, :cond_5

    .line 250
    iget v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    div-int/2addr v5, v11

    sub-int v5, v2, v5

    iget v13, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    sub-int/2addr v5, v13

    iget v13, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    sub-int/2addr v5, v13

    .line 252
    iget v15, v0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    const/4 v4, -0x1

    if-eq v15, v4, :cond_4

    add-int/lit8 v4, v14, -0x1

    if-lt v4, v15, :cond_4

    int-to-float v4, v5

    .line 253
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v13

    .line 254
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v5

    const/high16 v13, 0x41500000    # 13.0f

    .line 255
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    div-float v13, v6, v13

    .line 256
    iget v15, v0, Lorg/telegram/ui/Components/SlideChooseView;->lastDash:I

    int-to-float v15, v15

    cmpl-float v15, v15, v13

    if-eqz v15, :cond_3

    const/high16 v15, 0x41000000    # 8.0f

    .line 257
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    mul-float/2addr v15, v13

    sub-float/2addr v6, v15

    sub-float v15, v13, v20

    div-float/2addr v6, v15

    .line 258
    iget-object v15, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    move/from16 v22, v9

    new-instance v9, Landroid/graphics/DashPathEffect;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v18

    new-array v1, v11, [F

    aput v18, v1, v17

    aput v6, v1, v16

    const/4 v6, 0x0

    invoke-direct {v9, v1, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    float-to-int v1, v13

    .line 259
    iput v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->lastDash:I

    goto :goto_3

    :cond_3
    move/from16 v22, v9

    :goto_3
    int-to-float v1, v4

    .line 261
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v1, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    move v5, v8

    move v9, v3

    move v3, v8

    const/high16 v21, 0x3f000000    # 0.5f

    move v8, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    move/from16 v22, v9

    const/high16 v21, 0x3f000000    # 0.5f

    move v9, v3

    move v3, v8

    move v8, v2

    sub-float v1, v6, v20

    .line 263
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v20, v2

    move/from16 v15, v20

    const/4 v4, 0x0

    invoke-static {v2, v4, v15}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 264
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v1, v15, v1

    invoke-static {v1, v4, v15}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    int-to-float v4, v13

    .line 265
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float/2addr v6, v1

    sub-float/2addr v4, v6

    float-to-int v1, v4

    int-to-float v4, v5

    .line 266
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    move v4, v2

    int-to-float v2, v4

    const/high16 v20, 0x3f800000    # 1.0f

    .line 267
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float v5, v3, v5

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v1, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    move v3, v5

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    move v8, v2

    move/from16 v21, v4

    move/from16 v22, v9

    move v9, v3

    .line 270
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    aget v2, v2, v14

    .line 271
    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    aget-object v3, v3, v14

    .line 272
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    if-eqz v6, :cond_6

    move/from16 v6, v20

    goto :goto_5

    :cond_6
    move/from16 v6, v21

    :goto_5
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->getTransparentColor(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41e00000    # 28.0f

    if-eqz v4, :cond_a

    .line 274
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    if-nez v14, :cond_7

    .line 276
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x41780000    # 15.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 277
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    const/high16 v9, 0x41480000    # 12.5f

    const/high16 v13, 0x41200000    # 10.0f

    if-ne v14, v4, :cond_8

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v4, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v4, v13

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v13, v9

    int-to-float v9, v13

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 280
    :cond_8
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v8, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v4, v13

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v13, v9

    int-to-float v9, v13

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v14

    iget-object v9, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v9, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v14

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 286
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    if-nez v14, :cond_9

    move/from16 v9, v22

    :cond_9
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v4, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    if-nez v14, :cond_b

    .line 290
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 291
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v14, v4, :cond_c

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 294
    :cond_c
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v8, v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 298
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move v8, v9

    move/from16 v9, v20

    goto/16 :goto_1

    :cond_e
    move/from16 v21, v4

    move/from16 v20, v9

    const/16 v17, 0x0

    const/high16 v18, 0x40c00000    # 6.0f

    const/high16 v19, 0x41400000    # 12.0f

    move v9, v8

    .line 302
    iget v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    mul-int/2addr v4, v11

    add-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    div-int/2addr v4, v11

    int-to-float v3, v4

    add-float/2addr v2, v3

    .line 303
    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v5

    const/16 v6, 0x50

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    if-eqz v6, :cond_f

    move/from16 v6, v20

    goto :goto_9

    :cond_f
    move/from16 v6, v21

    :goto_9
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->getTransparentColor(IF)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v12

    mul-float v10, v10, v19

    .line 304
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 305
    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v4

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    if-eqz v6, :cond_10

    move/from16 v6, v20

    goto :goto_a

    :cond_10
    move/from16 v6, v21

    :goto_a
    invoke-static {v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->getTransparentColor(IF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 308
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->needDivider:Z

    if-eqz v2, :cond_13

    .line 309
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x41a80000    # 21.0f

    if-eqz v2, :cond_11

    move v2, v9

    goto :goto_b

    :cond_11
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v8, v2

    move v2, v8

    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    goto :goto_c

    :cond_12
    move/from16 v13, v17

    :goto_c
    sub-int/2addr v5, v13

    int-to-float v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move/from16 v23, v4

    move v4, v3

    move/from16 v3, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 p2, 0x42940000    # 74.0f

    .line 225
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 226
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 227
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    const/high16 p1, 0x41b00000    # 22.0f

    .line 228
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v1, v0

    mul-int/2addr p2, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    mul-int/lit8 p2, p2, 0x2

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr p2, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    array-length p2, v0

    sub-int/2addr p2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 155
    iget v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v6, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 156
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3eb33333    # 0.35f

    cmpg-float v4, v4, v5

    const/4 v5, 0x0

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 158
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 160
    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    const/high16 v8, -0x80000000

    if-eq v6, v8, :cond_3

    int-to-float v6, v6

    .line 161
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 163
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 164
    iput v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    .line 165
    iput v2, p0, Lorg/telegram/ui/Components/SlideChooseView;->yTouchDown:F

    .line 166
    iput v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    .line 167
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMovingPreset:I

    .line 168
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 170
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 171
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-nez p1, :cond_5

    .line 172
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v6, p0, Lorg/telegram/ui/Components/SlideChooseView;->yTouchDown:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    if-eqz p1, :cond_6

    .line 177
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    .line 178
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    .line 179
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    .line 182
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-eqz p1, :cond_7

    .line 183
    iput v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 185
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq p1, v0, :cond_7

    if-eqz v4, :cond_7

    .line 186
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    .line 189
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 190
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 191
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-nez v0, :cond_a

    .line 192
    iput v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_b

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq p1, v0, :cond_b

    .line 194
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    goto :goto_1

    .line 197
    :cond_a
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMovingPreset:I

    if-eq p1, v0, :cond_b

    .line 198
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    .line 201
    :cond_b
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    if-eqz p1, :cond_c

    .line 202
    invoke-interface {p1}, Lorg/telegram/ui/Components/SlideChooseView$Callback;->onTouchEnd()V

    .line 204
    :cond_c
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    .line 205
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    :goto_2
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 321
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

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

.method public setAllowSlide(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->allowSlide:Z

    return-void
.end method

.method public setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    return-void
.end method

.method public setDashedFrom(I)V
    .locals 0

    .line 141
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    return-void
.end method

.method public setMinAllowedIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 131
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    if-eq v0, p1, :cond_2

    .line 132
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    .line 133
    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-ge v0, p1, :cond_1

    .line 134
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->needDivider:Z

    return-void
.end method

.method public varargs setOptions(I[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V
    .locals 4

    .line 112
    iput-object p3, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    .line 114
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    .line 115
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    const/4 p1, 0x0

    move p2, p1

    .line 116
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    iget-object v1, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    aget-object p3, p3, p2

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    aput p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 120
    array-length p3, p2

    move v0, p1

    :goto_1
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    .line 121
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public varargs setOptions(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V

    return-void
.end method
