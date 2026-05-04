.class public abstract Lorg/telegram/ui/Components/VideoTimelinePlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;,
        Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;
    }
.end annotation


# static fields
.field public static TYPE_LEFT:I = 0x0

.field public static TYPE_PROGRESS:I = 0x2

.field public static TYPE_RIGHT:I = 0x1

.field private static final sync:Ljava/lang/Object;


# instance fields
.field bitmapPaint:Landroid/graphics/Paint;

.field private clipPath:Landroid/graphics/Path;

.field private currentMode:I

.field private currentTask:Landroid/os/AsyncTask;

.field private final cutPaint:Landroid/graphics/Paint;

.field private delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

.field private final dimPaint:Landroid/graphics/Paint;

.field private exclusionRects:Ljava/util/ArrayList;

.field private exclustionRect:Landroid/graphics/Rect;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;

.field private framesToLoad:I

.field private final handlePaint:Landroid/graphics/Paint;

.field private hasBlur:Z

.field private lastWidth:I

.field private final loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private playProgress:F

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedPlay:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect3:Landroid/graphics/RectF;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private videoHeight:I

.field private videoLength:J

.field private videoWidth:I

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetframeHeight(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetframeTimeOffset(Lorg/telegram/ui/Components/VideoTimelinePlayView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetframeWidth(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetframes(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetframesToLoad(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaMetadataRetriever(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreloadFrames(Lorg/telegram/ui/Components/VideoTimelinePlayView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    .line 60
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    .line 88
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->cutPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    .line 466
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v10, 0xc8

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v7, p0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v5, v7, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 501
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x26000000

    .line 97
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x4d000000    # 1.3421773E8f

    .line 98
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 p1, -0x1000000

    .line 100
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p1, v7, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, v7, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;FF)V
    .locals 7

    const/high16 v0, 0x41400000    # 12.0f

    .line 603
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 605
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42380000    # 46.0f

    .line 606
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    sub-float v5, v4, v3

    div-float/2addr v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    sub-float/2addr v4, v5

    .line 611
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42180000    # 38.0f

    mul-float/2addr v5, p3

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 612
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 614
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 615
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p2, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 616
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p2, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 617
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 618
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    add-float/2addr v0, p3

    invoke-virtual {p2, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 5

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    const/high16 v1, 0x42180000    # 38.0f

    .line 377
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    .line 379
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    if-eqz v2, :cond_1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const v2, 0x3faaaaab

    const/high16 v3, 0x3f100000    # 0.5625f

    .line 382
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    div-float/2addr v2, v4

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    .line 385
    iget-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    .line 387
    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelinePlayView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 435
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    const/4 v0, 0x0

    .line 477
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 485
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 488
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected abstract customBlur()Z
.end method

.method public destroy()V
    .locals 3

    .line 439
    sget-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 441
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 443
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 446
    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 448
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 449
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 457
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 458
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    :cond_3
    return-void

    .line 448
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method

.method public getLeftProgress()F
    .locals 1

    .line 109
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    return v0
.end method

.method public getLength()J
    .locals 4

    const-wide/16 v0, 0x1

    .line 345
    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 105
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .line 113
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    return v0
.end method

.method public invalidateBlur()V
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x41400000    # 12.0f

    .line 506
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    .line 507
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v3, v7, v8

    sub-float/2addr v2, v3

    const/high16 v9, 0x41200000    # 10.0f

    .line 508
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 509
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    const/high16 v10, 0x40c00000    # 6.0f

    .line 511
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42180000    # 38.0f

    .line 512
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 514
    iget-object v11, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-nez v11, :cond_1

    .line 515
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr v2, v7

    invoke-virtual {v11, v7, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 516
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v11, v7, v14, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 521
    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 522
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v14, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v7, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 526
    :goto_0
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    move v11, v6

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v12

    move v10, v3

    move v8, v4

    move v9, v5

    goto/16 :goto_8

    .line 528
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 529
    iget-object v11, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 530
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v14, v7, v2

    invoke-virtual {v11, v7, v5, v14, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    move/from16 v17, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v11, v15, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 532
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 534
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    const/4 v9, 0x1

    if-ge v2, v8, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    iput-boolean v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-nez v2, :cond_4

    move v2, v13

    .line 536
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 537
    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    .line 538
    iget-object v8, v8, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 539
    iput-boolean v9, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 544
    :cond_4
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-eqz v2, :cond_5

    .line 545
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 546
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v14

    invoke-virtual {v2, v7, v5, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 547
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_5
    move v2, v3

    move v8, v4

    move v3, v5

    move v9, v6

    goto :goto_4

    :cond_6
    move v2, v3

    move v3, v5

    move v5, v6

    .line 549
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v8, v4

    move v9, v5

    :goto_4
    move v4, v13

    .line 553
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_a

    .line 554
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    .line 555
    iget-object v6, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    .line 556
    iget v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    add-float/2addr v6, v7

    .line 557
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    .line 558
    iget v15, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v18, v15, v12

    if-eqz v18, :cond_8

    const v18, 0x3d3b3ee7

    add-float v15, v15, v18

    .line 559
    iput v15, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v15, v15, v12

    if-lez v15, :cond_7

    .line 561
    iput v12, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    goto :goto_6

    .line 563
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 565
    :goto_6
    iget-object v15, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    move/from16 v18, v10

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move/from16 v19, v12

    iget v12, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 566
    iget-object v5, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v10, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    move/from16 v18, v10

    move/from16 v19, v12

    .line 568
    iget-object v5, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v6, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    move/from16 v18, v10

    move/from16 v19, v12

    :goto_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v18

    move/from16 v12, v19

    goto :goto_5

    :cond_a
    move/from16 v18, v10

    move/from16 v19, v12

    const/high16 v4, 0x42380000    # 46.0f

    .line 573
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v5, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    move v4, v2

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v10, v4

    .line 574
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v5, v9

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v9, v3

    move v11, v5

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 578
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 579
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v3, v10, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, v8

    invoke-virtual {v2, v3, v9, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 580
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 581
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 582
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v5, v9, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v6, v11, v3

    invoke-virtual {v2, v10, v5, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 583
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->cutPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 584
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 586
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 587
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v4, v2

    div-float v4, v4, v16

    sub-float v4, v10, v4

    sub-float v6, v11, v9

    sub-float/2addr v6, v3

    div-float v6, v6, v16

    add-float v5, v9, v6

    .line 588
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    sub-float v7, v4, v2

    add-float/2addr v3, v5

    invoke-virtual {v6, v4, v5, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 589
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 591
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v4, v2

    div-float v4, v4, v16

    add-float/2addr v4, v8

    .line 592
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    add-float/2addr v2, v4

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    .line 597
    iget v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawProgress(Landroid/graphics/Canvas;FF)V

    .line 599
    :cond_b
    iget v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    sub-float v12, v19, v2

    invoke-direct {v0, v1, v3, v12}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawProgress(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 149
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 150
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1d

    if-lt p3, p5, :cond_0

    .line 151
    iget-object p3, p1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p3, p2, p5, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 493
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 494
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 495
    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    if-eq p2, p1, :cond_0

    .line 496
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clearFrames()V

    .line 497
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    .line 165
    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    .line 166
    iget v7, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v7, v4

    float-to-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 167
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v8, v6

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x1

    if-nez v6, :cond_a

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    .line 174
    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 175
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-eq v8, v5, :cond_3

    sub-int v3, v7, v0

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_3

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    cmpl-float v0, v2, v9

    if-ltz v0, :cond_3

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 178
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 180
    :cond_2
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    int-to-float p1, v7

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 181
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_3
    sub-int v0, v5, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    add-int v0, v5, p1

    .line 184
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    cmpl-float v0, v2, v9

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    .line 186
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 188
    :cond_4
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    int-to-float p1, v5

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 189
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_5
    sub-int v0, v8, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    add-int/2addr p1, v8

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_7

    cmpl-float p1, v2, v9

    if-ltz p1, :cond_7

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_6

    .line 194
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 196
    :cond_6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    int-to-float p1, v8

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 197
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_7
    int-to-float p1, v5

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_25

    int-to-float p1, v8

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_25

    cmpl-float p1, v2, v9

    if-ltz p1, :cond_25

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_25

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_8

    .line 202
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 204
    :cond_8
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    .line 205
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_9

    .line 207
    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 209
    :cond_9
    iput v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 213
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v11, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_b

    goto/16 :goto_7

    .line 233
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 234
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_f

    .line 235
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 236
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 237
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    .line 238
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_0

    .line 239
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 240
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 242
    :cond_d
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_e

    .line 243
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 245
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 247
    :cond_f
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_17

    .line 248
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 249
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 250
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_1

    :cond_10
    if-le p1, v8, :cond_11

    goto :goto_1

    :cond_11
    move v8, p1

    .line 254
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 255
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    sub-float v1, v0, p1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    add-float/2addr p1, v2

    .line 256
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    goto :goto_2

    .line 257
    :cond_12
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v9

    if-eqz v2, :cond_13

    sub-float p1, v0, p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_13

    sub-float/2addr v0, v1

    .line 258
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float p1, v0, v9

    if-gez p1, :cond_13

    .line 260
    iput v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 263
    :cond_13
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    .line 264
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_3

    .line 265
    :cond_14
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15

    .line 266
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 268
    :cond_15
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_16

    .line 269
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 271
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 273
    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_25

    .line 274
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v5, :cond_18

    goto :goto_4

    .line 277
    :cond_18
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_19

    .line 278
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int v5, v3, p1

    goto :goto_4

    :cond_19
    move v5, p1

    .line 280
    :goto_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v5, p1

    int-to-float p1, v5

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 281
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    sub-float/2addr p1, v2

    .line 282
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    goto :goto_5

    .line 283
    :cond_1a
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v9

    if-eqz v2, :cond_1b

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1b

    add-float/2addr v0, v1

    .line 284
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1b

    .line 286
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 289
    :cond_1b
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1c

    .line 290
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_6

    .line 291
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    .line 292
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 294
    :cond_1d
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1e

    .line 295
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 297
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 214
    :cond_1f
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_21

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_20

    .line 216
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 218
    :cond_20
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    return v11

    .line 220
    :cond_21
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_23

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_22

    .line 222
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 224
    :cond_22
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    return v11

    .line 226
    :cond_23
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_25

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_24

    .line 228
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 230
    :cond_24
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    :cond_25
    return v11
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    .line 140
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    .line 141
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    .line 142
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    .line 128
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 132
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 468
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43700000    # 240.0f

    long-to-float v0, v0

    div-float v0, v2, v0

    .line 469
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 472
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightProgress(F)V
    .locals 1

    .line 349
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_0

    .line 351
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 353
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1

    .line 354
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 356
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 357
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 359
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;FF)V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    .line 306
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 307
    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 308
    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 309
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpg-float v2, v1, p2

    if-gez v2, :cond_0

    .line 310
    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_0

    :cond_0
    cmpl-float p2, v1, p3

    if-lez p2, :cond_1

    .line 312
    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 315
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 319
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 321
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    .line 325
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    .line 329
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_6

    .line 333
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    .line 334
    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    .line 335
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 339
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 341
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
