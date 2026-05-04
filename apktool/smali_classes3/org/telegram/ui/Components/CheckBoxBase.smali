.class public Lorg/telegram/ui/Components/CheckBoxBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;
    }
.end annotation


# static fields
.field private static eraser:Landroid/graphics/Paint;

.field private static forbidPaint:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private alpha:F

.field public animationDuration:J

.field private attachedToWindow:Z

.field private background2ColorKey:I

.field private backgroundAlpha:F

.field private backgroundColor:I

.field private backgroundColorKey:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundType:I

.field public bounds:Landroid/graphics/Rect;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkColorKey:I

.field private checkPaint:Landroid/graphics/Paint;

.field public checkScale:F

.field private checkedText:Ljava/lang/String;

.field private circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

.field private cutCheck:Z

.field private drawUnchecked:Z

.field private enabled:Z

.field private forbidden:Z

.field private isChecked:Z

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private parentView:Landroid/view/View;

.field private path:Landroid/graphics/Path;

.field private progress:F

.field private progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private size:F

.field private strokeBackgroundKey:I

.field private strokeBackgroundWidth:I

.field private textPaint:Landroid/text/TextPaint;

.field private useDefaultCheck:Z


# direct methods
.method public static synthetic $r8$lambda$jYImu91pPxs1Bzccu4bB-G9Tg5s(Ljava/lang/Void;)Landroid/graphics/Paint;
    .locals 0

    .line 95
    sget-object p0, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckAnimator(Lorg/telegram/ui/Components/CheckBoxBase;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisChecked(Lorg/telegram/ui/Components/CheckBoxBase;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckAnimator(Lorg/telegram/ui/Components/CheckBoxBase;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckedText(Lorg/telegram/ui/Components/CheckBoxBase;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    .line 45
    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    .line 59
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    .line 65
    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    .line 73
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    .line 74
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    .line 75
    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    .line 76
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundWidth:I

    .line 83
    iput-boolean v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    .line 95
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    const-wide/16 v2, 0xc8

    .line 218
    iput-wide v2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    .line 102
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    int-to-float p1, p2

    .line 104
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    .line 105
    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    .line 113
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const p2, 0x3f99999a    # 1.2f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 220
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 221
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CheckBoxBase$1;-><init>(Lorg/telegram/ui/Components/CheckBoxBase;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private invalidate()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelCheckAnimator()V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    .line 303
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 305
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/high16 v9, 0x41200000    # 10.0f

    const/16 v10, 0xb

    const/16 v11, 0xd

    const/16 v12, 0xc

    if-eq v2, v12, :cond_2

    if-ne v2, v11, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    if-eq v2, v10, :cond_1

    const v2, 0x3e4ccccd    # 0.2f

    .line 309
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    move v13, v1

    move v14, v2

    goto :goto_2

    :cond_1
    :goto_0
    move v13, v1

    move v14, v13

    goto :goto_2

    .line 306
    :cond_2
    :goto_1
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    .line 313
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    :goto_3
    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v16

    if-ltz v2, :cond_4

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    div-float v2, v1, v16

    move/from16 v17, v2

    .line 316
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 319
    iget-boolean v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-eqz v4, :cond_5

    int-to-float v4, v2

    move v5, v2

    sub-float v2, v4, v13

    int-to-float v6, v3

    move v7, v3

    sub-float v3, v6, v13

    add-float/2addr v4, v13

    add-float/2addr v6, v13

    move/from16 v18, v5

    move v5, v6

    const/16 v6, 0xff

    move/from16 v19, v7

    const/16 v7, 0x1f

    move/from16 v20, v8

    move/from16 v9, v18

    move/from16 v15, v19

    const/high16 v19, 0x3f800000    # 1.0f

    move v8, v1

    move-object/from16 v1, p1

    .line 320
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_5

    :cond_5
    move v9, v2

    move v15, v3

    move/from16 v20, v8

    const/high16 v19, 0x3f800000    # 1.0f

    move v8, v1

    move-object/from16 v1, p1

    .line 323
    :goto_5
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    const/high16 v21, 0x437f0000    # 255.0f

    const v4, 0xffffff

    const/16 v5, 0xe

    const/16 v6, 0xa

    const/4 v10, 0x7

    const/4 v7, 0x6

    if-ltz v2, :cond_e

    .line 324
    iget-boolean v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v3, :cond_c

    .line 325
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-eq v3, v12, :cond_b

    if-ne v3, v11, :cond_6

    goto :goto_8

    :cond_6
    if-eq v3, v7, :cond_a

    if-ne v3, v10, :cond_7

    goto :goto_7

    :cond_7
    if-eq v3, v6, :cond_9

    if-ne v3, v5, :cond_8

    goto :goto_6

    .line 335
    :cond_8
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v3

    and-int/2addr v3, v4

    const/high16 v4, 0x28000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b

    .line 333
    :cond_9
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b

    .line 330
    :cond_a
    :goto_7
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b

    .line 326
    :cond_b
    :goto_8
    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b

    .line 339
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    if-ltz v3, :cond_d

    goto :goto_9

    :cond_d
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    :goto_9
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    iget v10, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    invoke-static {v4, v3, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 342
    :cond_e
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v2, :cond_10

    .line 343
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c80000    # 25.0f

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_f

    .line 345
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 347
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    const/4 v10, -0x1

    invoke-static {v10, v3, v8, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    .line 349
    :cond_10
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    if-eqz v2, :cond_11

    .line 350
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    .line 352
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v10, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    if-ltz v10, :cond_12

    goto :goto_a

    :cond_12
    iget v10, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    :goto_a
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v10

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    invoke-static {v4, v10, v8, v3}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    :goto_b
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v2, :cond_13

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ltz v2, :cond_13

    if-eq v2, v12, :cond_13

    if-ne v2, v11, :cond_14

    :cond_13
    :goto_c
    const/high16 v25, 0x3fc00000    # 1.5f

    goto :goto_f

    :cond_14
    const/16 v3, 0x8

    if-eq v2, v3, :cond_15

    if-eq v2, v6, :cond_15

    if-ne v2, v5, :cond_16

    :cond_15
    const/high16 v25, 0x3fc00000    # 1.5f

    goto :goto_e

    :cond_16
    if-eq v2, v7, :cond_18

    const/4 v3, 0x7

    if-ne v2, v3, :cond_17

    goto :goto_d

    :cond_17
    int-to-float v2, v9

    int-to-float v3, v15

    .line 365
    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_18
    :goto_d
    int-to-float v2, v9

    int-to-float v3, v15

    .line 362
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    const/high16 v25, 0x3fc00000    # 1.5f

    sget-object v10, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 363
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_f

    :goto_e
    int-to-float v2, v9

    int-to-float v3, v15

    .line 360
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 368
    :goto_f
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0x9

    const/4 v10, 0x1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    const/4 v4, 0x7

    if-eq v2, v4, :cond_22

    const/16 v4, 0x8

    if-eq v2, v4, :cond_22

    if-eq v2, v3, :cond_22

    if-eq v2, v6, :cond_22

    if-eq v2, v5, :cond_22

    if-eq v2, v12, :cond_19

    if-ne v2, v11, :cond_1a

    :cond_19
    move v12, v3

    const/4 v10, 0x0

    const/16 v24, 0x0

    goto/16 :goto_13

    :cond_1a
    if-eqz v2, :cond_1b

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1c

    :cond_1b
    move v12, v3

    const/4 v10, 0x0

    const/16 v24, 0x0

    goto/16 :goto_12

    .line 388
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v4, v9

    sub-float v3, v4, v14

    int-to-float v5, v15

    sub-float v6, v5, v14

    add-float/2addr v4, v14

    add-float/2addr v5, v14

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 391
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/high16 v3, -0x3c4c0000    # -360.0f

    if-ne v2, v7, :cond_1d

    mul-float/2addr v3, v8

    float-to-int v3, v3

    move v14, v3

    const/4 v3, 0x0

    goto :goto_10

    :cond_1d
    if-ne v2, v10, :cond_1e

    mul-float/2addr v3, v8

    float-to-int v3, v3

    const/16 v4, -0x5a

    move v14, v3

    move v3, v4

    goto :goto_10

    :cond_1e
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 400
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v5, 0x5a

    if-eqz v4, :cond_1f

    neg-int v3, v3

    :cond_1f
    move v14, v3

    move v3, v5

    :goto_10
    if-ne v2, v7, :cond_20

    .line 406
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    .line 407
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 408
    iget-object v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 410
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    move v5, v3

    int-to-float v3, v5

    int-to-float v4, v14

    move v6, v5

    const/4 v5, 0x0

    move/from16 v26, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    move/from16 v11, v26

    const/4 v10, 0x0

    const/16 v12, 0x9

    const/16 v24, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 411
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v1

    .line 412
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 413
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11

    :cond_20
    move v11, v3

    const/4 v10, 0x0

    const/16 v12, 0x9

    const/16 v24, 0x0

    .line 416
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v11

    int-to-float v4, v14

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_15

    :goto_12
    int-to-float v2, v9

    int-to-float v3, v15

    .line 386
    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_15

    .line 371
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 373
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 374
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 376
    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    .line 377
    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v4

    neg-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_14

    .line 381
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_14
    int-to-float v2, v9

    int-to-float v3, v15

    .line 383
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    iget v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 384
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_15

    :cond_22
    move v12, v3

    const/4 v10, 0x0

    const/16 v24, 0x0

    :goto_15
    cmpl-float v2, v17, v10

    if-lez v2, :cond_3c

    cmpg-float v2, v8, v16

    if-gez v2, :cond_23

    move v8, v10

    goto :goto_16

    :cond_23
    sub-float v2, v8, v16

    div-float v4, v2, v16

    move v8, v4

    .line 423
    :goto_16
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ne v2, v12, :cond_24

    .line 424
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    :cond_24
    const/16 v4, 0xb

    if-eq v2, v4, :cond_29

    if-eq v2, v7, :cond_29

    const/4 v3, 0x7

    if-eq v2, v3, :cond_29

    const/16 v3, 0xa

    if-eq v2, v3, :cond_29

    .line 425
    iget-boolean v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-nez v3, :cond_25

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    if-gez v3, :cond_29

    :cond_25
    const/16 v3, 0xe

    if-ne v2, v3, :cond_26

    goto :goto_18

    .line 427
    :cond_26
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    if-eqz v2, :cond_27

    .line 428
    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 430
    :cond_27
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    if-eqz v3, :cond_28

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    goto :goto_17

    :cond_28
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    :goto_17
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 426
    :cond_29
    :goto_18
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    :goto_19
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-eqz v2, :cond_2a

    .line 433
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1a

    .line 434
    :cond_2a
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    cmpg-float v2, v2, v19

    if-gez v2, :cond_2b

    .line 435
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    :cond_2b
    :goto_1a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    if-nez v2, :cond_2c

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    if-ltz v2, :cond_2c

    .line 438
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 440
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    :goto_1b
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    cmpg-float v2, v2, v19

    if-gez v2, :cond_2d

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    :cond_2d
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_31

    .line 447
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float v11, v2, v20

    .line 448
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    int-to-float v2, v9

    sub-float/2addr v2, v11

    int-to-float v3, v15

    sub-float/2addr v3, v11

    .line 449
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v5, v3

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move/from16 v22, v4

    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v14, v22

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 452
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2f

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2e

    goto :goto_1c

    .line 460
    :cond_2e
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v13, v3

    .line 461
    invoke-virtual {v1, v11, v11, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, v19, v17

    mul-float/2addr v13, v2

    .line 462
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v11, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1d

    .line 453
    :cond_2f
    :goto_1c
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    mul-float v4, v17, v21

    float-to-int v4, v4

    .line 454
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v13, v13, v17

    .line 455
    invoke-virtual {v1, v11, v11, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 456
    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-eq v2, v4, :cond_30

    .line 457
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 464
    :cond_30
    :goto_1d
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1e

    :cond_31
    move v14, v4

    .line 467
    :goto_1e
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    const/high16 v3, 0x41100000    # 9.0f

    const/4 v4, 0x2

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v2, :cond_33

    .line 468
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_32

    .line 469
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    .line 470
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 472
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 473
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const v7, 0x3f28f5c3    # 0.66f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    new-array v4, v4, [F

    aput v7, v4, v24

    const/16 v23, 0x1

    aput v5, v4, v23

    invoke-direct {v6, v4, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 475
    :cond_32
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    const v4, 0x3fd47ae1    # 1.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v9

    int-to-float v4, v15

    .line 477
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_24

    :cond_33
    cmpl-float v2, v8, v10

    if-eqz v2, :cond_3c

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 480
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_34

    .line 481
    new-instance v2, Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    .line 482
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1f

    :cond_34
    const/4 v6, 0x1

    .line 485
    :goto_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_36

    if-eq v2, v6, :cond_36

    if-eq v2, v4, :cond_36

    const/4 v3, 0x3

    if-eq v2, v3, :cond_35

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x417c0000    # 15.75f

    goto :goto_20

    :cond_35
    const/high16 v3, 0x41840000    # 16.5f

    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_20

    :cond_36
    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41900000    # 18.0f

    .line 500
    :goto_20
    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 501
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v9

    int-to-float v4, v15

    move/from16 v5, v19

    .line 503
    invoke-virtual {v1, v8, v5, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float v5, v5, v20

    sub-float/2addr v2, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 505
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_24

    :cond_37
    const/4 v6, 0x1

    .line 507
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 509
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ne v2, v14, :cond_38

    const v2, 0x3fb33333    # 1.4f

    goto :goto_21

    :cond_38
    const/4 v4, 0x5

    if-ne v2, v4, :cond_39

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_21

    :cond_39
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_21
    mul-float/2addr v3, v2

    .line 514
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    mul-float/2addr v2, v5

    .line 515
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    .line 516
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    .line 517
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v15

    mul-float/2addr v2, v2

    div-float v2, v2, v20

    float-to-double v7, v2

    .line 518
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 519
    iget-object v7, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    int-to-float v4, v4

    sub-float v8, v4, v2

    int-to-float v5, v5

    sub-float v2, v5, v2

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v3, v3

    div-float v3, v3, v20

    float-to-double v2, v3

    .line 521
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 522
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    add-float/2addr v4, v2

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-nez v2, :cond_3b

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v19

    if-eqz v2, :cond_3a

    goto :goto_22

    :cond_3a
    move/from16 v3, v24

    goto :goto_23

    .line 525
    :cond_3b
    :goto_22
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 526
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    int-to-float v3, v9

    int-to-float v4, v15

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v3, v6

    .line 529
    :goto_23
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v3, :cond_3c

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 536
    :cond_3c
    :goto_24
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-eqz v2, :cond_3d

    .line 537
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    return-void
.end method

.method public getDrawUnchecked()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 184
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    .line 48
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    .line 268
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 255
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    .line 256
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBackgroundType(I)V
    .locals 4

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x5

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    .line 200
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3ff33333    # 1.9f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-ne p1, v2, :cond_4

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_4
    return-void

    .line 198
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 137
    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    .line 138
    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    .line 139
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setChecked(IZZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    .line 289
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    if-ne p2, p1, :cond_1

    return-void

    .line 292
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    .line 294
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 295
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->animateToCheckedState(Z)V

    return-void

    .line 297
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->cancelCheckAnimator()V

    if-eqz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CheckBoxBase;->setProgress(F)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    const/4 v0, -0x1

    .line 281
    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(IZZ)V

    return-void
.end method

.method public setCirclePaintProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 238
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    .line 239
    iput p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    .line 240
    iput p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    .line 241
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setCuttingCheck(Z)V
    .locals 2

    .line 53
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 54
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDrawUnchecked(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    return-void
.end method

.method public setForbidden(Z)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 166
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    .line 167
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setNum(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    .line 277
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 152
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    .line 156
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;->setProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setStrokeBackgroundColor(I)V
    .locals 0

    .line 245
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    .line 246
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setUseDefaultCheck(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    return-void
.end method
