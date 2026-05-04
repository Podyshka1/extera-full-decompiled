.class public Lorg/telegram/ui/Components/PhotoFilterBlurControl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;,
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;
    }
.end annotation


# static fields
.field private static final BlurInsetProximity:F

.field private static final BlurViewCenterInset:F

.field private static final BlurViewRadiusInset:F


# instance fields
.field private final GestureStateBegan:I

.field private final GestureStateCancelled:I

.field private final GestureStateChanged:I

.field private final GestureStateEnded:I

.field private final GestureStateFailed:I

.field private activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field private actualAreaSize:Lorg/telegram/ui/Components/Size;

.field private angle:F

.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field private centerPoint:Lorg/telegram/ui/Components/Point;

.field private checkForMoving:Z

.field private checkForZooming:Z

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

.field private falloff:F

.field private inBubbleMode:Z

.field private isMoving:Z

.field private isZooming:Z

.field private paint:Landroid/graphics/Paint;

.field private pointerScale:F

.field private pointerStartX:F

.field private pointerStartY:F

.field private size:F

.field private startCenterPoint:Lorg/telegram/ui/Components/Point;

.field private startDistance:F

.field private startPointerDistance:F

.field private startRadius:F

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 31
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    .line 32
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateBegan:I

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateChanged:I

    const/4 v1, 0x3

    .line 45
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateEnded:I

    const/4 v1, 0x4

    .line 46
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateCancelled:I

    const/4 v1, 0x5

    .line 47
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateFailed:I

    .line 50
    new-instance v1, Lorg/telegram/ui/Components/Point;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    .line 53
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    .line 54
    new-instance v1, Lorg/telegram/ui/Components/Point;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    const v1, 0x3e19999a    # 0.15f

    .line 55
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v1, 0x3eb33333    # 0.35f

    .line 56
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 66
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    instance-of p1, p1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    return-void
.end method

