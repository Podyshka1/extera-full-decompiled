.class public Lorg/telegram/ui/Components/AnimatedFileDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;


# static fields
.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static radii:[F


# instance fields
.field private final MAX_TRIES:I

.field private PRERENDER_FRAME:Z

.field private final USE_BITMAP_SHADER:Z

.field private actualDrawRect:Landroid/graphics/RectF;

.field private applyTransformation:Z

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundBitmapTime:I

.field private final backgroundPaint:[Landroid/graphics/Paint;

.field private final backgroundShader:[Landroid/graphics/BitmapShader;

.field bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

.field cacheGenRunnable:Ljava/lang/Runnable;

.field cacheGenerateNativePtr:J

.field cacheGenerateTimestamp:J

.field cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

.field private cancelCache:Ljava/lang/Runnable;

.field private currentAccount:I

.field public currentTime:J

.field private decodeQueue:Lorg/telegram/messenger/DispatchQueue;

.field private decodeSingleFrame:Z

.field private decoderCreated:Z

.field private decoderTryCount:I

.field private destroyWhenDone:Z

.field private final document:Lorg/telegram/tgnet/TLRPC$Document;

.field private final dstRect:Landroid/graphics/RectF;

.field private final dstRectBackground:[Landroid/graphics/RectF;

.field private endTime:F

.field private forceDecodeAfterNextFrame:Z

.field private forceDisable:Z

.field generatingCache:Z

.field generatingCacheBitmap:Landroid/graphics/Bitmap;

.field public ignoreNoParent:Z

.field private invalidateAfter:I

.field private invalidateParentViewWithSecond:Z

.field private invalidatePath:Z

.field private volatile isRecycled:Z

.field private isRestarted:Z

.field private volatile isRunning:Z

.field public isWebmSticker:Z

.field private lastFrameDecodeTime:J

.field private lastFrameTime:J

.field lastMetadata:I

.field private lastTimeStamp:I

.field private limitFps:Z

.field private final loadFrameRunnable:Ljava/lang/Runnable;

.field private loadFrameTask:Ljava/lang/Runnable;

.field private final mStartTask:Ljava/lang/Runnable;

.field private final metaData:[I

.field public volatile nativePtr:J

.field private nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private nextRenderingBitmap2:Landroid/graphics/Bitmap;

.field private nextRenderingBitmapTime:I

.field private nextRenderingBitmapTime2:I

.field private final nextRenderingShader:[Landroid/graphics/BitmapShader;

.field private final nextRenderingShader2:[Landroid/graphics/BitmapShader;

.field private parentView:Landroid/view/View;

.field private final parents:Ljava/util/ArrayList;

.field private path:Ljava/io/File;

.field private pendingRemoveLoading:Z

.field private pendingRemoveLoadingFramesReset:I

.field private volatile pendingSeekTo:J

.field private volatile pendingSeekToUI:J

.field private precache:Z

.field private ptrFail:Z

.field private recycleWithSecond:Z

.field private renderingBitmap:Landroid/graphics/Bitmap;

.field private renderingBitmapTime:I

.field private renderingHeight:I

.field private final renderingShader:[Landroid/graphics/BitmapShader;

.field private renderingWidth:I

.field public repeatCount:I

.field private roundPath:[Landroid/graphics/Path;

.field private final roundPathBackground:[Landroid/graphics/Path;

.field private roundRadius:[I

.field private roundRadiusBackup:[I

.field private scaleFactor:F

.field private scaleX:F

.field private scaleY:F

.field private scheduledForSeek:Z

.field private final secondParentViews:Ljava/util/ArrayList;

.field private shaderMatrix:[Landroid/graphics/Matrix;

.field private final shaderMatrixBackground:[Landroid/graphics/Matrix;

.field private singleFrameDecoded:Z

.field public skipFrameUpdate:Z

.field private startTime:F

.field private stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

.field private streamFileSize:J

.field private streamLoadingPriority:I

.field private final sync:Ljava/lang/Object;

.field tryCount:I

.field private uiRunnable:Ljava/lang/Runnable;

.field private uiRunnableGenerateCache:Ljava/lang/Runnable;

.field private uiRunnableNoFrame:Ljava/lang/Runnable;

.field unusedBitmaps:Ljava/util/ArrayList;

.field private useSharedQueue:Z


# direct methods
.method public static synthetic $r8$lambda$XSiTESgQPrwSetsveT-TYtGwcDA(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lambda$checkCacheCancel$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bY_BhY_T2woGClu51Q8zPdtGFyY(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetPRERENDER_FRAME(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetUSE_BITMAP_SHADER(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->USE_BITMAP_SHADER:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdecoderCreated(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdecoderTryCount(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdestroyWhenDone(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetendTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetforceDecodeAfterNextFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetforceDisable(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDisable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecycled(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRestarted(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlimitFps(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmetaData(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextRenderingShader(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextRenderingShader2(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpath(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingRemoveLoading(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingRemoveLoadingFramesReset(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingSeekTo(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrenderingHeight(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderingWidth(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleFactor(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecondParentViews(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstream(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstreamFileSize(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsync(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiRunnable(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiRunnableGenerateCache(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiRunnableNoFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbackgroundBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackgroundBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdecoderCreated(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdecoderTryCount(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputforceDecodeAfterNextFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRestarted(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastFrameDecodeTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTimeStamp(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadFrameTask(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextRenderingBitmap(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextRenderingBitmap2(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextRenderingBitmapTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextRenderingBitmapTime2(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingRemoveLoading(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingRemoveLoadingFramesReset(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSeekTo(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputptrFail(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ptrFail:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingleFrameDecoded(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mchekDestroyDecoder(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->chekDestroyDecoder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasRoundRadius(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasRoundRadius()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscheduleNextGetFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScaleFactor(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 135
    new-array v1, v0, [F

    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    .line 177
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 18

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :goto_1
    invoke-direct/range {v1 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;I)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    move-wide/from16 v9, p9

    move/from16 v4, p13

    move/from16 v5, p14

    .line 517
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 54
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v6, v7, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v11

    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->USE_BITMAP_SHADER:Z

    .line 55
    iput-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    const/16 v6, 0x32

    .line 88
    iput v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    const/4 v6, 0x6

    .line 89
    new-array v13, v6, [I

    iput-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const-wide/16 v6, -0x1

    .line 109
    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 110
    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    .line 114
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    .line 121
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    const/4 v6, 0x3

    .line 123
    new-array v7, v6, [Landroid/graphics/BitmapShader;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    .line 124
    new-array v7, v6, [Landroid/graphics/BitmapShader;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    .line 125
    new-array v7, v6, [Landroid/graphics/BitmapShader;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    .line 126
    new-array v7, v6, [Landroid/graphics/BitmapShader;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    const/4 v7, 0x4

    .line 131
    new-array v7, v7, [I

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    .line 133
    new-array v7, v6, [Landroid/graphics/Matrix;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    .line 134
    new-array v7, v6, [Landroid/graphics/Path;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 139
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 140
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 142
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    .line 153
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    const/4 v7, 0x2

    .line 156
    new-array v8, v7, [Landroid/graphics/RectF;

    iput-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    .line 157
    new-array v8, v7, [Landroid/graphics/Paint;

    iput-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 158
    new-array v8, v7, [Landroid/graphics/Matrix;

    iput-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrixBackground:[Landroid/graphics/Matrix;

    .line 159
    new-array v7, v7, [Landroid/graphics/Path;

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPathBackground:[Landroid/graphics/Path;

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    .line 169
    iput-boolean v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 179
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 195
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 257
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 373
    iput v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    const/16 v14, 0xf

    .line 374
    iput v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->MAX_TRIES:I

    .line 375
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    move-object/from16 v15, p1

    .line 518
    iput-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    .line 519
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAboveAverage()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    .line 520
    iput-wide v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    move/from16 v7, p5

    .line 521
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    move/from16 v8, p11

    .line 522
    iput v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    .line 523
    iput v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    .line 524
    iput v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    if-eqz p15, :cond_1

    if-lez v4, :cond_1

    if-lez v5, :cond_1

    move v4, v12

    goto :goto_1

    :cond_1
    move v4, v11

    .line 525
    :goto_1
    iput-boolean v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    .line 526
    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 527
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFlags(I)V

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v11

    move/from16 v17, v12

    move-wide v11, v4

    goto :goto_3

    .line 529
    :cond_3
    :goto_2
    new-instance v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move/from16 v6, p12

    move-object v2, v3

    move/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v3, p7

    move-wide v11, v4

    move v5, v8

    move-object/from16 v4, p8

    move/from16 v8, p16

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/AnimatedFileDrawableStream;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZII)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    :goto_3
    const/16 v1, 0xf00

    if-eqz p2, :cond_8

    .line 531
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-nez v2, :cond_8

    .line 532
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move/from16 p8, p12

    move-object/from16 p2, v2

    move/from16 p4, v3

    move-wide/from16 p5, v4

    move-object/from16 p7, v6

    move-object/from16 p3, v13

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    move-object/from16 v4, p3

    iput-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 533
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    if-le v2, v14, :cond_5

    :cond_4
    move/from16 v2, v17

    goto :goto_4

    :cond_5
    move/from16 v2, v16

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ptrFail:Z

    .line 534
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_7

    aget v2, v4, v16

    if-gt v2, v1, :cond_6

    aget v2, v4, v17

    if-le v2, v1, :cond_7

    .line 535
    :cond_6
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 536
    iput-wide v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 538
    :cond_7
    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    move/from16 v2, v17

    .line 539
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    goto :goto_5

    :cond_8
    move-object v4, v13

    .line 541
    :goto_5
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-eqz v2, :cond_d

    .line 542
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move/from16 p8, p12

    move-object/from16 p2, v2

    move/from16 p4, v3

    move-object/from16 p3, v4

    move-wide/from16 p5, v5

    move-object/from16 p7, v7

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 543
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_a

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    if-le v2, v14, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    move/from16 v2, v16

    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ptrFail:Z

    .line 544
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_c

    aget v2, v4, v16

    if-gt v2, v1, :cond_b

    const/16 v17, 0x1

    aget v2, v4, v17

    if-le v2, v1, :cond_c

    .line 545
    :cond_b
    iget-wide v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 546
    iput-wide v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    goto :goto_7

    .line 548
    :cond_c
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache;

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    move-object/from16 p5, p15

    move-object/from16 p4, v0

    move-object/from16 p2, v1

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p8, v4

    move-object/from16 p3, v15

    invoke-direct/range {p2 .. p8}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    :cond_d
    :goto_7
    cmp-long v1, v9, v11

    if-eqz v1, :cond_e

    move/from16 v1, v16

    .line 552
    invoke-virtual {v0, v9, v10, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_e
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 16

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v15, p13

    .line 510
    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    return-void
.end method

.method private chekDestroyDecoder()V
    .locals 4

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-nez v0, :cond_0

    .line 224
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 225
    iput-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 236
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 238
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_3
    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 243
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    :cond_6
    return-void
.end method

.method public static native createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J
.end method

.method public static native destroyDecoder(J)V
.end method

.method private drawBitmap(Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Canvas;FF)V
    .locals 3

    .line 1011
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 1013
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p3, v2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    .line 1016
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1017
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x43870000    # 270.0f

    .line 1019
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p3, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1022
    :cond_2
    :goto_0
    invoke-virtual {p3, p4, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1023
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1, v2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static native getFrameAtTime(JJLandroid/graphics/Bitmap;[IILorg/telegram/ui/Components/AnimatedFileDrawable;)I
.end method

.method public static native getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I
.end method

.method public static native getVideoInfo(ILjava/lang/String;[I)V
.end method

.method public static getVideoInfo(Ljava/lang/String;[I)V
    .locals 1

    .line 1140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(ILjava/lang/String;[I)V

    return-void
.end method

.method private hasRoundRadius()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1111
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1112
    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$checkCacheCancel$1()V
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->cancelCreate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateParentViewWithSecond:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public static native prepareToSeek(J)V
.end method

.method private scheduleNextGetFrame()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 820
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame(ZZ)V

    return-void
.end method

.method private scheduleNextGetFrame(ZZ)V
    .locals 11

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_c

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduledForSeek:Z

    if-nez v0, :cond_1

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_c

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    if-nez v0, :cond_c

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_c

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 828
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    .line 829
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v3, p1

    int-to-long v5, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 831
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    if-eqz p1, :cond_9

    .line 832
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    if-eqz p1, :cond_7

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 836
    sget-object p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 838
    :cond_8
    sget-object p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 841
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez p1, :cond_a

    .line 842
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeQueue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_a
    if-eqz p2, :cond_b

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    .line 845
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 847
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p1, 0x1

    .line 849
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduledForSeek:Z

    :cond_c
    :goto_1
    return-void
.end method

.method public static native seekToMs(JJ[IZLorg/telegram/ui/Components/AnimatedFileDrawable;)V
.end method

.method public static native stopDecoder(J)V
.end method

.method private updateScaleFactor()V
    .locals 6

    .line 488
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    if-lez v0, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    if-lez v4, :cond_2

    const/4 v5, 0x1

    aget v3, v3, v5

    if-lez v3, :cond_2

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 489
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-lez v2, :cond_1

    float-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 491
    :cond_1
    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    return-void

    .line 494
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    return-void
.end method


# virtual methods
.method public addParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz p1, :cond_0

    .line 600
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public addSecondParentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1296
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 1299
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public checkCacheCancel()V
    .locals 3

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 625
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 631
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkRepeat()V
    .locals 4

    .line 351
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 356
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 357
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 358
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 362
    :cond_1
    iget v2, v2, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    if-lez v2, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    if-lt v3, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 367
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    return-void

    .line 369
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    return-void
.end method

.method public decoderFailed()Z
    .locals 1

    .line 1160
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ptrFail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V
    .locals 6

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 901
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, p8

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 906
    iget-object p6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 907
    iget-object p6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p6, p6, p8

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p8

    .line 908
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;ZJI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 912
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide/from16 v1, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 920
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v4, v4, p5

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    :goto_1
    if-eqz p2, :cond_3

    .line 921
    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, p5

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 924
    invoke-virtual {v0, v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    .line 927
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a

    .line 928
    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 929
    iget v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/4 v10, 0x2

    if-eqz p2, :cond_7

    .line 931
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 932
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 933
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v7, v7, v10

    if-eq v7, v9, :cond_5

    if-ne v7, v8, :cond_6

    :cond_5
    move v15, v2

    move v2, v1

    move v1, v15

    .line 938
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v1, v1

    div-float v1, v7, v1

    .line 939
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v2, v2

    div-float/2addr v7, v2

    :goto_3
    move v2, v1

    goto :goto_4

    .line 940
    :cond_7
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    if-eqz v11, :cond_a

    .line 941
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 942
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 943
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v7, v7, v10

    if-eq v7, v9, :cond_8

    if-ne v7, v8, :cond_9

    :cond_8
    move v15, v2

    move v2, v1

    move v1, v15

    .line 948
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 949
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v1, v1

    div-float v1, v7, v1

    iput v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 950
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v2, v2

    div-float/2addr v7, v2

    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 951
    iput-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    goto :goto_3

    .line 953
    :cond_a
    :goto_4
    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasRoundRadius()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz p2, :cond_b

    add-int/lit8 v1, p5, 0x1

    goto :goto_5

    :cond_b
    move v1, v6

    .line 955
    :goto_5
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->USE_BITMAP_SHADER:Z

    if-eqz v11, :cond_11

    .line 956
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v12, v11, v1

    if-nez v12, :cond_c

    .line 957
    new-instance v12, Landroid/graphics/BitmapShader;

    iget-object v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v12, v13, v14, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    aput-object v12, v11, v1

    .line 959
    :cond_c
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v11, v11, v1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 960
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    aget-object v12, v11, v1

    if-nez v12, :cond_d

    .line 962
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    aput-object v12, v11, v1

    .line 964
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 965
    iget v11, v4, Landroid/graphics/RectF;->left:F

    iget v13, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v11, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 966
    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v10, v11, v10

    const/4 v11, 0x0

    if-ne v10, v9, :cond_e

    const/high16 v8, 0x42b40000    # 90.0f

    .line 967
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 968
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v12, v11, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    :cond_e
    const/16 v9, 0xb4

    if-ne v10, v9, :cond_f

    const/high16 v8, 0x43340000    # 180.0f

    .line 970
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 971
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v12, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    :cond_f
    if-ne v10, v8, :cond_10

    const/high16 v8, 0x43870000    # 270.0f

    .line 973
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 974
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v12, v8, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 976
    :cond_10
    :goto_6
    invoke-virtual {v12, v2, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 978
    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v8, v8, v1

    invoke-virtual {v8, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 981
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    aget-object v9, v8, v1

    if-nez v9, :cond_12

    .line 983
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    aput-object v9, v8, v1

    .line 985
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v1, :cond_13

    if-eqz p2, :cond_17

    :cond_13
    if-nez p2, :cond_14

    .line 987
    iput-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 989
    :cond_14
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v8, v1

    if-ge v6, v8, :cond_15

    .line 990
    sget-object v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    mul-int/lit8 v10, v6, 0x2

    aget v1, v1, v6

    int-to-float v11, v1

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    int-to-float v1, v1

    .line 991
    aput v1, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 993
    :cond_15
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    if-eqz p2, :cond_16

    move-object v1, v4

    goto :goto_8

    .line 994
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    :goto_8
    sget-object v6, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v1, v6, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 996
    :cond_17
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->USE_BITMAP_SHADER:Z

    if-eqz v1, :cond_18

    .line 997
    invoke-virtual {v3, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 999
    :cond_18
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1000
    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-object v1, v4

    move v4, v2

    move-object v2, v5

    move v5, v7

    .line 1001
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawBitmap(Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Canvas;FF)V

    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_19
    move-object v1, v4

    move v4, v2

    move-object v2, v5

    move v5, v7

    .line 1005
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawBitmap(Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Canvas;FF)V

    :cond_1a
    :goto_9
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 772
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 773
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 776
    throw v0
.end method

.method public forceDisable()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    .line 1292
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDisable:Z

    return-void
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    .line 1065
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentProgress()F
    .locals 6

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 798
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 799
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-float v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 801
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x3

    aget v2, v0, v2

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getCurrentProgressMs()I
    .locals 4

    .line 805
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 806
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-int v0, v0

    return v0

    .line 808
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    return v0
.end method

.method public getDurationMs()I
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-nez p1, :cond_0

    .line 1251
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, p1

    .line 1253
    :goto_0
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-object v10

    .line 1259
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    if-nez v2, :cond_2

    .line 1260
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v12

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v4, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1262
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I

    .line 1263
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 1264
    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1265
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 1266
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1267
    invoke-virtual {v11, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1269
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    return-object v10
.end method

.method public getFps()I
    .locals 2

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getFrameAtTime(JZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 569
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0, v7}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->reset()V

    :cond_1
    if-nez p3, :cond_2

    .line 577
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    move-object v6, p0

    move-wide v2, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJ[IZLorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 579
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v0, v7

    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p3, :cond_3

    .line 582
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    move-object v7, p0

    move-object v4, v2

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JJLandroid/graphics/Bitmap;[IILorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    move-object v2, v4

    goto :goto_0

    .line 584
    :cond_3
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    return-object v2

    :cond_4
    :goto_1
    return-object v10
.end method

.method public getIntrinsicHeight()I
    .locals 4

    .line 868
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 870
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 872
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 4

    .line 879
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 881
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 883
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 1027
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumHeight()I
    .locals 4

    .line 1032
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1034
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getMinimumWidth()I
    .locals 4

    .line 1041
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1043
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1220
    iget-wide v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1223
    :cond_0
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1224
    iget-object v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_1

    .line 1225
    iget-object v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v0, v15

    aget v0, v0, v14

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1227
    :cond_1
    iget-wide v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    iget-object v2, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    iget v6, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v7, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I

    .line 1228
    iget-wide v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    cmp-long v2, v0, v11

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    iget-object v2, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v2, v3

    if-eqz v2, :cond_2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    :cond_2
    return v15

    .line 1231
    :cond_3
    iget v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    iget-object v1, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_4

    .line 1232
    iget v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    add-int/2addr v0, v14

    iput v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_4

    return v15

    .line 1237
    :cond_4
    iput v1, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    .line 1238
    invoke-virtual {v10, v15}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1239
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 1240
    iget v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1241
    invoke-virtual {v13, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1242
    iget-object v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1243
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 1244
    iget-object v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v0, v0, v3

    int-to-long v0, v0

    iput-wide v0, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    return v14
.end method

.method public getNextFrame(Z)Landroid/graphics/Bitmap;
    .locals 11

    .line 1164
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 1167
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1171
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1174
    :cond_2
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    const/4 v6, 0x0

    move-object v10, p0

    move v9, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I

    .line 1175
    iget-object p1, v10, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getParents()Ljava/util/ArrayList;
    .locals 1

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProgressMs()I
    .locals 2

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getRenderingHeight()I
    .locals 1

    .line 1360
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    return v0
.end method

.method public getRenderingWidth()I
    .locals 1

    .line 1356
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1152
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hasBitmap()Z
    .locals 1

    .line 1120
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 252
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isLoadingStream()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isWaitingForLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecycled()Z
    .locals 2

    .line 1156
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderTryCount:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 863
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return v0
.end method

.method public makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 19

    move-object/from16 v0, p0

    .line 1129
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1130
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget v9, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getParentObject()Ljava/lang/Object;

    move-result-object v12

    iget-wide v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v16, v3

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    :goto_0
    const/16 v17, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    goto :goto_2

    .line 1132
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget v10, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v17, v3

    goto :goto_1

    :cond_2
    move/from16 v17, v2

    :goto_1
    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v18}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    move-object v4, v5

    .line 1134
    :goto_2
    iget-object v1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v5, v2

    aput v6, v1, v2

    .line 1135
    aget v2, v5, v3

    aput v2, v1, v3

    return-object v4
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 890
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 891
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 8

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    return-void
.end method

.method public recycle()V
    .locals 7

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 702
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 706
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 708
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 709
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 710
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    .line 712
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 713
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 714
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 715
    iput-wide v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 718
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 727
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 728
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 729
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 730
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 733
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_3

    .line 734
    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 735
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 737
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 738
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    goto :goto_0

    .line 740
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    .line 742
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_5

    .line 743
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 744
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    .line 746
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 4

    .line 1213
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1214
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    :cond_0
    return-void
.end method

.method public removeParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 609
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    .line 610
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-nez p1, :cond_0

    .line 611
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 614
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public removeSecondParentView(Landroid/view/View;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 650
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    return-void

    .line 653
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    :cond_1
    return-void
.end method

.method public replaceAnimatedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1079
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 1082
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1083
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    return-void
.end method

.method public resetStream(Z)V
    .locals 4

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 751
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 753
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 755
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stopDecoder(J)V

    return-void

    .line 757
    :cond_1
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->prepareToSeek(J)V

    :cond_2
    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    return-void
.end method

.method public seekTo(JZZ)V
    .locals 5

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 674
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const/4 p1, 0x0

    .line 675
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduledForSeek:Z

    .line 676
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 677
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->prepareToSeek(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 679
    :cond_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz p2, :cond_2

    .line 680
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 681
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    if-eqz p3, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    const/16 p2, 0xa

    .line 682
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    :cond_2
    if-eqz p4, :cond_4

    .line 684
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p2, :cond_4

    .line 685
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    .line 686
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    const/4 p3, 0x1

    if-nez p2, :cond_3

    .line 687
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame(ZZ)V

    goto :goto_2

    .line 689
    :cond_3
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    .line 692
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public seekToSync(J)V
    .locals 8

    .line 696
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v6, 0x1

    move-object v7, p0

    move-wide v3, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJ[IZLorg/telegram/ui/Components/AnimatedFileDrawable;)V

    return-void
.end method

.method public setActualDrawRect(FFFF)V
    .locals 2

    add-float/2addr p4, p2

    add-float/2addr p3, p1

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1090
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    .line 1091
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 661
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 663
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_0
    return-void
.end method

.method public setInvalidateParentViewWithSecond(Z)V
    .locals 0

    .line 637
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateParentViewWithSecond:Z

    return-void
.end method

.method public setIsWebmSticker(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 559
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    :cond_0
    return-void
.end method

.method public setLimitFps(Z)V
    .locals 0

    .line 1186
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1188
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->PRERENDER_FRAME:Z

    :cond_0
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 593
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 5

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-nez v0, :cond_0

    .line 1098
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    .line 1100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    array-length v4, v3

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1103
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v0, :cond_2

    aget v0, p1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    aget v3, v3, v2

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    .line 1104
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 1106
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    aget v3, p1, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setStartEndTime(JJ)V
    .locals 2

    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1144
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    long-to-float p3, p3

    div-float/2addr p3, v1

    .line 1145
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    .line 1146
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgressMs()I

    move-result p3

    int-to-long p3, p3

    cmp-long p3, p3, p1

    if-gez p3, :cond_0

    const/4 p3, 0x1

    .line 1147
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_0
    return-void
.end method

.method public setUseSharedQueue(Z)V
    .locals 1

    .line 763
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v0, :cond_0

    return-void

    .line 766
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    return-void
.end method

.method public skipNextFrame(Z)V
    .locals 11

    .line 1179
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 1182
    :cond_0
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p0

    move v9, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZLorg/telegram/ui/Components/AnimatedFileDrawable;)I

    return-void
.end method

.method public start()V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 790
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 6

    .line 1310
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 1311
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1312
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void

    .line 1313
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-ltz p3, :cond_3

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    if-nez p3, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-gez p3, :cond_3

    .line 1314
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1316
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    move p3, v1

    .line 1317
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v2, v2

    if-ge p3, v2, :cond_2

    .line 1318
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1319
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1320
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1322
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1323
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1324
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 1325
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    .line 1327
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1328
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void

    .line 1330
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void

    .line 1332
    :cond_4
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p3, :cond_6

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-ltz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_6

    .line 1333
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1335
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    move p3, v1

    .line 1336
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v2, v2

    if-ge p3, v2, :cond_5

    .line 1337
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1338
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1339
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1341
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1342
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1343
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 1344
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    .line 1346
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1347
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_6
    return-void
.end method
