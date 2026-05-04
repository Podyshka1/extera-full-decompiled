.class public Lorg/telegram/ui/Components/SnowflakesEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SnowflakesEffect$Particle;
    }
.end annotation


# instance fields
.field private final batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

.field private final batchParticlesPaint:Landroid/graphics/Paint;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private color:I

.field private colorKey:I

.field private forcedColor:I

.field private final freeParticles:Ljava/util/ArrayList;

.field private lastAnimationTime:J

.field private final maxCount:I

.field public occupyStatusBar:Z

.field particleBitmap:Landroid/graphics/Bitmap;

.field private final particlePaint:Landroid/graphics/Paint;

.field private final particleThinPaint:Landroid/graphics/Paint;

.field private final particles:Ljava/util/ArrayList;

.field private final viewType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbitmapPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->bitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticlePaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particlePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticleThinPaint(Lorg/telegram/ui/Components/SnowflakesEffect;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleThinPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateParticlesBitmap(Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SnowflakesEffect;->createParticlesBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->bitmapPaint:Landroid/graphics/Paint;

    .line 35
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    iput v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->colorKey:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->occupyStatusBar:Z

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    if-nez p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    .line 95
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->maxCount:I

    .line 96
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particlePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    .line 97
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleThinPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    invoke-static {}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->isAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    .line 108
    invoke-static {v0}, Lorg/telegram/ui/Components/SnowflakesEffect;->createParticlesBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->createBatchParticlesPaint(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 110
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    .line 111
    iput-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesPaint:Landroid/graphics/Paint;

    .line 114
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SnowflakesEffect;->updateColors()V

    const/4 p1, 0x0

    :goto_2
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;-><init>(Lorg/telegram/ui/Components/SnowflakesEffect;Lorg/telegram/ui/Components/SnowflakesEffect-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static createParticlesBitmap(Z)Landroid/graphics/Bitmap;
    .locals 29

    .line 263
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 264
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 266
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v7, -0x1

    .line 267
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p0, :cond_0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 269
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 270
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 271
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float v9, v2, v1

    const v2, 0x3f11eb85    # 0.57f

    .line 272
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    mul-float v10, v2, v1

    const v2, 0x3fc66666    # 1.55f

    .line 273
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float v11, v2, v1

    const/high16 v12, 0x40a00000    # 5.0f

    .line 274
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 275
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x4036f025

    const/4 v4, 0x0

    move v13, v3

    move v14, v4

    :goto_1
    const/4 v3, 0x6

    if-ge v14, v3, :cond_1

    float-to-double v3, v13

    move v15, v12

    move/from16 v16, v13

    .line 280
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v9

    move-object/from16 v17, v8

    .line 281
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v9

    const v8, 0x3f28f5c3    # 0.66f

    mul-float v18, v12, v8

    mul-float/2addr v8, v7

    add-float/2addr v12, v1

    add-float/2addr v7, v2

    move-wide/from16 v19, v3

    move v4, v7

    move v3, v12

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v7, v1

    move v12, v2

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v3, v19, v1

    double-to-float v1, v3

    float-to-double v1, v1

    .line 287
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 v19, v14

    float-to-double v13, v10

    mul-double/2addr v3, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v23, v7

    float-to-double v6, v11

    mul-double v21, v21, v6

    sub-double v3, v3, v21

    double-to-float v3, v3

    .line 288
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v6

    move-object v4, v0

    move-wide/from16 v26, v1

    add-double v0, v21, v24

    double-to-float v0, v0

    add-float v1, v23, v18

    add-float v2, v12, v8

    add-float v3, v23, v3

    add-float/2addr v0, v12

    move-object/from16 v28, v4

    move v4, v0

    move-object/from16 v0, v28

    .line 289
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    neg-double v3, v3

    mul-double/2addr v3, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v6

    sub-double v3, v3, v21

    double-to-float v3, v3

    move-object v4, v0

    move v8, v1

    .line 292
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v0, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v6

    add-double/2addr v0, v13

    double-to-float v0, v0

    add-float v3, v23, v3

    add-float/2addr v0, v12

    move-object v1, v4

    move v4, v0

    move-object v0, v1

    move v1, v8

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v1, 0x3f860a92

    add-float v13, v16, v1

    add-int/lit8 v14, v19, 0x1

    move v2, v12

    move v12, v15

    move-object/from16 v8, v17

    move/from16 v1, v23

    const/4 v6, 0x1

    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v17, v8

    move v15, v12

    if-eqz p0, :cond_2

    .line 299
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 300
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 302
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v13, -0x1

    .line 303
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 304
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    return-object v17
.end method

.method private updateParticles(J)V
    .locals 8

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    .line 144
    iget v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->currentTime:F

    iget v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->lifeTime:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_1

    .line 145
    iget-object v3, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 153
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    const/high16 v6, 0x43480000    # 200.0f

    if-nez v5, :cond_3

    cmpg-float v5, v3, v6

    if-gez v5, :cond_2

    .line 155
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    div-float/2addr v3, v6

    invoke-virtual {v4, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    goto :goto_1

    .line 157
    :cond_2
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float/2addr v3, v6

    sub-float/2addr v4, v6

    div-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    goto :goto_1

    :cond_3
    cmpg-float v5, v3, v6

    if-gez v5, :cond_4

    .line 161
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    div-float/2addr v3, v6

    invoke-virtual {v4, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    goto :goto_1

    :cond_4
    sub-float v5, v4, v3

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 163
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float/2addr v4, v3

    div-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    .line 166
    :cond_5
    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->vx:F

    iget v5, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->velocity:F

    mul-float/2addr v4, v5

    long-to-float v6, p1

    mul-float/2addr v4, v6

    const/high16 v7, 0x43fa0000    # 500.0f

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    .line 167
    iget v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    iget v4, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->vy:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    .line 168
    iget v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->currentTime:F

    add-float/2addr v3, v6

    iput v3, v2, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->currentTime:F

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_e

    if-eqz v1, :cond_e

    const/16 v2, 0x20

    .line 173
    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 177
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 178
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 179
    iget v5, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v3, :cond_1

    div-float/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3df5c28f    # 0.12f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 180
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->maxCount:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 181
    iget v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 183
    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 184
    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v7, 0x41200000    # 10.0f

    .line 185
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move v9, v6

    :goto_1
    if-ge v9, v4, :cond_5

    .line 188
    iget-object v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    .line 189
    iget v10, v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    iget v11, v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    .line 190
    iget v12, v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->type:I

    const/high16 v13, 0x40000000    # 2.0f

    int-to-float v14, v7

    div-float/2addr v14, v13

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    iget v13, v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->scale:F

    mul-float/2addr v14, v13

    :goto_2
    if-nez v12, :cond_4

    int-to-float v12, v7

    move v15, v12

    goto :goto_3

    :cond_4
    move v15, v5

    .line 193
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    iget v13, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->color:I

    const/high16 v16, 0x437f0000    # 255.0f

    iget v8, v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    mul-float v8, v8, v16

    float-to-int v8, v8

    invoke-static {v13, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-virtual {v12, v9, v8}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;->setParticleColor(II)V

    .line 194
    iget-object v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    move v12, v10

    sub-float v10, v12, v14

    move v13, v11

    sub-float v11, v13, v14

    add-float/2addr v12, v14

    add-float/2addr v13, v14

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;->setParticleVertexCords(IFFFF)V

    .line 195
    iget-object v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    int-to-float v13, v7

    add-float v12, v15, v13

    const/4 v11, 0x0

    move v10, v15

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;->setParticleTextureCords(IFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 197
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesBuffer:Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;

    iget-object v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->batchParticlesPaint:Landroid/graphics/Paint;

    invoke-static {v1, v7, v4, v8}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BatchParticlesDrawHelper$BatchParticlesBuffer;ILandroid/graphics/Paint;)V

    goto :goto_5

    .line 199
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :goto_4
    if-ge v7, v4, :cond_7

    .line 201
    iget-object v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    .line 202
    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 206
    :cond_7
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_d

    move v1, v6

    :goto_6
    if-ge v1, v3, :cond_d

    .line 208
    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v2, :cond_c

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v7, 0x3f333333    # 0.7f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_c

    .line 209
    iget-boolean v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->occupyStatusBar:Z

    if-eqz v4, :cond_8

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_7

    :cond_8
    move v4, v6

    .line 210
    :goto_7
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    .line 212
    iget v8, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    const/high16 v9, 0x41a00000    # 20.0f

    if-nez v8, :cond_9

    int-to-float v8, v4

    .line 213
    sget-object v10, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v4

    int-to-float v4, v11

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    goto :goto_8

    .line 215
    :cond_9
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    .line 218
    :goto_8
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v10, 0x28

    invoke-virtual {v4, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    int-to-double v12, v4

    mul-double/2addr v12, v10

    .line 219
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v4, v10

    .line 220
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 223
    iget-object v11, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 224
    iget-object v11, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    .line 225
    iget-object v12, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 227
    :cond_a
    new-instance v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12}, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;-><init>(Lorg/telegram/ui/Components/SnowflakesEffect;Lorg/telegram/ui/Components/SnowflakesEffect-IA;)V

    .line 229
    :goto_9
    iput v7, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->x:F

    .line 230
    iput v8, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->y:F

    .line 232
    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->vx:F

    .line 233
    iput v10, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->vy:F

    .line 235
    iput v5, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->alpha:F

    .line 236
    iput v5, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->currentTime:F

    .line 238
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v7

    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->scale:F

    .line 239
    iput v6, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->type:I

    .line 240
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->paintType:I

    .line 242
    iget v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->viewType:I

    const/16 v7, 0x7d0

    if-nez v4, :cond_b

    .line 243
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v8, 0x64

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->lifeTime:F

    goto :goto_a

    .line 245
    :cond_b
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0xbb8

    int-to-float v4, v4

    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->lifeTime:F

    .line 247
    :goto_a
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v4, v7

    add-float/2addr v4, v9

    iput v4, v11, Lorg/telegram/ui/Components/SnowflakesEffect$Particle;->velocity:F

    .line 248
    iget-object v4, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 253
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 254
    iget-wide v3, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->lastAnimationTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x11

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 255
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/SnowflakesEffect;->updateParticles(J)V

    .line 256
    iput-wide v1, v0, Lorg/telegram/ui/Components/SnowflakesEffect;->lastAnimationTime:J

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_b
    return-void
.end method

.method public setForcedColor(I)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->forcedColor:I

    .line 123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SnowflakesEffect;->updateColors()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 132
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->forcedColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->colorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, -0x19191a

    and-int/2addr v0, v1

    .line 133
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->color:I

    if-eq v1, v0, :cond_1

    .line 134
    iput v0, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->color:I

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Components/SnowflakesEffect;->particleThinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method