.method private degreesToRadians(F)F
    .locals 1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getActualCenterPoint()Lorg/telegram/ui/Components/Point;
    .locals 7

    .line 502
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float v5, v4, v6

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private getActualInnerRadius()F
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getActualOuterRadius()F
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 207
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 208
    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v5, v2, v5

    .line 209
    iget v6, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float v6, v3, v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 210
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 211
    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v9, v8, Lorg/telegram/ui/Components/Size;->width:F

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 212
    iget v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float/2addr v9, v8

    .line 213
    iget v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float/2addr v10, v8

    float-to-double v11, v5

    .line 214
    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v5

    float-to-double v13, v5

    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    float-to-double v5, v6

    iget v13, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v13

    float-to-double v13, v13

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_19

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v13, 0x2

    if-eq v1, v13, :cond_1

    if-eq v1, v10, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-eq v1, v9, :cond_0

    goto/16 :goto_6

    .line 383
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 384
    invoke-direct {v0, v6, v12}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    return-void

    .line 259
    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const v14, 0x3dcccccd    # 0.1f

    const v15, 0x3ca3d70a    # 0.02f

    const/high16 v16, 0x40000000    # 2.0f

    if-nez v1, :cond_12

    .line 260
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v12, :cond_10

    if-eq v1, v13, :cond_f

    if-eq v1, v10, :cond_e

    if-eq v1, v9, :cond_2

    goto/16 :goto_5

    .line 283
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float v1, v2, v1

    .line 284
    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v5, v3, v5

    .line 288
    iget v7, v4, Lorg/telegram/ui/Components/Point;->x:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    move v7, v12

    goto :goto_0

    :cond_3
    move v7, v6

    .line 289
    :goto_0
    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    move v4, v12

    goto :goto_1

    :cond_4
    move v4, v6

    .line 291
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    move v8, v12

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    if-nez v7, :cond_7

    if-nez v4, :cond_7

    if-eqz v8, :cond_6

    cmpg-float v4, v5, v11

    if-gez v4, :cond_d

    :goto_3
    move v6, v12

    goto :goto_4

    :cond_6
    cmpl-float v4, v1, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_9

    if-nez v4, :cond_9

    if-eqz v8, :cond_8

    cmpl-float v4, v5, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_8
    cmpl-float v4, v1, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_b

    if-eqz v4, :cond_b

    if-eqz v8, :cond_a

    cmpl-float v4, v5, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_a
    cmpg-float v4, v1, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_b
    if-eqz v8, :cond_c

    cmpg-float v4, v5, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_c
    cmpg-float v4, v1, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_d
    :goto_4
    mul-float/2addr v1, v1

    mul-float/2addr v5, v5

    add-float/2addr v1, v5

    float-to-double v4, v1

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 335
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    mul-int/2addr v6, v13

    sub-int/2addr v6, v12

    int-to-float v5, v6

    mul-float/2addr v1, v5

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v5

    const v5, 0x3f933333    # 1.15f

    div-float/2addr v1, v5

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    .line 337
    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    .line 338
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    goto/16 :goto_5

    .line 277
    :cond_e
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v5, v1

    .line 278
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    add-float/2addr v1, v15

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v2, v5

    div-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_5

    .line 271
    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v5, v1

    .line 272
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v1, v5

    div-float/2addr v1, v8

    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    sub-float/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_5

    .line 262
    :cond_10
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float/2addr v2, v1

    .line 263
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float/2addr v3, v1

    .line 264
    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v4, v5

    div-float v4, v4, v16

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v5, :cond_11

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_11
    int-to-float v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v8

    div-float v6, v6, v16

    add-float/2addr v5, v6

    iget v6, v7, Lorg/telegram/ui/Components/Size;->width:F

    invoke-direct {v1, v4, v5, v6, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    .line 265
    new-instance v4, Lorg/telegram/ui/Components/Point;

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 266
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v4, v1

    iget v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float v1, v6, v1

    div-float v1, v1, v16

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_5

    :cond_12
    if-ne v1, v12, :cond_17

    .line 346
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v12, :cond_15

    if-eq v1, v13, :cond_14

    if-eq v1, v10, :cond_13

    goto/16 :goto_5

    .line 363
    :cond_13
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v7, v1

    .line 364
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    add-float/2addr v1, v15

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v2, v7

    div-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_5

    .line 357
    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v7, v1

    .line 358
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v1, v7

    div-float/2addr v1, v8

    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    sub-float/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto :goto_5

    .line 348
    :cond_15
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float/2addr v2, v1

    .line 349
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float/2addr v3, v1

    .line 350
    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v4, v5

    div-float v4, v4, v16

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v5, :cond_16

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_16
    int-to-float v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v8

    div-float v6, v6, v16

    add-float/2addr v5, v6

    iget v6, v7, Lorg/telegram/ui/Components/Size;->width:F

    invoke-direct {v1, v4, v5, v6, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    .line 351
    new-instance v4, Lorg/telegram/ui/Components/Point;

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 352
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v4, v1

    iget v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float v1, v6, v1

    div-float v1, v1, v16

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    .line 372
    :cond_17
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz v1, :cond_18

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v5

    const v6, 0x3fc90fdb

    add-float/2addr v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    :cond_18
    :goto_6
    return-void

    .line 218
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v1, v10, v9

    .line 221
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1a

    move v6, v12

    :cond_1a
    if-eqz v6, :cond_1b

    move v1, v11

    goto :goto_7

    .line 222
    :cond_1b
    sget v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_7
    if-eqz v6, :cond_1c

    goto :goto_8

    .line 223
    :cond_1c
    sget v11, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    .line 225
    :goto_8
    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v2, :cond_21

    .line 226
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_1d

    .line 227
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 228
    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_9

    .line 229
    :cond_1d
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v3, v9, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1e

    add-float/2addr v1, v9

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1e

    .line 230
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 231
    iput v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 232
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_9

    :cond_1e
    sub-float v1, v10, v11

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1f

    add-float v1, v10, v2

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1f

    .line 234
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 235
    iput v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 236
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_9

    :cond_1f
    sub-float/2addr v9, v2

    cmpg-float v1, v5, v9

    if-lez v1, :cond_20

    add-float/2addr v10, v2

    cmpl-float v1, v5, v10

    if-ltz v1, :cond_24

    .line 238
    :cond_20
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    goto :goto_9

    :cond_21
    if-ne v2, v12, :cond_24

    .line 241
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_22

    .line 242
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 243
    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_9

    .line 244
    :cond_22
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v3, v9, v2

    cmpl-float v3, v7, v3

    if-lez v3, :cond_23

    add-float/2addr v1, v9

    cmpg-float v1, v7, v1

    if-gez v1, :cond_23

    .line 245
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 246
    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 247
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_9

    :cond_23
    sub-float v1, v10, v11

    cmpl-float v1, v7, v1

    if-lez v1, :cond_24

    add-float/2addr v2, v10

    cmpg-float v1, v7, v2

    if-gez v1, :cond_24

    .line 249
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 250
    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 251
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    .line 254
    :cond_24
    :goto_9
    invoke-direct {v0, v12, v12}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    return-void
.end method

.method private handlePinch(ILandroid/view/MotionEvent;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const/4 p1, 0x0

    .line 424
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    return-void

    .line 397
    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    .line 398
    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 399
    sget-object p1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 400
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    .line 403
    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    .line 404
    iget p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    sub-float v1, p1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 406
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float/2addr v1, p2

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v1, 0x3ca3d70a    # 0.02f

    add-float/2addr p2, v1

    .line 407
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    .line 409
    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 410
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz p1, :cond_3

    .line 415
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v2

    const v3, 0x3fc90fdb

    add-float/2addr v2, v3

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSelected(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 451
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 452
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    .line 453
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v7

    .line 454
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v8

    .line 455
    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/16 v9, 0x40

    const/4 v10, 0x0

    if-nez v2, :cond_2

    .line 458
    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v11, 0x40c00000    # 6.0f

    .line 460
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v12, v2

    const/high16 v2, 0x41400000    # 12.0f

    .line 461
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v13, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 462
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    move v15, v10

    :goto_0
    const/16 v2, 0x1e

    if-ge v15, v2, :cond_0

    int-to-float v2, v15

    add-float v16, v13, v12

    mul-float v2, v2, v16

    neg-float v3, v7

    add-float v4, v2, v13

    sub-float v5, v14, v7

    .line 464
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v17, v2

    move/from16 v18, v4

    neg-int v1, v15

    int-to-float v1, v1

    mul-float v1, v1, v16

    sub-float v4, v1, v12

    sub-float v2, v4, v13

    .line 467
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v19, v2

    move/from16 v16, v4

    add-float v5, v14, v7

    .line 469
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move v3, v7

    move/from16 v2, v17

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 470
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move/from16 v4, v16

    move/from16 v2, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v7, v1

    :goto_1
    if-ge v10, v9, :cond_1

    int-to-float v1, v10

    add-float v11, v7, v12

    mul-float v2, v1, v11

    neg-float v3, v8

    add-float v4, v7, v2

    sub-float v5, v14, v8

    .line 475
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v13, v2

    move v15, v4

    neg-int v1, v10

    int-to-float v1, v1

    mul-float/2addr v1, v11

    sub-float v4, v1, v12

    sub-float v2, v4, v7

    .line 478
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v16, v2

    move v11, v4

    add-float v5, v14, v8

    .line 480
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move v3, v8

    move v2, v13

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 481
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move v4, v11

    move/from16 v2, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    goto :goto_4

    :cond_2
    move v3, v7

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 486
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v2, v3

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move v7, v10

    :goto_2
    const/16 v1, 0x16

    if-ge v7, v1, :cond_3

    .line 488
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v1, v7

    const v3, 0x4182cccd    # 16.35f

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const v4, 0x41233333    # 10.2f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 493
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v2, v8

    invoke-virtual {v1, v2, v2, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    if-ge v10, v9, :cond_1

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v1, v10

    const v3, 0x40b3d70a    # 5.62f

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const v4, 0x40666666    # 3.6f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :goto_4
    const/high16 v2, 0x41000000    # 8.0f

    .line 498
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto/16 :goto_5

    .line 194
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_1

    .line 195
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 196
    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v2, :cond_14

    .line 197
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 181
    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_3

    .line 182
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 183
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v2, :cond_4

    .line 185
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 186
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    .line 188
    :cond_4
    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 189
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    goto/16 :goto_5

    .line 120
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v6, :cond_11

    .line 121
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-nez v2, :cond_14

    .line 122
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 123
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 124
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 125
    new-instance v7, Lorg/telegram/ui/Components/Point;

    iget v8, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v2, v8

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v7, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 126
    iget v2, v7, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v2, v2

    iget v3, v7, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 127
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v3

    .line 128
    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v4

    sub-float v8, v4, v3

    .line 129
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sget v9, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    move v8, v6

    goto :goto_1

    :cond_6
    move v8, v5

    :goto_1
    const/4 v9, 0x0

    if-eqz v8, :cond_7

    move v10, v9

    goto :goto_2

    .line 130
    :cond_7
    sget v10, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_2
    if-eqz v8, :cond_8

    goto :goto_3

    .line 131
    :cond_8
    sget v9, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    .line 133
    :goto_3
    iget v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v8, :cond_d

    .line 134
    iget v8, v7, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v11, v8

    iget v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v8

    float-to-double v13, v8

    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v7, v7

    iget v13, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v13

    float-to-double v13, v13

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 135
    sget v8, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_9

    .line 136
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 137
    :cond_9
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v8, v3, v2

    cmpl-float v8, v7, v8

    if-lez v8, :cond_a

    add-float/2addr v10, v3

    cmpg-float v8, v7, v10

    if-gez v8, :cond_a

    .line 138
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_a
    sub-float v8, v4, v9

    cmpl-float v8, v7, v8

    if-lez v8, :cond_b

    add-float v8, v4, v2

    cmpg-float v8, v7, v8

    if-gez v8, :cond_b

    .line 140
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_b
    sub-float/2addr v3, v2

    cmpg-float v3, v7, v3

    if-lez v3, :cond_c

    add-float/2addr v4, v2

    cmpl-float v2, v7, v4

    if-ltz v2, :cond_10

    .line 142
    :cond_c
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_d
    if-ne v8, v6, :cond_10

    .line 145
    sget v7, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_e

    .line 146
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 147
    :cond_e
    sget v7, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v8, v3, v7

    cmpl-float v8, v2, v8

    if-lez v8, :cond_f

    add-float/2addr v3, v10

    cmpg-float v3, v2, v3

    if-gez v3, :cond_f

    .line 148
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_f
    sub-float v3, v4, v9

    cmpl-float v3, v2, v3

    if-lez v3, :cond_10

    add-float/2addr v4, v7

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    .line 150
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    .line 153
    :cond_10
    :goto_4
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 154
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_14

    .line 155
    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_5

    .line 159
    :cond_11
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_12

    .line 160
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 161
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 162
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    .line 164
    :cond_12
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_13

    .line 165
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-nez v2, :cond_14

    .line 166
    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 167
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto :goto_5

    .line 170
    :cond_13
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 171
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    .line 172
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    :cond_14
    :goto_5
    return v6
.end method

.method public setActualAreaSize(FF)V
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 446
    iput p2, v0, Lorg/telegram/ui/Components/Size;->height:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 90
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
