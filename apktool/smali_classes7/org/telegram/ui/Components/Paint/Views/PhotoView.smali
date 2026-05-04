.class public Lorg/telegram/ui/Components/Paint/Views/PhotoView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;,
        Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;
    }
.end annotation


# instance fields
.field private anchor:I

.field public baseSize:Lorg/telegram/ui/Components/Size;

.field public bitmap:Landroid/graphics/Bitmap;

.field private final bitmapDst:Landroid/graphics/Rect;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final bitmapSrc:Landroid/graphics/Rect;

.field public final containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field private final dest:Landroid/graphics/RectF;

.field private highlightGradient:Landroid/graphics/LinearGradient;

.field private highlightGradientMatrix:Landroid/graphics/Matrix;

.field private highlightPaint:Landroid/graphics/Paint;

.field private highlightStart:J

.field private invert:I

.field private final mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private mirrored:Z

.field private needHighlight:Z

.field private object:Lorg/telegram/tgnet/TLObject;

.field private orientation:I

.field private overridenSegmented:Z

.field private path:Ljava/lang/String;

.field private roundRectPath:Landroid/graphics/Path;

.field private final segmentPaint:Landroid/graphics/Paint;

.field private segmented:Z

.field private segmentedFile:Ljava/io/File;

.field public segmentedImage:Landroid/graphics/Bitmap;

.field private segmentedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private segmentingLoaded:Z

.field private segmentingLoading:Z

