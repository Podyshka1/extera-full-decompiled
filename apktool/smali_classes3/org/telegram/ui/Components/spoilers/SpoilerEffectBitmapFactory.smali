.class public Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static factory:Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;


# instance fields
.field backgroundBitmap:Landroid/graphics/Bitmap;

.field bufferBitmap:Landroid/graphics/Bitmap;

.field final dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field isRunning:Z

.field lastUpdateTime:J

.field localMatrix:Landroid/graphics/Matrix;

.field private shaderBitmap:Landroid/graphics/Bitmap;

.field shaderCanvas:Landroid/graphics/Canvas;

.field shaderPaint:Landroid/graphics/Paint;

.field shaderSpoilerEffects:Ljava/util/ArrayList;

.field size:I


# direct methods
.method public static synthetic $r8$lambda$jjtp6gP-suaE-jlwFkRGv4i8PNY(Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->lambda$checkUpdate$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7I6gMMfEzlOdPYWxik8GLhBY0I(Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->lambda$checkUpdate$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "SpoilerEffectBitmapFactory"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;ZI)V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->localMatrix:Landroid/graphics/Matrix;

    .line 42
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x43160000    # 150.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    .line 43
    :goto_1
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    const/high16 v1, 0x42a00000    # 80.0f

    .line 44
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 45
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;
    .locals 1

    .line 23
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->factory:Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->factory:Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    .line 26
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->factory:Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    return-object v0
.end method

.method private synthetic lambda$checkUpdate$0(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->bufferBitmap:Landroid/graphics/Bitmap;

    .line 111
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->isRunning:Z

    return-void
.end method

.method private synthetic lambda$checkUpdate$1(Landroid/graphics/Bitmap;)V
    .locals 8

    if-nez p1, :cond_0

    .line 92
    iget p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 95
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->backgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 99
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move v3, v1

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    .line 103
    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderSpoilerEffects:Ljava/util/ArrayList;

    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 4

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->isRunning:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->isRunning:Z

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->bufferBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method getPaint()Landroid/graphics/Paint;
    .locals 13

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 52
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    .line 53
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderCanvas:Landroid/graphics/Canvas;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderSpoilerEffects:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    int-to-float v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x43480000    # 200.0f

    .line 58
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    .line 61
    new-instance v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    .line 62
    iget v7, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->size:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setSize(I)V

    mul-int v7, v1, v3

    mul-int v8, v1, v5

    const/high16 v9, 0x40a00000    # 5.0f

    .line 63
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v8, v10

    add-int v11, v7, v1

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v10, v11, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    const/4 v7, 0x1

    .line 64
    iput-boolean v7, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->drawPoints:Z

    .line 65
    sget v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    mul-int/lit8 v7, v7, 0x5

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setMaxParticlesCount(I)V

    const/4 v7, -0x1

    .line 66
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 67
    iget-object v7, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderSpoilerEffects:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_3

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_2

    .line 73
    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderSpoilerEffects:Ljava/util/ArrayList;

    mul-int/lit8 v5, v0, 0xa

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->lastUpdateTime:J

    .line 80
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->shaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method
