.class public Lorg/telegram/ui/Components/MotionBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static errorWhileGenerateLegacyBitmap:Z

.field private static legacyBitmapScale:F

.field private static final useLegacyBitmap:Z

.field private static final useSoftLight:Z


# instance fields
.field private alpha:I

.field private animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

.field private backgroundAlpha:F

.field private bitmapGiftShader:Landroid/graphics/BitmapShader;

.field private bitmapHeight:I

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapWidth:I

.field private colors:[I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private disableGradientShaderScaling:Z

.field private fastAnimation:Z

.field private giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private giftPatternPositions:Ljava/util/List;

.field private giftPosition:I

.field private gradientCanvas:Landroid/graphics/Canvas;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private gradientFromBitmap:Landroid/graphics/Bitmap;

.field private gradientFromCanvas:Landroid/graphics/Canvas;

.field private gradientGiftShader:Landroid/graphics/BitmapShader;

.field private gradientShader:Landroid/graphics/BitmapShader;

.field private gradientToBitmap:[Landroid/graphics/Bitmap;

.field private ignoreInterpolator:Z

.field private indeterminateSpeedScale:F

.field private intensity:I

.field private final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidateLegacy:Z

.field public isAttached:Z

.field private isIndeterminateAnimation:Z

.field public isPreview:Z

.field private lastUpdateTime:J

.field private legacyBitmap:Landroid/graphics/Bitmap;

.field private legacyBitmap2:Landroid/graphics/Bitmap;

.field private legacyBitmapColor:I

.field private legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

.field private legacyCanvas:Landroid/graphics/Canvas;

.field private legacyCanvas2:Landroid/graphics/Canvas;

.field private final legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

.field private final legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

.field private overrideBitmapPaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private final paint2Gift:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private parentView:Ljava/lang/ref/WeakReference;

.field private patternAlpha:F

.field private patternBitmap:Landroid/graphics/Bitmap;

.field private patternBounds:Landroid/graphics/Rect;

.field private patternColor:I

.field private patternColorFilter:Landroid/graphics/ColorFilter;

.field private patternGiftBitmap:Landroid/graphics/Bitmap;

.field private phase:I

.field public posAnimationProgress:F

.field private postInvalidateParent:Z

.field private rect:Landroid/graphics/RectF;

.field private rotatingPreview:Z

.field private rotationBack:Z

.field private roundRadius:I

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpMatrix2:Landroid/graphics/Matrix;

.field private final tmpMatrix3:Landroid/graphics/Matrix;

.field private translationY:I

.field private updateAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$h7vtxK0jNtBWDf3PalxUihAEYEQ(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 50
    :goto_1
    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    .line 51
    sput-boolean v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const v0, 0x3f333333    # 0.7f

    .line 52
    sput v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, -0x785d7c

    const v1, -0x20936

    const v2, -0xbd92a9

    const v3, -0x81b75

    .line 54
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    .line 65
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 74
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    .line 77
    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

    const/16 v1, 0x64

    .line 85
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    .line 109
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 118
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    .line 126
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 127
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    .line 128
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 133
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    const/16 v0, 0x3c

    .line 136
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    const/16 v0, 0x50

    .line 137
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    const/high16 v0, -0x1000000

    .line 568
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColor:I

    .line 1231
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix:Landroid/graphics/Matrix;

    .line 1232
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix2:Landroid/graphics/Matrix;

    .line 1233
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    .line 143
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 151
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZZ)V
    .locals 10

    .line 155
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, -0x785d7c

    const v1, -0x20936

    const v2, -0xbd92a9

    const v3, -0x81b75

    .line 54
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    .line 65
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 74
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    .line 77
    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

    const/16 v1, 0x64

    .line 85
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    .line 109
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 118
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    .line 126
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 127
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    .line 128
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 133
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    const/16 v0, 0x3c

    .line 136
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    const/16 v0, 0x50

    .line 137
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    const/high16 v1, -0x1000000

    .line 568
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColor:I

    .line 1231
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix:Landroid/graphics/Matrix;

    .line 1232
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix2:Landroid/graphics/Matrix;

    .line 1233
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    if-eqz p7, :cond_0

    .line 157
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    .line 158
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    :cond_0
    move/from16 v0, p6

    .line 160
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 161
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 162
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 147
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    return-void
.end method

.method private createLegacyBitmap()V
    .locals 5

    .line 593
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez v0, :cond_4

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 595
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 596
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 597
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 598
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 601
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 602
    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v2, 0x1

    .line 605
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 606
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    .line 607
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 610
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 613
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 614
    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_4
    return-void
.end method

.method private drawGiftPatternsForNegativeIntensity(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientGiftShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1236
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1241
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1242
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 p2, 0x0

    .line 1243
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 1244
    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;

    .line 1246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1247
    iget-object p4, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1248
    iget p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPosition:I

    if-ne p2, p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p4, :cond_0

    .line 1249
    iget-object p3, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1250
    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    .line 1252
    :cond_0
    iget-object p4, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1253
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix2:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1254
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1256
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 1257
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    iget-object v0, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    .line 1258
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    .line 1259
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1257
    invoke-virtual {p4, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1261
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    iget-object v0, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1262
    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientGiftShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->tmpMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1264
    iget-object p3, p3, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1266
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 1268
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private drawGiftPatternsForPositiveIntensity(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 3

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1275
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1276
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1277
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1278
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 p2, 0x0

    .line 1279
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;

    .line 1281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1282
    iget-object v1, v0, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-ne p2, p4, :cond_0

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v0, v0, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    .line 1287
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v0, v0, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1289
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public static getPatternColor(IIII)I
    .locals 1

    .line 240
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isDark(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-boolean p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 243
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez v0, :cond_3

    .line 244
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    invoke-static {p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p3, :cond_2

    .line 246
    invoke-static {p3, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_2
    const/4 p1, 0x1

    .line 248
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(IZ)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x64000000

    or-int/2addr p0, p1

    return p0

    :cond_3
    const/high16 p0, -0x1000000

    return p0
.end method

.method private init()V
    .locals 10

    .line 167
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 171
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    .line 175
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 177
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x1

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 180
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private invalidateParent()V
    .locals 4

    .line 408
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 412
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static isDark(IIII)Z
    .locals 0

    .line 218
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p2, :cond_0

    .line 220
    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_0
    if-eqz p3, :cond_1

    .line 223
    invoke-static {p0, p3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    .line 225
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 p1, 0x2

    .line 226
    aget p0, p0, p1

    const p1, 0x3e99999a    # 0.3f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 825
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 826
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 827
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    .line 828
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 829
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 830
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 831
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    .line 832
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v4, v8

    mul-float/2addr v5, v8

    sub-float v8, v6, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v10, v7, v5

    div-float/2addr v10, v9

    .line 837
    iget-boolean v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v11, :cond_1

    .line 838
    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v11

    add-float/2addr v8, v12

    .line 839
    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v12

    add-float/2addr v10, v13

    .line 840
    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 843
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lt v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    move v11, v13

    goto :goto_2

    :cond_2
    move v11, v14

    .line 849
    :goto_2
    iget v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/high16 v16, 0x437f0000    # 255.0f

    move/from16 v17, v9

    const/4 v9, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x42c80000    # 100.0f

    const v20, 0x3f4ccccd    # 0.8f

    const/4 v15, 0x0

    if-gez v12, :cond_10

    if-nez v11, :cond_3

    .line 851
    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 853
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_17

    .line 854
    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v5, :cond_a

    .line 855
    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-eqz v5, :cond_7

    .line 856
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 857
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v2

    div-float v5, v6, v2

    int-to-float v4, v4

    div-float v8, v7, v4

    .line 858
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v2, v5

    mul-float/2addr v4, v5

    sub-float/2addr v6, v2

    div-float v6, v6, v17

    sub-float/2addr v7, v4

    div-float v7, v7, v17

    .line 863
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 865
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v14

    aget v2, v2, v13

    invoke-static {v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 866
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-eqz v4, :cond_4

    .line 867
    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 869
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_5

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v2, v4, :cond_6

    .line 870
    :cond_5
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    .line 871
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    .line 873
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 875
    invoke-virtual {v1, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 876
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 877
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    .line 878
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v4, :cond_8

    .line 879
    invoke-virtual {v3, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 881
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 882
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float v5, v6, v3

    int-to-float v4, v4

    div-float v8, v7, v4

    .line 883
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    sub-float/2addr v6, v3

    div-float v6, v6, v17

    sub-float/2addr v7, v4

    div-float v7, v7, v17

    .line 888
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v3, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 890
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 891
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 892
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    mul-float v4, v4, v16

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 893
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v15, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 895
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    mul-float v4, v4, v16

    mul-float v4, v4, v20

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 896
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForPositiveIntensity(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 900
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v15, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 903
    iput-boolean v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    .line 906
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 907
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v2, v18

    if-eqz v3, :cond_9

    .line 908
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    sub-float v18, v18, v2

    mul-float v4, v4, v18

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 909
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 911
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 912
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 913
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_9

    .line 915
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 919
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_b

    .line 920
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 922
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 923
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v10, v3

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 924
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 925
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    .line 926
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v4, v18, v4

    .line 927
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 928
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 929
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_c

    .line 930
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 933
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 934
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 935
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    .line 936
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v4, v8

    mul-float/2addr v5, v8

    sub-float/2addr v6, v4

    div-float v6, v6, v17

    sub-float/2addr v7, v5

    div-float v7, v7, v17

    .line 941
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v6

    int-to-float v5, v5

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 942
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v3, :cond_e

    const v3, 0x3fb33333    # 1.4f

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_e

    cmpg-float v3, v8, v20

    if-gez v3, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v8, v18

    goto :goto_4

    .line 943
    :cond_e
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 947
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 948
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 949
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v19

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 950
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v9, v2}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v11, :cond_f

    .line 953
    iget-object v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v15, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColor:I

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->getPaint(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Paint;

    move-result-object v2

    .line 955
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->applyPatternMatrix(Landroid/graphics/Matrix;)V

    .line 956
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->applyGradientMatrix(Landroid/graphics/RectF;)V

    .line 958
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 960
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 962
    :goto_5
    invoke-direct {v0, v1, v6, v7, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForNegativeIntensity(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_9

    .line 966
    :cond_10
    iget v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v12, :cond_11

    .line 967
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 968
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 969
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 970
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 971
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v3, v18, v3

    .line 972
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 973
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 975
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez v11, :cond_15

    .line 977
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 980
    :cond_11
    invoke-virtual {v1, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 981
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_12

    float-to-int v3, v8

    float-to-int v9, v10

    add-float/2addr v8, v4

    float-to-int v4, v8

    add-float/2addr v10, v5

    float-to-int v5, v10

    .line 982
    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 983
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 984
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 986
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v4, v8

    add-float/2addr v5, v10

    invoke-virtual {v2, v8, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 987
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 988
    :goto_6
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v4, v3

    .line 989
    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    if-nez v11, :cond_14

    .line 991
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v15, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 993
    :cond_14
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 997
    :cond_15
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_17

    .line 998
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 999
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v6, v2

    int-to-float v3, v3

    div-float v5, v7, v3

    .line 1000
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    sub-float/2addr v6, v2

    div-float v6, v6, v17

    sub-float/2addr v7, v3

    div-float v7, v7, v17

    .line 1005
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v3, v7

    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1007
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1008
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v19

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v11, :cond_16

    .line 1010
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColor:I

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v2, v3

    float-to-int v8, v2

    iget v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->getPaint(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Paint;

    move-result-object v2

    .line 1013
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->applyPatternMatrix(Landroid/graphics/RectF;)V

    .line 1014
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundPaint;->applyGradientMatrix(Landroid/graphics/RectF;)V

    .line 1016
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8

    .line 1018
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1020
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v19

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    mul-float v3, v3, v20

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1021
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPosition:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForPositiveIntensity(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 1024
    :cond_17
    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1026
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 10

    .line 622
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    .line 625
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 626
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 627
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 628
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v6, v4, v2

    int-to-float v3, v3

    div-float v7, v5, v3

    .line 629
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v2, v6

    mul-float/2addr v3, v6

    sub-float/2addr v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 634
    iget-boolean v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v6, :cond_1

    .line 635
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    add-float/2addr v4, v7

    .line 636
    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    .line 637
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 639
    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v6, :cond_2

    .line 640
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x1000000

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_3

    .line 642
    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v6, :cond_4

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 646
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 647
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v3, v1

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 649
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 650
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_3

    .line 651
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 654
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 656
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_5

    float-to-int v1, v4

    float-to-int v6, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    .line 662
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 666
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 668
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v2, v1

    .line 669
    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 671
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 675
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    .line 677
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawPattern(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 680
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 681
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 682
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    .line 683
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 684
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 685
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 686
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    .line 687
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v4, v8

    mul-float/2addr v5, v8

    sub-float v4, v6, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float v5, v7, v5

    div-float/2addr v5, v8

    .line 692
    iget-boolean v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v9, :cond_1

    .line 693
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v9

    add-float/2addr v4, v10

    .line 694
    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v10

    add-float/2addr v5, v11

    .line 695
    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 697
    :cond_1
    iget v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/4 v10, 0x1

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v13, 0x0

    if-gez v9, :cond_d

    .line 698
    iget-object v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_e

    .line 699
    sget-boolean v14, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_8

    .line 700
    sget-boolean v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const/4 v5, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_5

    .line 701
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 702
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v2

    div-float v9, v6, v2

    int-to-float v4, v4

    div-float v11, v7, v4

    .line 703
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v2, v9

    mul-float/2addr v4, v9

    sub-float/2addr v6, v2

    div-float/2addr v6, v8

    sub-float/2addr v7, v4

    div-float/2addr v7, v8

    .line 708
    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v4, v7

    invoke-virtual {v8, v6, v7, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 710
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v6, v2, v14

    aget v2, v2, v10

    invoke-static {v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 711
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v6, 0x3

    aget v4, v4, v6

    if-eqz v4, :cond_2

    .line 712
    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 714
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v2, v4, :cond_4

    .line 715
    :cond_3
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    .line 716
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    .line 718
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 719
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 720
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 721
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 722
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_e

    .line 723
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v4, :cond_6

    .line 724
    invoke-virtual {v3, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 726
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 727
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float v9, v6, v3

    int-to-float v4, v4

    move/from16 v16, v8

    div-float v8, v7, v4

    .line 728
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v3, v8

    mul-float/2addr v4, v8

    sub-float/2addr v6, v3

    div-float v6, v6, v16

    sub-float/2addr v7, v4

    div-float v7, v7, v16

    .line 733
    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v3, v6

    add-float/2addr v4, v7

    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 736
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 737
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 738
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v13, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 740
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    mul-float/2addr v4, v6

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 741
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityPattern:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-direct {v0, v3, v4, v6, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForPositiveIntensity(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 743
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 745
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 746
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyPaintNegativeIntensityGradient:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v13, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 748
    iput-boolean v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    .line 751
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v2, v15

    if-eqz v3, :cond_7

    .line 753
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    sub-float/2addr v15, v2

    mul-float/2addr v4, v15

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 754
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 756
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 758
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    .line 760
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_8
    move/from16 v16, v8

    .line 764
    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v8, :cond_9

    .line 765
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 767
    :cond_9
    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 768
    iget-object v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v5, v3

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 769
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 770
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    .line 771
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v4, v15, v4

    .line 772
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 773
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 774
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_a

    .line 775
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 778
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 779
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 780
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    .line 781
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v4, v8

    mul-float/2addr v5, v8

    sub-float/2addr v6, v4

    div-float v6, v6, v16

    sub-float/2addr v7, v5

    div-float v7, v7, v16

    .line 786
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v6

    int-to-float v5, v5

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 787
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v3, :cond_b

    const v3, 0x3fb33333    # 1.4f

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_b

    cmpg-float v3, v8, v11

    if-gez v3, :cond_c

    .line 788
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v15, v8

    .line 792
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 793
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 794
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 795
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 797
    invoke-direct {v0, v1, v6, v7, v15}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForNegativeIntensity(Landroid/graphics/Canvas;FFF)V

    goto :goto_2

    :cond_d
    move/from16 v16, v8

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 802
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 803
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v6, v2

    int-to-float v3, v3

    div-float v5, v7, v3

    .line 804
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    sub-float/2addr v6, v2

    div-float v6, v6, v16

    sub-float/2addr v7, v3

    div-float v7, v7, v16

    .line 809
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v3, v7

    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 811
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 812
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 814
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 815
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPosition:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->drawGiftPatternsForPositiveIntensity(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 818
    :cond_e
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 820
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public generateNextGradient()V
    .locals 12

    .line 319
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    const/4 v1, 0x0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 323
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 326
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    .line 327
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    .line 331
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 334
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    .line 341
    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    :cond_4
    const/4 v0, -0x1

    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    int-to-float v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v7, v2, v3

    if-gez v0, :cond_5

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    :goto_5
    move-object v4, v0

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v0

    goto :goto_5

    :goto_6
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v5, 0x1

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    move v0, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapShader()Landroid/graphics/BitmapShader;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    return-object v0
.end method

.method public getIntensity()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 437
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 429
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPatternBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPatternColor()I
    .locals 5

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v0

    return v0
.end method

.method public getPhase()I
    .locals 1

    .line 260
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    return v0
.end method

.method public getPosAnimationProgress()F
    .locals 1

    .line 288
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIndeterminateAnimation()Z
    .locals 1

    .line 1213
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return v0
.end method

.method public isOneColor()Z
    .locals 5

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v2, v4, :cond_0

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v2, v4, :cond_0

    const/4 v4, 0x3

    aget v0, v0, v4

    if-ne v2, v0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isAttached:Z

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isAttached:Z

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public rotatePreview(Z)V
    .locals 2

    .line 268
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 273
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    .line 274
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1185
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    const/4 p1, 0x1

    .line 1031
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    .line 581
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    .line 582
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 587
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 589
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 375
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    return-void
.end method

.method public setColors(IIIIIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 387
    iget-boolean v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 388
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v6

    filled-new-array/range {p1 .. p2}, [I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 390
    iput-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 392
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v1, :cond_1

    aget v7, v5, v10

    if-ne v7, v2, :cond_1

    aget v7, v5, v9

    if-ne v7, v3, :cond_1

    aget v7, v5, v8

    if-ne v7, v4, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    aput v1, v5, v6

    .line 396
    aput v2, v5, v10

    .line 397
    aput v3, v5, v9

    .line 398
    aput v4, v5, v8

    .line 399
    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 400
    iget v13, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v12, 0x1

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v18}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    if-eqz p6, :cond_2

    .line 402
    invoke-direct {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setColors(IIIILandroid/graphics/Bitmap;)V
    .locals 9

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 380
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 381
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 382
    aput p4, v0, p1

    .line 383
    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x1

    move-object v1, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setFastRenderAllowed()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 189
    new-instance v0, Lorg/telegram/ui/Components/MotionBackgroundPaint;

    invoke-direct {v0}, Lorg/telegram/ui/Components/MotionBackgroundPaint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->motionBackgroundPaint:Lorg/telegram/ui/Components/MotionBackgroundPaint;

    :cond_0
    return-void
.end method

.method public setGiftDrawable(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 497
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 501
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isAttached:Z

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 506
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "80_80"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    return-void
.end method

.method public setGiftPatternBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 466
    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 467
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    .line 469
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 470
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    .line 472
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternGiftBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientGiftShader:Landroid/graphics/BitmapShader;

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ComposeShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapGiftShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientGiftShader:Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    .line 477
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez p1, :cond_1

    .line 478
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 480
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 484
    :cond_2
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_3

    goto :goto_0

    .line 487
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2Gift:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 491
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setGiftPatternRandomSeed(J)V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPosition:I

    :cond_0
    return-void
.end method

.method public setIndeterminateAnimation(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1217
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    if-eqz v0, :cond_0

    .line 1219
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3e000000    # 0.125f

    div-float v2, v0, v1

    float-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 1220
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    .line 1223
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return-void
.end method

.method public setIndeterminateSpeedScale(F)V
    .locals 0

    .line 1209
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPatternAlpha(F)V
    .locals 0

    .line 576
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPatternBitmap(I)V
    .locals 2

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;Z)V
    .locals 3

    .line 530
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 531
    iput-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 536
    :cond_0
    sget-boolean p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ltz p1, :cond_1

    .line 538
    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    :goto_0
    if-gez p1, :cond_5

    .line 544
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_3

    .line 545
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 546
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    .line 547
    iput-boolean p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ComposeShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 550
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    return-void

    .line 552
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    .line 553
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez p1, :cond_4

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    .line 556
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    .line 560
    :cond_5
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_6

    :goto_1
    return-void

    .line 563
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setPatternColorFilter(I)V
    .locals 2

    .line 570
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColor:I

    .line 571
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    .line 572
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPatternGiftPositions(Ljava/util/List;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->giftPatternPositions:Ljava/util/List;

    return-void
.end method

.method public setPhase(I)V
    .locals 9

    .line 278
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 280
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 282
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    .line 284
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x1

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setPosAnimationProgress(F)V
    .locals 0

    .line 292
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setPostInvalidateParent(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2

    .line 194
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    .line 195
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 196
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setTranslationY(I)V
    .locals 0

    .line 441
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    return-void
.end method

.method public switchToNextPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    return-void
.end method

.method public switchToNextPosition(Z)V
    .locals 3

    .line 301
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    .line 306
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    .line 307
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x0

    .line 308
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 309
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v0, :cond_1

    const/4 v0, 0x7

    .line 311
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    .line 313
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    return-void

    .line 302
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public switchToPrevPosition(Z)V
    .locals 8

    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    .line 355
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    const/4 p1, 0x0

    .line 357
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 358
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    return-void
.end method

.method public updateAnimation(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1036
    iget-wide v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const-wide/16 v3, 0x11

    .line 1040
    :cond_0
    iput-wide v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    const-wide/16 v1, 0x1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    goto/16 :goto_10

    .line 1045
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_2

    .line 1046
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1048
    :cond_2
    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpg-float v7, v6, v5

    if-gez v7, :cond_27

    .line 1050
    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v9

    :goto_1
    const/4 v10, 0x2

    if-eqz v1, :cond_6

    long-to-float v1, v3

    const v3, 0x463b8000    # 12000.0f

    div-float/2addr v1, v3

    .line 1052
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    mul-float/2addr v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v6, v5

    if-ltz v1, :cond_5

    .line 1054
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1057
    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v3, 0x3e000000    # 0.125f

    div-float v4, v1, v3

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    sub-float v1, v5, v1

    move v15, v1

    move v7, v9

    goto/16 :goto_d

    .line 1061
    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v11, 0x7

    if-eqz v1, :cond_1b

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v6, 0x3e800000    # 0.25f

    cmpg-float v12, v1, v6

    const/high16 v13, 0x3f400000    # 0.75f

    const/high16 v14, 0x3f000000    # 0.5f

    if-gtz v12, :cond_7

    move v1, v8

    goto :goto_2

    :cond_7
    cmpg-float v12, v1, v14

    if-gtz v12, :cond_8

    move v1, v9

    goto :goto_2

    :cond_8
    cmpg-float v1, v1, v13

    if-gtz v1, :cond_9

    move v1, v10

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    .line 1073
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v12, :cond_a

    .line 1074
    invoke-interface {v12, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_4

    .line 1076
    :cond_a
    iget v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    long-to-float v3, v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v4, :cond_b

    const/high16 v4, 0x447a0000    # 1000.0f

    goto :goto_3

    :cond_b
    const/high16 v4, 0x44fa0000    # 2000.0f

    :goto_3
    div-float/2addr v3, v4

    add-float/2addr v12, v3

    iput v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1078
    :goto_4
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 1079
    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1081
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v3, :cond_d

    .line 1082
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_5

    .line 1084
    :cond_d
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1086
    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v4, :cond_f

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_e

    cmpl-float v4, v3, v5

    if-nez v4, :cond_f

    .line 1087
    :cond_e
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    :cond_f
    if-nez v1, :cond_10

    cmpl-float v4, v3, v6

    if-gtz v4, :cond_12

    :cond_10
    if-ne v1, v9, :cond_11

    cmpl-float v4, v3, v14

    if-gtz v4, :cond_12

    :cond_11
    if-ne v1, v10, :cond_14

    cmpl-float v1, v3, v13

    if-lez v1, :cond_14

    .line 1092
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v1, :cond_13

    .line 1093
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_14

    .line 1095
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_6

    .line 1098
    :cond_13
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    sub-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v1, :cond_14

    .line 1100
    iput v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_14
    :goto_6
    cmpg-float v1, v3, v6

    if-gtz v1, :cond_15

    :goto_7
    div-float/2addr v3, v6

    goto :goto_8

    :cond_15
    cmpg-float v1, v3, v14

    if-gtz v1, :cond_16

    sub-float/2addr v3, v6

    goto :goto_7

    :cond_16
    cmpg-float v1, v3, v13

    if-gtz v1, :cond_17

    sub-float/2addr v3, v14

    goto :goto_7

    :cond_17
    sub-float/2addr v3, v13

    goto :goto_7

    .line 1113
    :goto_8
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v1, :cond_19

    sub-float v1, v5, v3

    .line 1116
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1a

    .line 1117
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_18

    .line 1119
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_18
    move v1, v5

    goto :goto_9

    :cond_19
    move v1, v3

    :cond_1a
    :goto_9
    move v15, v1

    goto :goto_d

    .line 1125
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v1, :cond_1c

    .line 1126
    invoke-interface {v1, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_b

    :cond_1c
    long-to-float v1, v3

    .line 1128
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    if-eqz v3, :cond_1d

    const/high16 v3, 0x43960000    # 300.0f

    goto :goto_a

    :cond_1d
    const/high16 v3, 0x43fa0000    # 500.0f

    :goto_a
    div-float/2addr v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1130
    :goto_b
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1e

    .line 1131
    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1133
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v1, :cond_1f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v1, :cond_1f

    .line 1134
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_c

    .line 1136
    :cond_1f
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 1138
    :goto_c
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v3, :cond_21

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_20

    cmpl-float v3, v1, v5

    if-nez v3, :cond_21

    .line 1139
    :cond_20
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    .line 1141
    :cond_21
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v3, :cond_1a

    sub-float v1, v5, v1

    .line 1143
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1a

    .line 1144
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_22

    .line 1146
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_22
    move v15, v5

    :goto_d
    if-eqz v7, :cond_23

    .line 1155
    iget-object v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v13, 0x1

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 1156
    iput-boolean v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    goto :goto_f

    .line 1158
    :cond_23
    sget-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v1, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v1, :cond_24

    goto :goto_f

    :cond_24
    cmpl-float v1, v15, v5

    if-eqz v1, :cond_26

    const v1, 0x3eaaaaab

    div-float v3, v15, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    .line 1165
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 1167
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_e
    int-to-float v4, v3

    mul-float/2addr v4, v1

    sub-float/2addr v15, v4

    div-float/2addr v15, v1

    .line 1170
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v15, v4

    float-to-int v4, v15

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1171
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_f

    .line 1173
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_f
    if-eqz p1, :cond_27

    .line 1178
    invoke-direct {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_27
    :goto_10
    return-void
.end method
