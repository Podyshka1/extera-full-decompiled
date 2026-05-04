.class public Lorg/telegram/ui/Components/RLottieDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;
    }
.end annotation


# static fields
.field private static final loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

.field public static lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

.field protected static final uiHandler:Landroid/os/Handler;


# instance fields
.field private allowDrawFramesWhileCacheGenerating:Z

.field private allowVibration:Z

.field private applyTransformation:Z

.field private applyingLayerColors:Z

.field args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

.field protected autoRepeat:I

.field protected autoRepeatCount:I

.field protected autoRepeatPlayCount:I

.field protected autoRepeatTimeout:J

.field protected volatile backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundPaint:[Landroid/graphics/Paint;

.field bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

.field protected cacheGenerateTask:Ljava/lang/Runnable;

.field private createdForFirstFrame:Z

.field protected currentFrame:I

.field protected customEndFrame:I

.field private decodeSingleFrame:Z

.field protected destroyAfterLoading:Z

.field protected destroyWhenDone:Z

.field protected diceSwitchFramesCount:I

.field private doNotRemoveInvalidOnFrameReady:Z

.field private final dstRect:Landroid/graphics/RectF;

.field private dstRectBackground:[Landroid/graphics/RectF;

.field private fallbackCache:Z

.field file:Ljava/io/File;

.field private finishFrame:I

.field private forceFrameRedraw:Z

.field protected frameWaitSync:Ljava/util/concurrent/CountDownLatch;

.field private genCacheSend:Z

.field generateCacheFramePointer:I

.field generateCacheNativePtr:J

.field generatingCache:Z

.field protected final height:I

.field private invalidateOnProgressSet:Z

.field protected isDice:I

.field private isInvalid:Z

.field protected volatile isRecycled:Z

.field protected volatile isRunning:Z

.field private lastFrameTime:J

.field protected loadFrameRunnable:Ljava/lang/Runnable;

.field protected loadFrameTask:Ljava/lang/Runnable;

.field protected loadingInBackground:Z

.field private masterParent:Ljava/lang/ref/WeakReference;

.field protected final metaData:[I

.field protected volatile nativePtr:J

.field private needScale:Z

.field private newColorUpdates:Ljava/util/HashMap;

.field private newReplaceColors:[I

.field protected volatile nextFrameIsLast:Z

.field protected volatile nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private onAnimationEndListener:Ljava/lang/Runnable;

.field protected onFinishCallback:Ljava/lang/ref/WeakReference;

.field private onFrameReadyRunnable:Ljava/lang/Runnable;

.field private final parentViews:Ljava/util/ArrayList;

.field private volatile pendingColorUpdates:Ljava/util/HashMap;

.field private pendingReplaceColors:[I

.field protected playInDirectionOfCustomEndFrame:Z

.field precache:Z

.field private rawBackgroundBitmap:Landroid/graphics/Bitmap;

.field private rawBackgroundBitmapFrame:I

.field protected volatile renderingBitmap:Landroid/graphics/Bitmap;

.field private resetVibrationAfterRestart:Z

.field public scaleByCanvas:Z

.field private scaleX:F

.field private scaleY:F

.field protected secondFramesCount:I

.field protected secondLoadingInBackground:Z

.field protected volatile secondNativePtr:J

.field protected volatile setLastFrame:Z

.field public shouldLimitFps:Z

.field private singleFrameDecoded:Z

.field public skipFrameUpdate:Z

.field public srcRect:Landroid/graphics/Rect;

.field protected timeBetweenFrames:I

.field protected uiRunnable:Ljava/lang/Runnable;

.field private uiRunnableCacheFinished:Ljava/lang/Runnable;

.field private uiRunnableGenerateCache:Ljava/lang/Runnable;

.field protected uiRunnableNoFrame:Ljava/lang/Runnable;

.field private vibrationPattern:Ljava/util/HashMap;

.field protected waitingForNextTask:Z

.field public whenCacheDone:Ljava/lang/Runnable;

.field protected final width:I


# direct methods
.method public static synthetic $r8$lambda$91yIJmgjZLADjvKfNc_iCvi428s(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AF295GmO2zUsGbAdbj3yNQZRUuE(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setBaseDice$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SsTVoa0O-vIlxeNYtCH1yu3dezU(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 282
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 285
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$YWsPiMWWicenVWfZRYADeuR_J70(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdooL9StB-Kb5PKzn3yNNQGU0b8(Lorg/telegram/ui/Components/RLottieDrawable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$5([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS0Imc7Y27AqSZkkrAmbFNa2ZpY(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 273
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 276
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$zarnvYLbyTkTCxoKSvFppDI-HY4(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setBaseDice$3(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowDrawFramesWhileCacheGenerating(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowDrawFramesWhileCacheGenerating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgenCacheSend(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonFrameReadyRunnable(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFrameReadyRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingColorUpdates(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingReplaceColors(Lorg/telegram/ui/Components/RLottieDrawable;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuiRunnableCacheFinished(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiRunnableGenerateCache(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgenCacheSend(Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingReplaceColors(Lorg/telegram/ui/Components/RLottieDrawable;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresetVibrationAfterRestart(Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingleFrameDecoded(Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvibrationPattern(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDispatchOnAnimationEnd(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkDispatchOnAnimationEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreplaceColors(J[I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->replaceColors(J[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetLayerColor(JLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(JLjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lorg/telegram/messenger/DispatchQueuePool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 632
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[I)V
    .locals 6

    .line 757
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v0, 0x3

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v3, 0x1

    .line 83
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 94
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 95
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 120
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 121
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 124
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v4, 0x2

    .line 125
    new-array v5, v4, [Landroid/graphics/RectF;

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    .line 126
    new-array v5, v4, [Landroid/graphics/Paint;

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 156
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 168
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 206
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 319
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1206
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    .line 1397
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 758
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 759
    iput p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 760
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 761
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 766
    invoke-static {p1, p2, v0, p6}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 767
    aget p1, v0, v3

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x10

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    if-eqz p5, :cond_1

    .line 769
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v0, p5

    .line 509
    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v4, 0x3

    .line 73
    new-array v9, v4, [I

    iput-object v9, v2, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v4, -0x1

    .line 75
    iput v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 79
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v14, 0x0

    .line 82
    iput-boolean v14, v2, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v15, 0x1

    .line 83
    iput-boolean v15, v2, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 92
    iput v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 94
    iput v15, v2, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 95
    iput v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    iput v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 121
    iput v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 124
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    .line 125
    new-array v6, v5, [Landroid/graphics/RectF;

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    .line 126
    new-array v6, v5, [Landroid/graphics/Paint;

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 156
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 168
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 206
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 319
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1206
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    .line 1397
    iput v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v4, p2

    .line 510
    iput v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v8, p3

    .line 511
    iput v8, v2, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 512
    iput-boolean v0, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    move v6, v15

    goto :goto_0

    :cond_0
    move v6, v14

    .line 513
    :goto_0
    iput-boolean v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 514
    iget-boolean v6, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    if-eqz v6, :cond_1

    move v6, v15

    goto :goto_1

    :cond_1
    move v6, v14

    :goto_1
    iput-boolean v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v3, :cond_2

    .line 515
    iget-boolean v6, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v6, :cond_2

    move v6, v15

    goto :goto_2

    :cond_2
    move v6, v14

    :goto_2
    iput-boolean v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 516
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 518
    iput-object v1, v2, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    .line 519
    iget-boolean v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v5, :cond_3

    sget-object v5, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v5, :cond_3

    .line 520
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 522
    :cond_3
    iget-boolean v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/16 v6, 0x3c

    if-eqz v5, :cond_6

    .line 523
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable-IA;)V

    iput-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 525
    iget-object v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v7, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v11, p6

    .line 526
    iput-object v11, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v13, p7

    .line 527
    iput v13, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 528
    iget-boolean v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v5, :cond_4

    return-void

    .line 531
    :cond_4
    invoke-direct {v2, v1, v7, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    .line 532
    iget-boolean v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v5, :cond_5

    aget v5, v9, v15

    if-ge v5, v6, :cond_5

    .line 533
    iput-boolean v14, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 535
    :cond_5
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v6, p5, 0x1

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v0, v2, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    goto :goto_3

    :cond_6
    move-object/from16 v11, p6

    move/from16 v13, p7

    .line 537
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, v2, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    iget-boolean v12, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move v0, v6

    const/4 v6, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v5 .. v13}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 538
    iget-wide v3, v2, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RLottieDrawable nativePtr == 0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " remove file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 542
    :cond_7
    iget-boolean v1, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_8

    aget v1, v9, v15

    if-ge v1, v0, :cond_8

    .line 543
    iput-boolean v14, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 547
    :cond_8
    :goto_3
    iget-boolean v0, v2, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x21

    goto :goto_4

    :cond_9
    const/16 v0, 0x10

    :goto_4
    aget v1, v9, v15

    int-to-float v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V
    .locals 13

    move-object v1, p2

    move-object/from16 v3, p5

    move/from16 v0, p6

    .line 550
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v4, 0x3

    .line 73
    new-array v7, v4, [I

    iput-object v7, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v4, -0x1

    .line 75
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 79
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v9, 0x0

    .line 82
    iput-boolean v9, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v10, 0x1

    .line 83
    iput-boolean v10, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 92
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 94
    iput v10, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 95
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    iput v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 121
    iput v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 124
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    .line 125
    new-array v6, v5, [Landroid/graphics/RectF;

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    .line 126
    new-array v6, v5, [Landroid/graphics/Paint;

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 156
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 168
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 206
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 319
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1206
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    .line 1397
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v4, p3

    .line 551
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v6, p4

    .line 552
    iput v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 553
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    .line 554
    :goto_0
    iput-boolean v8, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 555
    iget-boolean v8, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 556
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 557
    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v5, :cond_2

    sget-object v5, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v5, :cond_2

    .line 558
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 560
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/16 v11, 0x3c

    if-eqz v5, :cond_5

    .line 561
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable-IA;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 562
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 563
    iget-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v1, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v8, p7

    .line 564
    iput-object v8, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v12, p8

    .line 565
    iput v12, v5, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 566
    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v5, :cond_3

    return-void

    :cond_3
    move-object v5, p1

    .line 569
    invoke-direct {p0, p1, p2, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    .line 570
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_4

    aget v1, v7, v10

    if-ge v1, v11, :cond_4

    .line 571
    iput-boolean v9, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 573
    :cond_4
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v1, p6, 0x1

    move v2, v6

    move v6, v1

    move-object v1, v5

    move v5, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    move-object v4, v7

    goto :goto_2

    :cond_5
    move-object/from16 v8, p7

    move/from16 v12, p8

    .line 575
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    move-object v4, v7

    iget-boolean v7, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v6, v8

    move v8, v12

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 576
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RLottieDrawable nativePtr == 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remove file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 580
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_7

    aget v0, v4, v10

    if-ge v0, v11, :cond_7

    .line 581
    iput-boolean v9, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 586
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    goto :goto_3

    :cond_8
    const/16 v0, 0x10

    :goto_3
    aget v1, v4, v10

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 635
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v0, 0x3

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 94
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 95
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 120
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 121
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 124
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    .line 125
    new-array v4, v3, [Landroid/graphics/RectF;

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    .line 126
    new-array v4, v3, [Landroid/graphics/Paint;

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 156
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 168
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 206
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 319
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1206
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    .line 1397
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 636
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 637
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 638
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 640
    const-string/jumbo p2, "\ud83c\udfb2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 641
    sget p1, Lorg/telegram/messenger/R$raw;->diceloop:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3c

    .line 642
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    goto :goto_0

    .line 643
    :cond_0
    const-string/jumbo p2, "\ud83c\udfaf"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 644
    sget p1, Lorg/telegram/messenger/R$raw;->dartloop:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 648
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0x10

    if-eqz p2, :cond_2

    .line 650
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void

    .line 653
    :cond_2
    const-string p2, "dice"

    invoke-static {p1, p2, v0, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 654
    aget p1, v0, v2

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method private checkDispatchOnAnimationEnd()V
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 660
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public static native create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J
.end method

.method public static createCacheGenQueue()V
    .locals 2

    .line 228
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cache generator queue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method protected static native createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J
.end method

.method public static native destroy(J)V
.end method

.method public static native getDuration(Ljava/lang/String;Ljava/lang/String;)D
.end method

.method public static native getFrame(JILandroid/graphics/Bitmap;IIIZ)I
.end method

.method public static native getFramesCount(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private synthetic lambda$setBaseDice$2()V
    .locals 2

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 685
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 690
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 691
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setBaseDice$3(Ljava/lang/String;)V
    .locals 3

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    const-string v2, "dice"

    invoke-static {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 683
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$4()V
    .locals 1

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 719
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 720
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDiceNumber$5([I)V
    .locals 3

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 729
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    .line 733
    :cond_0
    aget v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    .line 734
    aget p1, p1, v2

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/16 v0, 0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 735
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 736
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$6(Ljava/lang/String;)V
    .locals 3

    .line 716
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 717
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 725
    new-array v0, v0, [I

    .line 726
    const-string v1, "dice"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 727
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;[I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V
    .locals 10

    .line 594
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-wide v6, v4

    move-wide v4, v2

    .line 596
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xccc

    if-eq v8, v9, :cond_2

    const/16 v9, 0xd27

    if-eq v8, v9, :cond_1

    const/16 v9, 0xde1

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "op"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    .line 598
    :cond_1
    const-string v8, "ip"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    goto :goto_0

    .line 598
    :cond_2
    const-string v8, "fr"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    goto :goto_0

    .line 612
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 617
    :cond_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    sub-double/2addr v2, v4

    double-to-int v0, v2

    const/4 v1, 0x0

    .line 619
    aput v0, p3, v1

    const/4 v0, 0x1

    double-to-int v1, v6

    .line 620
    aput v1, p3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    .line 594
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 623
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 624
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v7, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    iget-boolean v8, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    iget v9, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    const/4 v6, 0x0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_5

    .line 626
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_5
    return-void
.end method

.method private recycleNativePtr(Z)V
    .locals 7

    .line 264
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 265
    iget-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v4, 0x0

    .line 267
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 268
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 271
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-static {p1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 280
    :cond_2
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;-><init>(JJ)V

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native replaceColors(J[I)V
.end method

.method private requestRedrawColors()V
    .locals 3

    .line 993
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_1

    .line 994
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 995
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 997
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 998
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 999
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private setCurrentFrame(JJJZ)V
    .locals 5

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 1143
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1144
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1145
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt v2, v4, :cond_1

    .line 1146
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1148
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1150
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 1153
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v1, v3, :cond_3

    .line 1154
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1156
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1157
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1158
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    goto :goto_0

    .line 1159
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-eqz v0, :cond_5

    .line 1160
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1162
    :cond_5
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1163
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 1164
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 1165
    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x10

    sub-long/2addr p3, p5

    .line 1167
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    :goto_1
    if-eqz p7, :cond_7

    .line 1169
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    if-eqz p1, :cond_7

    .line 1170
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1171
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1173
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-nez p1, :cond_8

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8

    iget p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt p2, p3, :cond_8

    .line 1175
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 1177
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    return-void
.end method

.method private static native setLayerColor(JLjava/lang/String;I)V
.end method


# virtual methods
.method public addParentView(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginApplyLayerColors()V
    .locals 1

    const/4 v0, 0x1

    .line 961
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    return-void
.end method

.method public cacheFrame(I)V
    .locals 9

    .line 1401
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1402
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1403
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 1405
    :cond_2
    iget-wide v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v8, 0x1

    move v3, p1

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1441
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 1444
    :cond_2
    iget-wide v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public checkCacheCancel()V
    .locals 2

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_3

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 831
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 832
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 833
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    :cond_2
    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 837
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected checkRunningTasks()V
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 235
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasParentView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 238
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 239
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public commitApplyLayerColors()V
    .locals 3

    .line 965
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 968
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    .line 969
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v1, :cond_2

    .line 970
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 971
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 973
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 974
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 975
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 979
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method protected decodeFrameFinishedInternal()V
    .locals 6

    .line 244
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleNativePtr(Z)V

    .line 250
    :cond_0
    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    return-void

    .line 254
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 255
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasParentView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 258
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1186
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1202
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 1410
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->cacheFrame(I)V

    .line 1411
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 1412
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V
    .locals 7

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 1191
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p8

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1196
    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1197
    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p6, p6, p8

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p8

    .line 1198
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V
    .locals 5

    .line 1209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1213
    invoke-virtual {p0, p4, p5, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1216
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p4, p4, p6

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 1217
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, p6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 1219
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p5

    if-nez p5, :cond_5

    goto/16 :goto_6

    .line 1223
    :cond_5
    iget-boolean p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-nez p5, :cond_e

    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p5, :cond_e

    const/4 p5, 0x1

    const/high16 p6, 0x3f800000    # 1.0f

    if-nez p3, :cond_9

    .line 1227
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1228
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    if-eqz v1, :cond_8

    .line 1229
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1230
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1231
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    .line 1232
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    cmpg-float p6, v1, p6

    if-ltz p6, :cond_6

    goto :goto_2

    :cond_6
    move p5, v0

    :cond_7
    :goto_2
    iput-boolean p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->needScale:Z

    .line 1234
    :cond_8
    iget p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1235
    iget p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1236
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->needScale:Z

    goto :goto_4

    .line 1238
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1239
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1240
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    cmpg-float p6, v3, p6

    if-ltz p6, :cond_a

    goto :goto_3

    :cond_a
    move p5, v0

    :cond_b
    :goto_3
    move p6, v1

    move v1, p5

    move p5, p6

    move p6, v2

    :goto_4
    if-nez v1, :cond_c

    .line 1243
    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iget p6, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p5, p6, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1245
    :cond_c
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleByCanvas:Z

    if-eqz v1, :cond_d

    .line 1247
    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p5, v0, v0, p6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1248
    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p5, p6, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1250
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1251
    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1252
    invoke-virtual {p1, p5, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1253
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p5, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1258
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p1, :cond_e

    if-nez p3, :cond_e

    .line 1259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    :cond_e
    :goto_6
    return-void
.end method

.method protected finalize()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 911
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 914
    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFrame()I
    .locals 1

    .line 778
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    return v0
.end method

.method public getCustomEndFrame()I
    .locals 1

    .line 786
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    return v0
.end method

.method public getDuration()J
    .locals 3

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-long v0, v1

    return-wide v0
.end method

.method public getFramesCount()I
    .locals 2

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1126
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1131
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1306
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1311
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 10

    .line 1377
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1380
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v8

    .line 1381
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result p1

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x64

    .line 1384
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1388
    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1

    .line 1390
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    add-int/2addr p1, v9

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le p1, v0, :cond_3

    return v1

    :cond_3
    return v8
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getProgress()F
    .locals 3

    .line 782
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public hasBaseDice()Z
    .locals 4

    .line 699
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasBitmap()Z
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected hasParentView()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasVibrationPattern()Z
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateInternal()V
    .locals 3

    .line 846
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 850
    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 855
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 856
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    :goto_1
    return-void
.end method

.method public isDice()Z
    .locals 1

    .line 669
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDiceRevealed()Z
    .locals 7

    .line 743
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 747
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    if-eqz v0, :cond_1

    return v2

    .line 748
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->getProgress()F

    move-result v0

    .line 749
    iget-wide v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 750
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_2
    const v3, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isGeneratingCache()Z
    .locals 1

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeavyDrawable()Z
    .locals 1

    .line 1039
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLastFrame()Z
    .locals 3

    .line 1358
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return v0
.end method

.method public multiplySpeed(F)V
    .locals 2

    .line 774
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1136
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 1137
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 10

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [I

    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public recycle(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 868
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(ZZ)V

    return-void
.end method

.method public recycle(ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 871
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 875
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 876
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 878
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 879
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 881
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-nez p2, :cond_3

    .line 882
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleNativePtr(Z)V

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz p1, :cond_2

    .line 884
    invoke-virtual {p1}, Lorg/telegram/messenger/utils/BitmapsCache;->recycle()V

    .line 885
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    .line 887
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    return-void

    .line 889
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    return-void

    .line 880
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    return-void
.end method

.method protected recycleResources()V
    .locals 2

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 297
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 298
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 299
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 300
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 303
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 5

    .line 1419
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1420
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1421
    iput-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    :cond_0
    return-void
.end method

.method public removeParentView(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkCacheCancel()V

    return-void
.end method

.method public replaceColors([I)V
    .locals 0

    .line 983
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 984
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public resetVibrationAfterRestart(Z)V
    .locals 0

    .line 1301
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return-void
.end method

.method public restart()Z
    .locals 1

    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    move-result v0

    return v0
.end method

.method public restart(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_1

    .line 943
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-lt p1, v1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-gez p1, :cond_1

    return v0

    .line 946
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 947
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 948
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected scheduleNextGetFrame()Z
    .locals 4

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_6

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1010
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowDrawFramesWhileCacheGenerating:Z

    if-nez v0, :cond_1

    return v1

    .line 1013
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1017
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    if-eqz v0, :cond_3

    .line 1018
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    const/4 v0, 0x0

    .line 1019
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 1021
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1022
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v0, v3, :cond_5

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 1025
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 861
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    :cond_0
    return-void
.end method

.method public setAllowDrawFramesWhileCacheGenerating(Z)V
    .locals 0

    .line 1488
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowDrawFramesWhileCacheGenerating:Z

    return-void
.end method

.method public setAllowVibration(Z)V
    .locals 0

    .line 1297
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 2

    .line 894
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-eqz v0, :cond_0

    return-void

    .line 897
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 0

    .line 901
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    return-void
.end method

.method public setAutoRepeatTimeout(J)V
    .locals 0

    .line 905
    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatTimeout:J

    return-void
.end method

.method public setBaseDice(Ljava/io/File;)Z
    .locals 4

    .line 673
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 680
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 681
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v1
.end method

.method public setCurrentFrame(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1048
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method public setCurrentFrame(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1052
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    return-void
.end method

.method public setCurrentFrame(IZZ)V
    .locals 3

    if-ltz p1, :cond_8

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gt p1, v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_2

    .line 1059
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 1060
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 1061
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1062
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1063
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1065
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    .line 1068
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1069
    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1071
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1072
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    :cond_3
    if-nez p2, :cond_4

    .line 1075
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v1, :cond_4

    .line 1076
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    :cond_4
    if-eqz p3, :cond_5

    .line 1079
    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez p3, :cond_5

    .line 1080
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 1082
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result p3

    if-eqz p3, :cond_6

    if-nez p2, :cond_7

    .line 1085
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1087
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1089
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    .line 1092
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1094
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    :goto_2
    return-void
.end method

.method public setCustomEndFrame(I)Z
    .locals 2

    .line 798
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public setDiceNumber(Ljava/io/File;Z)Z
    .locals 4

    .line 703
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 710
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p2, :cond_2

    const/4 p2, 0x2

    .line 711
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 712
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    .line 714
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 715
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v1
.end method

.method public setGeneratingFrame(I)V
    .locals 0

    .line 1372
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    return-void
.end method

.method public setInvalidateOnProgressSet(Z)V
    .locals 0

    .line 1340
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    return-void
.end method

.method public setLayerColor(Ljava/lang/String;I)V
    .locals 1

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public setMasterParent(Landroid/view/View;)V
    .locals 1

    .line 1437
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 310
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    return-void

    .line 311
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public setPlayInDirectionOfCustomEndFrame(Z)V
    .locals 0

    .line 794
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1107
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 1116
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method public setProgressMs(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1102
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    rem-long/2addr p1, v0

    long-to-int p1, p1

    const/4 p2, 0x1

    .line 1103
    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    return-void
.end method

.method public setVibrationPattern(Ljava/util/HashMap;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    return-void
.end method

.method public start()V
    .locals 2

    .line 924
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 928
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    if-eqz v1, :cond_2

    .line 929
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 931
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    .line 934
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 935
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1044
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    .line 1266
    iget-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    sub-long v3, v1, p1

    if-eqz p3, :cond_1

    .line 1268
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-nez p1, :cond_1

    .line 1269
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x10

    goto :goto_1

    .line 1270
    :cond_1
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 p2, 0x42700000    # 60.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_3

    if-eqz p3, :cond_2

    const/high16 p2, 0x42a00000    # 80.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    goto :goto_0

    .line 1273
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    goto :goto_1

    .line 1271
    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x6

    .line 1275
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p2, :cond_a

    .line 1276
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    return-void

    .line 1278
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_5

    int-to-long p2, p1

    cmp-long p2, v3, p2

    if-ltz p2, :cond_c

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    if-nez p2, :cond_c

    .line 1279
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    if-eqz p2, :cond_8

    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    if-eqz p3, :cond_8

    .line 1280
    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_8

    .line 1283
    :try_start_0
    sget-object p3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez p3, :cond_6

    .line 1284
    sget-object p3, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    .line 1285
    :cond_6
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_7

    const/4 p2, 0x0

    goto :goto_2

    :cond_7
    const/4 p2, 0x3

    :goto_2
    const/4 v0, 0x2

    invoke-virtual {p3, p2, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    int-to-long v5, p1

    const/4 v7, 0x0

    move-object v0, p0

    .line 1289
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    return-void

    :cond_9
    move-object v0, p0

    goto :goto_3

    :cond_a
    move-object v0, p0

    .line 1291
    iget-boolean p2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    if-nez p2, :cond_b

    iget-boolean p2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz p2, :cond_c

    int-to-long p2, p1

    cmp-long p2, v3, p2

    if-ltz p2, :cond_c

    :cond_b
    iget-object p2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_c

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 1292
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    :cond_c
    :goto_3
    return-void
.end method