.field private final src:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$2__OhrsCFQ2SMrJ-bw_u0-rzA50(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->lambda$segmentImage$1(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Cum3RYRack_hjjgQiXcHF4Hia0(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 133
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JXnQgb3Ak96M8WBbQ8mdaqxb9U0(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->lambda$segmentImage$3(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0tHel0P_CWxHHlKILAwsbrvGrI(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->lambda$segmentImage$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V
    .locals 10

    move-object/from16 v0, p6

    .line 117
    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    const/4 v2, 0x0

    .line 75
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    .line 78
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->overridenSegmented:Z

    .line 82
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    .line 350
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->src:Landroid/graphics/Rect;

    .line 351
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    .line 353
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentPaint:Landroid/graphics/Paint;

    const-wide/16 v5, -0x1

    .line 355
    iput-wide v5, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    .line 361
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapSrc:Landroid/graphics/Rect;

    .line 362
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapDst:Landroid/graphics/Rect;

    .line 364
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {p0, p3}, Landroid/view/View;->setRotation(F)V

    .line 119
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 121
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->path:Ljava/lang/String;

    move-object v3, p5

    .line 122
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 124
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    const/high16 v3, -0x40800000    # -1.0f

    .line 125
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 128
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v7, 0x15e

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedT:Lorg/telegram/ui/Components/AnimatedFloat;

    move/from16 v1, p7

    .line 130
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    move/from16 v1, p8

    .line 131
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->invert:I

    .line 133
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x780

    invoke-static {v1, v0, v0, v2, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentImage(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    .line 78
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->overridenSegmented:Z

    .line 82
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->src:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    .line 353
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentPaint:Landroid/graphics/Paint;

    const-wide/16 v2, -0x1

    .line 355
    iput-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    .line 361
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapSrc:Landroid/graphics/Rect;

    .line 362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapDst:Landroid/graphics/Rect;

    .line 364
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {p0, p3}, Landroid/view/View;->setRotation(F)V

    .line 149
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 151
    iput-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->object:Lorg/telegram/tgnet/TLObject;

    .line 152
    iput-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 154
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 155
    invoke-static {p2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 158
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v6, 0x15e

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    return-void
.end method

.method private drawSegmented(Landroid/graphics/Canvas;)V
    .locals 8

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->src:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 487
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_1

    const/16 v3, -0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, -0x10e

    if-ne v2, v3, :cond_2

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 489
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :cond_2
    int-to-float v0, v0

    .line 491
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v0, v3

    int-to-float v1, v1

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 492
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 493
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    sub-float v5, v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    sub-float v7, v3, v2

    div-float/2addr v7, v6

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    add-float/2addr v3, v2

    div-float/2addr v3, v6

    invoke-virtual {v0, v5, v7, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    if-eqz v0, :cond_3

    int-to-float v0, v0

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 499
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    if-nez v0, :cond_4

    .line 500
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    .line 502
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->dest:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getImageFilter()Ljava/lang/String;
    .locals 3

    .line 175
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isWaitingMlKitError(Ljava/lang/Exception;)Z
    .locals 3

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 211
    :cond_0
    instance-of v0, p0, Lcom/google/mlkit/common/MlKitException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "segmentation optional module to be downloaded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private synthetic lambda$segmentImage$1(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentationResult;)V
    .locals 0

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoaded:Z

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoading:Z

    return-void
.end method

.method private synthetic lambda$segmentImage$2(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$segmentImage$3(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoading:Z

    .line 196
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 197
    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isWaitingMlKitError(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 198
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/graphics/Bitmap;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoaded:Z

    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    .line 551
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    return-object v0
.end method

.method public deleteSegmentedFile()V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 3

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAnchor()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    return v0
.end method

.method public getBaseSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 673
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 668
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 663
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    return v0
.end method

.method public getPath(I)Ljava/lang/String;
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    .line 556
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 558
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 561
    :catch_0
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->path:Ljava/lang/String;

    return-object p1
.end method

.method public getSegmentedOutBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 250
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 256
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 260
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 261
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 264
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v9, v10

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    div-float/2addr v3, v10

    .line 266
    invoke-virtual {v6, v11, v12, v3, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v9

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v11, v9

    .line 267
    invoke-virtual {v6, v8, v11}, Landroid/graphics/Canvas;->skew(FF)V

    .line 268
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float/2addr v11, v13

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v7, v12, v11, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 269
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    div-float/2addr v4, v10

    .line 270
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 272
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v8, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v3, 0xff

    const/16 v4, 0x1f

    .line 275
    invoke-virtual {v6, v7, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 276
    invoke-virtual {v6, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 278
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 279
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 280
    invoke-virtual {v6, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 282
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    return-object v5

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 542
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 544
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 546
    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v5, v3, v5

    sub-float/2addr v6, v5

    mul-float/2addr v6, v0

    sub-float/2addr v4, v2

    mul-float/2addr v3, v0

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public hasSegmentedImage()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public highlightSegmented()V
    .locals 4

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->needHighlight:Z

    .line 511
    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 512
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    .line 514
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public isMirrored()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    return v0
.end method

.method public isSegmented()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    return v0
.end method

.method public mirror()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror(Z)V

    return-void
.end method

.method public mirror(Z)V
    .locals 2

    .line 308
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 312
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 295
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 289
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget p2, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 522
    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_0

    .line 524
    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr p2, v1

    .line 525
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr p1, v0

    :cond_0
    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 528
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    float-to-int p1, p1

    .line 529
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 527
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSwitchSegmentedAnimationStarted(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->overridenSegmented:Z

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public preloadSegmented(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoading:Z

    return-void
.end method

.method public saveSegmentedImage(I)Ljava/io/File;
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 219
    const-string v0, "webp"

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    .line 221
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedFile:Ljava/io/File;

    return-object p1
.end method

.method public segmentImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoaded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoading:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->enableForegroundBitmap()Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->build()Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmentation;->getClient(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;)Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenter;

    move-result-object v0

    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentingLoading:Z

    .line 186
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    invoke-static {p1, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenter;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    :goto_0
    return-void
.end method

.method protected stickerDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 367
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-nez v2, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v3, v2, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v3, v9, v3

    .line 373
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v4, v8

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v9, v4, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    sub-float v2, v9, v2

    mul-float/2addr v3, v2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v3, v2

    .line 374
    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->skew(FF)V

    .line 376
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    .line 377
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    const/4 v11, 0x0

    if-nez v3, :cond_9

    .line 378
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    sub-float v5, v9, v2

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    .line 381
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->orientation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 383
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 384
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 385
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v3, :cond_3

    .line 386
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 387
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v4

    .line 388
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v6, v6, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_1

    .line 389
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentHeight()I

    move-result v3

    .line 390
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getContentWidth()I

    move-result v4

    :cond_1
    neg-int v5, v3

    int-to-float v5, v5

    .line 392
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v6, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    neg-int v13, v4

    int-to-float v13, v13

    iget v6, v6, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v13, v6

    div-float/2addr v13, v8

    int-to-float v3, v3

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    int-to-float v4, v4

    mul-float/2addr v6, v4

    div-float/2addr v6, v8

    invoke-virtual {v1, v5, v13, v7, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 396
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v5, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 397
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v6, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v6, v3

    iget v3, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v3, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 399
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v3, v3, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v3, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    .line 400
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 402
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getOrientation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 404
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v11, v11, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v11, v11, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 407
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 409
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v2, v2, v10

    if-lez v2, :cond_5

    .line 411
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->drawSegmented(Landroid/graphics/Canvas;)V

    .line 414
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 415
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v2, Lorg/telegram/ui/Components/Size;->width:F

    iget v5, v2, Lorg/telegram/ui/Components/Size;->height:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 416
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->drawSegmented(Landroid/graphics/Canvas;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 419
    iget-wide v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    .line 420
    iput-wide v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    .line 422
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v16, v3, v4

    .line 423
    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    sub-long/2addr v1, v4

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    mul-float v8, v8, v16

    add-float/2addr v8, v3

    mul-float/2addr v8, v7

    sub-float v8, v8, v16

    .line 425
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_7

    .line 426
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightPaint:Landroid/graphics/Paint;

    .line 427
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 428
    new-instance v13, Landroid/graphics/LinearGradient;

    const v1, 0xfeee8c

    const v2, 0x66feee8c

    filled-new-array {v1, v2, v2, v1}, [I

    move-result-object v18

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradient:Landroid/graphics/LinearGradient;

    .line 429
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradientMatrix:Landroid/graphics/Matrix;

    .line 430
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 433
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 434
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 435
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 436
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v2, v2

    int-to-float v4, v2

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v1, v7, v10

    if-gtz v1, :cond_8

    .line 440
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->needHighlight:Z

    if-eqz v1, :cond_a

    :cond_8
    cmpg-float v1, v7, v9

    if-gez v1, :cond_a

    .line 441
    iput-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->needHighlight:Z

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_9
    const-wide/16 v1, -0x1

    .line 446
    iput-wide v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->highlightStart:J

    .line 447
    iput-boolean v11, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->needHighlight:Z

    .line 454
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->drawSegmented(Landroid/graphics/Canvas;)V

    .line 457
    :cond_a
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toggleSegmented(Z)V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmented:Z

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->overridenSegmented:Z

    :cond_0
    if-nez p1, :cond_1

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->segmentedT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 333
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-eqz p1, :cond_2

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public updatePosition()V
    .locals 4

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 340
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v2

    .line 341
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_0

    .line 342
    iget v3, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v1, v3

    .line 343
    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v0, v2

    .line 345
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    .line 347
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
