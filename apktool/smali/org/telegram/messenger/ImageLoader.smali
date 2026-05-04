.class public Lorg/telegram/messenger/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageLoader$MessageThumb;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;,
        Lorg/telegram/messenger/ImageLoader$HttpImageTask;,
        Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;,
        Lorg/telegram/messenger/ImageLoader$HttpFileTask;,
        Lorg/telegram/messenger/ImageLoader$CacheImage;,
        Lorg/telegram/messenger/ImageLoader$CacheOutTask;,
        Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;
    }
.end annotation


# static fields
.field public static final AUTOPLAY_FILTER:Ljava/lang/String; = "g"

.field public static final CACHE_TYPE_CACHE:I = 0x1

.field public static final CACHE_TYPE_ENCRYPTED:I = 0x2

.field public static final CACHE_TYPE_NONE:I = 0x0

.field private static final DEBUG_MODE:Z = false

.field private static volatile Instance:Lorg/telegram/messenger/ImageLoader;

.field private static bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static bytesThumbLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static header:[B

.field private static headerThumb:[B


# instance fields
.field private artworkTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapUseCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

.field private cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field cachedAnimatedFileDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedFileDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private canForce8888:Z

.field private currentArtworkTasksCount:I

.field private currentHttpFileLoadTasksCount:I

.field private currentHttpTasksCount:I

.field private fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private forceLoadingImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasksByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$HttpImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreRemoval:Ljava/lang/String;

.field private imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

.field public imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByTag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByUrlPframe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field public imageLoadingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastCacheOutTime:J

.field private lastImageNum:I

.field private lottieMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private memCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private replacedBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retryHttpsTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private smallImagesMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private telegramPath:Ljava/io/File;

.field private testWebFile:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/WebFile;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGenerateTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private waitingForQualityThumb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForQualityThumbByTag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5pzOn-4mlc2UB3b-035Y4LK8wxI(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$preloadArtwork$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQzXsHWYo-3PUc-sph8Gz5xwNqA(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelLoadingForImageReceiver$4(ZLorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXVNzMGCigWZUD9ipC-PDKVggJ4(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$artworkLoadError$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ij_XXAnzLBfK49N6uILSLD4NzjQ(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$14(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IqkU83djE7dWgU-VLbegjgYcBoI(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KZJO5poeWd6YUYLdP_Jwk4-i6hs(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2-rfu6NFDT0o0J9HOzai6sGFR4(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$httpFileLoadError$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYFLfE8erkgwTCFu6aSay0gFacM(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidFailedLoad$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bac-e6vELOUCoq4DLR0nHnQHBEk(Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    .line 2348
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    if-eqz p1, :cond_0

    .line 2350
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dSNTQmbibPowcNwdjJHmATMrmj0(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p19}, Lorg/telegram/messenger/ImageLoader;->lambda$createLoadOperationForImageReceiver$7(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dtuIA-oVbqpFjquXLnginNz_XsY(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$replaceImageInCache$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOJ-HwLnGci070vSdd2ZIzBwZVo(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 2

    .line 2377
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2378
    new-array v1, p0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLoader;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 2382
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array p0, p0, [Ljava/nio/file/CopyOption;

    invoke-static {p1, v0, p0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2384
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLjMfyTb6fmrcWLtjkMA4djFTZA(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$changeFileLoadingPriorityForImageReceiver$3(Lorg/telegram/messenger/ImageReceiver;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kr9qTFMbiSokVkBVqczS3tzn6Xc(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidLoaded$11(Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zDj_e1y_Q_6UOqUHMH9mM4MT_1s(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelForceLoadingForImageReceiver$6(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetartworkTasks(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbitmapUseCounts(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheOutQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/DispatchQueuePriority;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheThumbOutQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanForce8888(Lorg/telegram/messenger/ImageLoader;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfileProgresses(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforceLoadingImages(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethttpTasks(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreRemoval(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoadQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoadingByTag(Lorg/telegram/messenger/ImageLoader;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoadingByUrl(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoadingByUrlPframe(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlottieMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsmallImagesMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettestWebFile(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthumbGenerateTasks(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwallpaperMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastCacheOutTime(Lorg/telegram/messenger/ImageLoader;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$martworkLoadError(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->artworkLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfileDidFailedLoad(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfileDidLoaded(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFromLottieCache(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhttpFileLoadError(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAnimatedAvatar(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrunArtworkTasks(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunHttpTasks(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msizeOfBitmapDrawable(Lorg/telegram/messenger/ImageLoader;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->sizeOfBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetbytesLocal()Ljava/lang/ThreadLocal;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetbytesThumbLocal()Ljava/lang/ThreadLocal;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetheader()[B
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetheaderThumb()[B
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcutFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/ImageLoader;->cutFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0xc

    .line 138
    new-array v1, v0, [B

    sput-object v1, Lorg/telegram/messenger/ImageLoader;->header:[B

    .line 139
    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    const/4 v0, 0x0

    .line 2030
    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    .line 121
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingKeys:Ljava/util/HashSet;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    .line 128
    new-instance v0, Lorg/telegram/DispatchQueuePriority;

    const-string v1, "cacheOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/DispatchQueuePriority;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    .line 129
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cacheThumbOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 130
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "thumbGeneratingQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 131
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "imageLoadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    .line 133
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 141
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 144
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    .line 146
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    .line 149
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 153
    iput-wide v2, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    .line 154
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 156
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2046
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 2048
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v3, 0xc0

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2050
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    .line 2055
    :goto_1
    div-int/lit8 v1, v1, 0x7

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x100000

    mul-int/2addr v1, v2

    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 2060
    new-instance v4, Lorg/telegram/messenger/ImageLoader$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/ImageLoader$1;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 2082
    new-instance v3, Lorg/telegram/messenger/ImageLoader$2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$2;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 2104
    new-instance v2, Lorg/telegram/messenger/ImageLoader$3;

    const/4 v3, 0x4

    div-int/2addr v1, v3

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/ImageLoader$3;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    .line 2111
    new-instance v1, Lorg/telegram/messenger/ImageLoader$4;

    const/high16 v2, 0xa00000

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/ImageLoader$4;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    .line 2143
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2144
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 2145
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2147
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 2149
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2152
    :cond_2
    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2153
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    .line 2157
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/ImageLoader$5;

    invoke-direct {v4, p0, v0}, Lorg/telegram/messenger/ImageLoader$5;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2287
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    .line 2289
    new-instance v0, Lorg/telegram/messenger/ImageLoader$6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$6;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    .line 2304
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2305
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2306
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2307
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2308
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2309
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2310
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2311
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2312
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2313
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2314
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2316
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v2, v4, :cond_4

    .line 2317
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_4

    .line 2319
    :cond_4
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    :catchall_0
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    return-void
.end method

.method private artworkLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3692
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z
    .locals 5

    const/4 v0, 0x1

    .line 2623
    const-string v1, "000000000_999999.f"

    const-string v2, "000000000_999999_temp.f"

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 2624
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2625
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    if-eq p3, v4, :cond_4

    const/4 v4, 0x5

    if-eq p3, v4, :cond_4

    const/4 v4, 0x6

    if-ne p3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 2630
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2631
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 2633
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2634
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p1, v3

    move-object p3, p1

    goto :goto_1

    .line 2627
    :cond_4
    :goto_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2628
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    const/16 p2, 0x400

    .line 2636
    new-array p2, p2, [B

    .line 2637
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 2638
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rws"

    invoke-direct {v1, p3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2640
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2642
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    .line 2643
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 2644
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    return v0

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v1

    .line 2649
    :goto_2
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    .line 2653
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 2656
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return p1

    :goto_4
    if-eqz v3, :cond_6

    .line 2653
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 2656
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2658
    :cond_6
    :goto_5
    throw p1
.end method

.method private createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v9, p10

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    if-nez p5, :cond_0

    goto :goto_2

    .line 2956
    :cond_0
    invoke-virtual {v6, v9}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2958
    iget v0, v1, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    invoke-virtual {v6, v0, v9}, Lorg/telegram/messenger/ImageReceiver;->setTag(II)V

    .line 2959
    iget v4, v1, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    add-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 2961
    iput v2, v1, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    :cond_1
    move v5, v0

    .line 2966
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v15

    .line 2967
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v12

    .line 2968
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    .line 2969
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->isShouldGenerateQualityThumb()Z

    move-result v16

    .line 2970
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v13

    if-nez v9, :cond_2

    .line 2971
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v3

    goto :goto_0

    :cond_2
    move v11, v2

    .line 2973
    :goto_0
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v17, p4

    move-object/from16 v10, p5

    move-object/from16 v8, p6

    move-wide/from16 v19, p7

    move/from16 v18, p9

    move/from16 v2, p11

    move/from16 v7, p12

    invoke-direct/range {v0 .. v20}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V

    .line 3287
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x1

    :goto_1
    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 3288
    invoke-virtual {v6, v0}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 177
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v2, "b"

    invoke-static {p0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static cutFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x40

    .line 2906
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2908
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static decompressGzip(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    .line 841
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 846
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 841
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v1
.end method

.method private fileDidFailedLoad(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 3765
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    .line 3707
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static fileToSize(Ljava/lang/String;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4080
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 4081
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4082
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4083
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4084
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4090
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    const-wide/32 v3, -0x80000000

    .line 4091
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 v5, -0x80000000

    .line 4092
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 4093
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    const/4 v5, 0x0

    .line 4094
    new-array v6, v5, [B

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 4096
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4097
    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4098
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4099
    iput v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v7, 0x64

    if-gt v2, v7, :cond_1

    if-gt v0, v7, :cond_1

    .line 4101
    const-string/jumbo v0, "s"

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v7, 0x140

    if-gt v2, v7, :cond_2

    if-gt v0, v7, :cond_2

    .line 4103
    const-string/jumbo v0, "m"

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v7, 0x320

    if-gt v2, v7, :cond_3

    if-gt v0, v7, :cond_3

    .line 4105
    const-string/jumbo v0, "x"

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v7, 0x500

    if-gt v2, v7, :cond_4

    if-gt v0, v7, :cond_4

    .line 4107
    const-string/jumbo v0, "y"

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_0

    .line 4109
    :cond_4
    const-string/jumbo v0, "w"

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4114
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz p1, :cond_5

    .line 4117
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 4119
    :cond_5
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long p1, v7, v3

    if-eqz p1, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 4121
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4122
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4123
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    long-to-int p0, p0

    iput p0, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    return-object v6

    :catch_0
    move-exception p0

    .line 4086
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 4056
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4059
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4061
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4062
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_1

    .line 4064
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4065
    array-length p0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4068
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3642
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3643
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 3644
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3645
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 3647
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getMediaKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3648
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getMediaDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 4

    .line 4484
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4485
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 4486
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4487
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4492
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_3

    .line 4493
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_6

    .line 4494
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 4495
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4496
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4502
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5

    .line 4503
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_6

    .line 4504
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 4505
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4506
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4512
    :cond_5
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v0, :cond_6

    .line 4513
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 4

    .line 4520
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4521
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 4522
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4523
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4528
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_3

    .line 4529
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_6

    .line 4530
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 4531
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4532
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4538
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_5

    .line 4539
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_6

    .line 4540
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 4541
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4542
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4548
    :cond_5
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v0, :cond_6

    .line 4549
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateMessageThumb(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/ImageLoader$MessageThumb;
    .locals 17

    move-object/from16 v0, p0

    .line 4565
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 4567
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v7, :cond_1

    array-length v7, v7

    if-eqz v7, :cond_1

    .line 4568
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 4570
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4571
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4572
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4573
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4574
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4575
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4577
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 4578
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4579
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4580
    invoke-static {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 4581
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v10, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Lorg/telegram/ui/Components/Point;->y:F

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v6

    aput-object v1, v12, v5

    aput-object v10, v12, v3

    aput-object v11, v12, v2

    const-string v1, "%d_%d@%d_%d_b"

    invoke-static {v8, v1, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4582
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4583
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v7, v7

    invoke-static {v2, v4, v3, v7, v6}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 4585
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v13

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4586
    iget v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v8, v2, v0, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v8, :cond_0

    .line 4588
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    .line 4591
    :cond_0
    new-instance v0, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$MessageThumb;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0

    .line 4595
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_7

    .line 4596
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_7

    .line 4597
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4598
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v9, :cond_6

    .line 4599
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v10, 0x140

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 4603
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4604
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto :goto_2

    :cond_2
    move v9, v6

    .line 4606
    :goto_1
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 4607
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v10, :cond_3

    .line 4608
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .line 4609
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 4610
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move v9, v6

    move v10, v9

    .line 4616
    :goto_2
    invoke-static {v9, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v9

    .line 4617
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v0, v8}, Lorg/telegram/messenger/ImageLocation;->getStrippedKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget v12, v9, Lorg/telegram/ui/Components/Point;->x:F

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v9, Lorg/telegram/ui/Components/Point;->y:F

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v11, v14, v6

    aput-object v12, v14, v5

    aput-object v13, v14, v3

    const-string v11, "%s_false@%d_%d_b"

    invoke-static {v10, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 4618
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4619
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-static {v8, v4}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 4621
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4622
    iget v0, v9, Lorg/telegram/ui/Components/Point;->x:F

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, v9, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v11, v0, v1, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v11, :cond_5

    .line 4624
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move-object v11, v0

    .line 4627
    :cond_5
    new-instance v0, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v10, v1}, Lorg/telegram/messenger/ImageLoader$MessageThumb;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v4
.end method

.method private generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2933
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 2934
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    if-nez v0, :cond_2

    .line 2936
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 2937
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 3655
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3656
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 3657
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3658
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public static getHttpFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3806
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 3810
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3811
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4276
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 4277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    move-object p0, v0

    :cond_0
    const/16 v0, 0x2e

    .line 4280
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 4282
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 4284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static getInstance()Lorg/telegram/messenger/ImageLoader;
    .locals 2

    .line 2033
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_1

    .line 2035
    const-class v1, Lorg/telegram/messenger/ImageLoader;

    monitor-enter v1

    .line 2036
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageLoader;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2040
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method private getPublicStorageDir()Ljava/io/File;
    .locals 4

    .line 2606
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2607
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2608
    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2609
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2610
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2611
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1782
    array-length v2, v0

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    sget-object v4, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v4, v4

    add-int/2addr v2, v4

    sget-object v4, Lorg/telegram/messenger/Bitmaps;->footer:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 1783
    sget-object v4, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1784
    array-length v6, v4

    if-lt v6, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_1

    .line 1786
    new-array v4, v2, [B

    .line 1787
    sget-object v6, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1789
    :cond_1
    sget-object v6, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    sget-object v6, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v6, v6

    array-length v7, v0

    sub-int/2addr v7, v3

    invoke-static {v0, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1791
    sget-object v6, Lorg/telegram/messenger/Bitmaps;->footer:[B

    sget-object v7, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v7, v7

    array-length v9, v0

    add-int/2addr v7, v9

    sub-int/2addr v7, v3

    sget-object v3, Lorg/telegram/messenger/Bitmaps;->footer:[B

    array-length v3, v3

    invoke-static {v6, v8, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xa4

    const/4 v6, 0x1

    .line 1793
    aget-byte v7, v0, v6

    aput-byte v7, v4, v3

    const/4 v3, 0x2

    .line 1794
    aget-byte v0, v0, v3

    const/16 v3, 0xa6

    aput-byte v0, v4, v3

    .line 1796
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1797
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v6, v8

    .line 1798
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1799
    invoke-static {v4, v8, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v6, :cond_5

    .line 1801
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1802
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1803
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1805
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    const v8, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v8, v8, v4, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v4, 0x0

    .line 1806
    invoke-virtual {v3, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1807
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1808
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1809
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1810
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1811
    invoke-virtual {v3, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1812
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v11, v2

    goto :goto_4

    :cond_5
    move-object v11, v0

    :goto_4
    if-eqz v11, :cond_6

    .line 1815
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1816
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_6
    return-object v11
.end method

.method public static hasAutoplayFilter(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 164
    :cond_0
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 165
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 166
    const-string v2, "g"

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "pframe"

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private httpFileLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3677
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAnimatedAvatar(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1760
    const-string v0, "avatar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isPFrame(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1764
    const-string/jumbo v0, "pframe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isSdCardPath(Ljava/io/File;)Z
    .locals 1

    .line 184
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$artworkLoadError$10(Ljava/lang/String;)V
    .locals 2

    .line 3693
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3697
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    if-eqz v0, :cond_1

    .line 3699
    new-instance v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;->-$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3700
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3702
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$cancelForceLoadingForImageReceiver$6(Ljava/lang/String;)V
    .locals 1

    .line 2949
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$cancelLoadingForImageReceiver$4(ZLorg/telegram/messenger/ImageReceiver;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    if-lez v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    move v2, v0

    .line 2839
    :cond_2
    :goto_1
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 2842
    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V

    .line 2844
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_4

    .line 2846
    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$changeFileLoadingPriorityForImageReceiver$3(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    move v2, v0

    .line 2800
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2802
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_2

    .line 2804
    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->changePriority(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V
    .locals 2

    .line 2346
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Landroid/util/SparseArray;

    move-result-object v0

    .line 2347
    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createLoadOperationForImageReceiver$7(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v9, p4

    move-object/from16 v4, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p13

    move-object/from16 v13, p16

    const/4 v6, 0x2

    if-eq v1, v6, :cond_6

    .line 2976
    iget-object v7, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2977
    iget-object v8, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2978
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v3, :cond_3

    if-ne v3, v8, :cond_1

    move/from16 v6, p6

    .line 2981
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageReceiverGuid(Lorg/telegram/messenger/ImageReceiver;I)V

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const/16 v18, 0x0

    :cond_0
    :goto_0
    const/16 v20, 0x1

    goto :goto_2

    :cond_1
    move/from16 v6, p6

    if-ne v3, v7, :cond_2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const/16 v18, 0x0

    if-nez v8, :cond_0

    move/from16 v7, p8

    move v8, v6

    move-object/from16 v6, p7

    .line 2985
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->replaceImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const/16 v18, 0x0

    .line 2989
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const/16 v18, 0x0

    :goto_1
    move/from16 v20, v18

    :goto_2
    if-nez v20, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v5, p3

    move/from16 v8, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v3, v17

    .line 2994
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v20, 0x1

    :cond_4
    if-nez v20, :cond_5

    if-eqz v16, :cond_5

    move-object/from16 v5, p3

    move-object/from16 v4, p5

    move/from16 v8, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v3, v16

    .line 2998
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move/from16 v3, v20

    goto :goto_3

    :cond_6
    move-object/from16 v6, p7

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_3
    if-nez v3, :cond_16

    .line 3009
    iget-object v3, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    const-string v7, "athumb"

    const-string v8, "_"

    const/16 v16, 0x1

    const/16 v17, 0x4

    if-eqz v3, :cond_b

    .line 3011
    const-string v9, "http"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 3013
    const-string/jumbo v9, "thumb://"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v12, ":"

    if-eqz v9, :cond_8

    const/16 v9, 0x8

    .line 3014
    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v9, :cond_7

    .line 3016
    new-instance v12, Ljava/io/File;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    move/from16 v3, v16

    goto :goto_5

    .line 3018
    :cond_8
    const-string/jumbo v9, "vthumb://"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x9

    .line 3019
    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v9, :cond_7

    .line 3021
    new-instance v12, Ljava/io/File;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 3024
    :cond_9
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move/from16 v3, v18

    const/4 v12, 0x0

    :goto_5
    move v2, v1

    move-object/from16 v22, v7

    move/from16 v1, v18

    :goto_6
    const/4 v5, 0x2

    goto/16 :goto_b

    :cond_b
    if-nez v1, :cond_19

    if-eqz p10, :cond_19

    .line 3037
    instance-of v3, v11, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_c

    .line 3038
    move-object v3, v11

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3039
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    .line 3040
    iget-object v15, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v22, v7

    .line 3041
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    move-object/from16 p13, v12

    iget-object v12, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v7

    .line 3042
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMediaType()I

    move-result v3

    move-object/from16 v12, p13

    move-object/from16 v23, v7

    move v7, v3

    move/from16 v3, v18

    goto :goto_8

    :cond_c
    move-object/from16 v22, v7

    if-eqz v12, :cond_e

    .line 3046
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    move/from16 v7, v16

    invoke-virtual {v3, v12, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 3047
    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x2

    goto :goto_7

    :cond_d
    const/4 v7, 0x3

    :goto_7
    move-object/from16 v23, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    goto :goto_8

    :cond_e
    move/from16 v3, v18

    move v7, v3

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_8
    if-eqz v12, :cond_18

    if-eqz p14, :cond_f

    .line 3063
    new-instance v11, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "q_"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    move/from16 v1, v18

    const/4 v11, 0x0

    goto :goto_9

    :cond_10
    const/4 v1, 0x1

    .line 3072
    :goto_9
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3073
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    const/4 v2, 0x0

    :cond_12
    if-nez v2, :cond_13

    move-object/from16 v2, v23

    :cond_13
    if-nez v11, :cond_17

    .line 3083
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 3084
    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v5, :cond_14

    .line 3086
    new-instance v5, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader-IA;)V

    .line 3087
    invoke-static {v5, v12}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fputparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 3088
    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fputfilter(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)V

    .line 3089
    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fputbig(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Z)V

    .line 3090
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    :cond_14
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3093
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3094
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverGuidsArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    :cond_15
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3097
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p15, :cond_16

    .line 3098
    invoke-direct {v0, v7, v2, v5}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    return-void

    :cond_16
    move-object v9, v0

    goto/16 :goto_2b

    :cond_17
    move/from16 v2, p1

    move-object v12, v11

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_18
    move/from16 v2, p1

    move/from16 v1, v18

    const/4 v3, 0x1

    :goto_a
    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_b

    :cond_19
    move-object/from16 v22, v7

    move/from16 v2, p1

    move/from16 v1, v18

    move v3, v1

    goto :goto_a

    :goto_b
    if-eq v2, v5, :cond_16

    .line 3106
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result v7

    move v9, v3

    .line 3107
    new-instance v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v11, 0x0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader-IA;)V

    .line 3108
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v11

    if-nez v11, :cond_1a

    move/from16 v11, v18

    goto :goto_c

    :cond_1a
    const/4 v11, 0x1

    :goto_c
    iput v11, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-nez p10, :cond_1f

    .line 3110
    iget v11, v10, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq v11, v5, :cond_1e

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_1b

    goto :goto_e

    .line 3112
    :cond_1b
    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v11, :cond_1f

    .line 3114
    const-string/jumbo v14, "vthumb"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f

    const-string/jumbo v14, "thumb"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f

    .line 3115
    const-string/jumbo v14, "jpg"

    invoke-static {v11, v14}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3116
    const-string/jumbo v14, "webm"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string/jumbo v14, "mp4"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string v14, "gif"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto :goto_d

    .line 3118
    :cond_1c
    const-string/jumbo v11, "tgs"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, 0x1

    .line 3119
    iput v11, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_f

    .line 3117
    :cond_1d
    :goto_d
    iput v5, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_f

    .line 3111
    :cond_1e
    :goto_e
    iput v5, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_1f
    :goto_f
    if-nez v12, :cond_41

    .line 3127
    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-wide/16 p13, 0x0

    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    const-string v15, "g"

    if-nez v14, :cond_20

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v11, :cond_21

    :cond_20
    move-object/from16 v2, p2

    move/from16 v14, p17

    move-object v9, v0

    move/from16 p4, v1

    move-object v4, v15

    const/4 v1, 0x3

    const/4 v11, 0x1

    goto/16 :goto_20

    .line 3129
    :cond_21
    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v11, :cond_23

    .line 3130
    iput-object v11, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 3131
    iget-object v7, v11, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_22

    const/4 v7, 0x1

    goto :goto_10

    :cond_22
    move/from16 v7, v18

    .line 3132
    :goto_10
    new-instance v12, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    move-object/from16 v11, p2

    invoke-direct {v12, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move/from16 v14, p17

    move-object v9, v0

    move v0, v1

    move/from16 v21, v7

    move-object v2, v11

    move-object v4, v15

    const/4 v1, 0x3

    const/4 v11, 0x1

    :goto_11
    move-wide/from16 v7, p13

    goto/16 :goto_21

    :cond_23
    move-object/from16 v11, p2

    .line 3133
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, ".svg"

    const-string v5, "application/x-tgwallpattern"

    move/from16 p4, v1

    const-string v1, "application/x-tgsticker"

    const-string v2, "application/x-tgsdice"

    if-nez v12, :cond_25

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_25

    move-object/from16 p10, v5

    if-nez p17, :cond_26

    cmp-long v12, p18, p13

    if-lez v12, :cond_26

    iget-object v12, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-nez v12, :cond_26

    if-eqz v7, :cond_24

    goto :goto_12

    :cond_24
    move-object/from16 v5, p10

    :cond_25
    move/from16 v12, p17

    goto/16 :goto_15

    .line 3134
    :cond_26
    :goto_12
    new-instance v7, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_27

    move/from16 v12, p17

    const/4 v4, 0x1

    goto :goto_13

    :cond_27
    move/from16 v12, p17

    const/4 v8, 0x2

    if-ne v12, v8, :cond_28

    .line 3138
    new-instance v7, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".enc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_28
    move/from16 v4, p4

    .line 3140
    :goto_13
    iget-object v5, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_2a

    .line 3141
    instance-of v8, v5, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v8, :cond_2b

    .line 3142
    check-cast v5, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 3143
    iget-object v1, v5, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_29

    const/4 v9, 0x1

    :cond_29
    const/4 v1, 0x5

    .line 3146
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_2a
    :goto_14
    move/from16 v21, v9

    move-object v2, v11

    move v14, v12

    const/4 v1, 0x3

    const/4 v11, 0x1

    move-object v9, v0

    move v0, v4

    move-object v12, v7

    move-object v4, v15

    goto/16 :goto_11

    .line 3147
    :cond_2b
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    .line 3148
    iput v2, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move-object v9, v0

    move/from16 v21, v2

    move v0, v4

    move v14, v12

    move-object v4, v15

    const/4 v1, 0x3

    move-object v12, v7

    move-object v2, v11

    move-wide/from16 v7, p13

    move/from16 v11, v21

    goto/16 :goto_21

    :cond_2c
    const/4 v2, 0x1

    .line 3150
    iget-object v5, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3151
    iput v2, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_14

    .line 3152
    :cond_2d
    iget-object v1, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v5, p10

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x3

    .line 3153
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_14

    :cond_2e
    const/4 v1, 0x3

    .line 3155
    iget-object v2, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    .line 3156
    invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3157
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_14

    .line 3161
    :goto_15
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v7, ".temp"

    if-eqz v4, :cond_39

    move/from16 v21, v9

    .line 3163
    instance-of v9, v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v9, :cond_2f

    .line 3164
    new-instance v9, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v9, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_16

    .line 3165
    :cond_2f
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 3166
    new-instance v9, Ljava/io/File;

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v9, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_16

    .line 3168
    :cond_30
    new-instance v9, Ljava/io/File;

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v9, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3170
    :goto_16
    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_32

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    goto :goto_17

    :cond_31
    move-object/from16 p10, v15

    goto :goto_18

    :cond_32
    :goto_17
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_31

    .line 3171
    new-instance v9, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    move-object/from16 p10, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_18
    move-object v12, v9

    .line 3173
    instance-of v0, v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v0, :cond_34

    .line 3174
    move-object v0, v4

    check-cast v0, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 3175
    iget-object v0, v0, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_33

    const/16 v21, 0x1

    :cond_33
    const/4 v1, 0x5

    .line 3178
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move/from16 v7, v21

    :goto_19
    const/4 v1, 0x3

    goto :goto_1b

    .line 3179
    :cond_34
    iget-object v0, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v2, 0x1

    .line 3180
    iput v2, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move v7, v2

    goto :goto_19

    :cond_35
    const/4 v2, 0x1

    .line 3182
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3183
    iput v2, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v1, 0x3

    goto :goto_1a

    .line 3184
    :cond_36
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x3

    .line 3185
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_1a

    :cond_37
    const/4 v1, 0x3

    .line 3187
    iget-object v0, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 3188
    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3189
    iput v1, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_38
    :goto_1a
    move/from16 v7, v21

    .line 3192
    :goto_1b
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-object/from16 v2, p2

    move/from16 v0, p4

    move/from16 v14, p17

    move/from16 v21, v7

    move-wide v7, v4

    move-object/from16 v4, p10

    goto/16 :goto_21

    :cond_39
    move/from16 v21, v9

    move-object/from16 p10, v15

    const/4 v1, 0x3

    .line 3193
    iget-object v0, v10, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v0, :cond_3a

    .line 3194
    new-instance v12, Ljava/io/File;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-direct {v12, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v11, 0x1

    move-object/from16 v9, p0

    move/from16 v0, p4

    move-object/from16 v4, p10

    move-wide/from16 v7, p13

    move/from16 v14, p17

    goto/16 :goto_21

    :cond_3a
    move-object/from16 v2, p2

    move/from16 v12, p17

    const/4 v11, 0x1

    if-ne v12, v11, :cond_3b

    .line 3197
    new-instance v0, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1c
    move-object/from16 v9, p0

    goto :goto_1d

    .line 3199
    :cond_3b
    new-instance v0, Ljava/io/File;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1c

    .line 3201
    :goto_1d
    invoke-direct {v9, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    move-object/from16 v4, p10

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v5, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_1f

    :cond_3c
    :goto_1e
    move-wide/from16 v7, p13

    move v14, v12

    move-object v12, v0

    move/from16 v0, p4

    goto :goto_21

    :cond_3d
    move-object/from16 v4, p10

    .line 3202
    :goto_1f
    new-instance v0, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1e

    :goto_20
    move/from16 v0, p4

    move-wide/from16 v7, p13

    move/from16 v21, v11

    .line 3205
    :goto_21
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->hasAutoplayFilter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-direct {v9, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_3e
    const/4 v5, 0x2

    .line 3206
    iput v5, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3207
    iput-wide v7, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    .line 3208
    invoke-direct {v9, v6}, Lorg/telegram/messenger/ImageLoader;->isPFrame(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    .line 3209
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-direct {v9, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_23

    :cond_3f
    :goto_22
    move/from16 v7, p8

    goto :goto_24

    :cond_40
    :goto_23
    move/from16 v7, p8

    move/from16 v21, v11

    goto :goto_24

    :cond_41
    move-object/from16 v2, p2

    move/from16 v14, p17

    move/from16 p4, v1

    move/from16 v21, v9

    const-wide/16 p13, 0x0

    const/4 v1, 0x3

    const/4 v11, 0x1

    move-object v9, v0

    move/from16 v0, p4

    goto :goto_22

    .line 3215
    :goto_24
    iput v7, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    move-object/from16 v5, p3

    .line 3216
    iput-object v5, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3217
    iput v14, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    .line 3218
    iput-object v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3219
    iput-object v10, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v13, p16

    .line 3220
    iput-object v13, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    move/from16 v15, p12

    .line 3221
    iput v15, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    move-object/from16 v4, p11

    .line 3222
    iput-object v4, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3223
    iget v8, v10, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v8, :cond_42

    .line 3224
    iput v8, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_42
    const/4 v8, 0x2

    if-ne v14, v8, :cond_43

    .line 3227
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p4, v0

    const-string v0, ".enc.key"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    :goto_25
    move-object/from16 v4, p5

    move/from16 v8, p6

    move-wide/from16 v0, p18

    move-object/from16 v11, v22

    goto :goto_26

    :cond_43
    move/from16 p4, v0

    goto :goto_25

    .line 3229
    :goto_26
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v7, v3

    if-nez v21, :cond_44

    if-nez p4, :cond_44

    .line 3231
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_44
    move-object v2, v10

    goto/16 :goto_2a

    .line 3244
    :cond_45
    iput-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3246
    iget-object v3, v9, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3247
    iget-boolean v3, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    if-eqz v3, :cond_46

    .line 3248
    iget-object v3, v9, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3250
    :cond_46
    iget-object v2, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v2, :cond_48

    .line 3251
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3252
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 3253
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp.jpg"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 3254
    iput-object v12, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3255
    iget-object v2, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3256
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {v0, v9, v7}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3257
    iget-object v1, v9, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v18

    .line 3258
    invoke-direct {v9, v8}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void

    :cond_47
    move/from16 v8, v18

    .line 3260
    new-instance v2, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-direct {v2, v9, v7, v0, v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3261
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3262
    invoke-direct {v9, v8}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void

    :cond_48
    move/from16 v8, v18

    if-eqz p1, :cond_49

    const/4 v5, 0x3

    goto :goto_27

    .line 3265
    :cond_49
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v2

    move v5, v2

    .line 3266
    :goto_27
    iget-object v2, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v2, :cond_4c

    if-nez v14, :cond_4b

    cmp-long v0, v0, p13

    if-lez v0, :cond_4a

    .line 3268
    iget-object v0, v10, Lorg/telegram/messenger/ImageLocation;->key:[B

    if-eqz v0, :cond_4b

    :cond_4a
    const/4 v6, 0x1

    goto :goto_28

    :cond_4b
    move v6, v14

    .line 3271
    :goto_28
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    move-object/from16 v3, p11

    move-object v2, v10

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_29

    :cond_4c
    move-object/from16 v3, p11

    move-object v2, v10

    .line 3272
    iget-object v0, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4d

    .line 3273
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1, v3, v5, v14}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_29

    .line 3274
    :cond_4d
    iget-object v0, v2, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_4e

    .line 3275
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/SecureDocument;I)V

    goto :goto_29

    .line 3276
    :cond_4e
    iget-object v0, v2, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v0, :cond_4f

    .line 3277
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    invoke-virtual {v0, v1, v5, v14}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/WebFile;II)V

    .line 3279
    :cond_4f
    :goto_29
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->isForceLoding()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3280
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3232
    :goto_2a
    iput-object v12, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3233
    iput-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3234
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v0, v9, v7}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3236
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->imageLoadingKeys:Ljava/util/HashSet;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->cutFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_50

    .line 3239
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 3241
    :cond_50
    iget-object v0, v9, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget v2, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->runningTask:Ljava/lang/Runnable;

    :cond_51
    :goto_2b
    return-void
.end method

.method private synthetic lambda$fileDidFailedLoad$12(Ljava/lang/String;)V
    .locals 1

    .line 3766
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3768
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fileDidLoaded$11(Ljava/lang/String;ILjava/io/File;)V
    .locals 10

    .line 3708
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v0, :cond_0

    .line 3709
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetparentDocument(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3710
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 3711
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 3717
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3719
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 3720
    :goto_0
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3721
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 3722
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 3723
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3724
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/telegram/messenger/ImageReceiver;

    .line 3725
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverGuidsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3726
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez v2, :cond_2

    .line 3728
    new-instance v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader-IA;)V

    .line 3729
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    .line 3730
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 3731
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    .line 3732
    iput-object p3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3733
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3734
    iget-boolean v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    .line 3735
    iput-object v5, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3736
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    .line 3737
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3738
    iput v7, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3739
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3740
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    .line 3741
    new-instance v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3742
    iput-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3743
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3744
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingKeys:Ljava/util/HashSet;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->cutFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3746
    iget-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v3, v2

    .line 3748
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3750
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 3751
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3752
    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->-$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    .line 3753
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3755
    :cond_4
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->-$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {p3, p2, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$httpFileLoadError$9(Ljava/lang/String;)V
    .locals 5

    .line 3678
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3682
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz v0, :cond_1

    .line 3684
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->-$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v2

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->-$$Nest$fgetimageSize(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)J

    move-result-wide v3

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3685
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3687
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method private synthetic lambda$preloadArtwork$8(Ljava/lang/String;)V
    .locals 8

    .line 3293
    const-string/jumbo v0, "jpg"

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3295
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3296
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 3299
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3300
    new-instance v5, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader-IA;)V

    const/4 v7, 0x1

    .line 3301
    iput v7, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3302
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3303
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3304
    iput-object v4, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3305
    iput-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3306
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3307
    iget p1, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz p1, :cond_1

    .line 3308
    iput p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3310
    :cond_1
    iput-object v1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3311
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    iget-object p1, v4, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3313
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3314
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_temp.jpg"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 3315
    iput-object v2, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3316
    new-instance p1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {p1, p0, v5}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3317
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3318
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$replaceImageInCache$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 1

    .line 3852
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3853
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$14(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3845
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    if-ne p2, v0, :cond_2

    .line 3849
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetcanRetry(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3850
    new-instance v3, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgettempFile(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetext(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v8

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3851
    new-instance p2, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v3}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    .line 3855
    iget-object v3, v4, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    .line 3856
    invoke-static {p2, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    :cond_1
    move-object v4, p0

    .line 3858
    iget-object p2, v4, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3859
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {p2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v4, p0

    if-ne p2, v2, :cond_5

    .line 3862
    iget-object p2, v4, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    new-instance p2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetext(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3864
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgettempFile(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgettempFile(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    .line 3865
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->-$$Nest$fgeturl(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v0

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v4, p0

    .line 3868
    :cond_5
    :goto_2
    iget p1, v4, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    if-ge p1, v2, :cond_6

    iget-object p1, v4, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3869
    iget-object p1, v4, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 3870
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v5, 0x0

    aput-object v5, v3, v1

    aput-object v5, v3, v0

    aput-object v5, v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3871
    iget p1, v4, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/2addr p1, v0

    iput p1, v4, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p1

    .line 3912
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 3913
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_2

    if-eqz v1, :cond_2

    .line 3916
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3918
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3919
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 3920
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_1

    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3922
    :cond_1
    :try_start_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3924
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 3930
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 3934
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 3935
    invoke-static {v0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3936
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3937
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 3939
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v5

    :cond_4
    :goto_2
    move-object v6, v5

    .line 3943
    :goto_3
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 3944
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float v0, v0, p2

    div-float v7, v7, p3

    if-eqz p4, :cond_5

    .line 3945
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_4

    :cond_5
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v0, v7

    if-gez v8, :cond_6

    move v0, v7

    :cond_6
    const/4 v8, 0x0

    .line 3949
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v9, v0

    .line 3950
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x2

    .line 3951
    rem-int/2addr v9, v10

    if-eqz v9, :cond_8

    move v9, v3

    :goto_5
    mul-int/lit8 v11, v9, 0x2

    .line 3953
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v11, v12, :cond_7

    move v9, v11

    goto :goto_5

    .line 3956
    :cond_7
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3958
    :cond_8
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3962
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 3963
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v9, :cond_9

    .line 3966
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3967
    :try_start_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v9, :cond_9

    .line 3972
    :goto_6
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_2
    move-object v9, v5

    :catchall_3
    if-eqz v9, :cond_9

    goto :goto_6

    .line 3976
    :cond_9
    :goto_7
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_8

    :catchall_4
    :cond_a
    move-object v9, v5

    goto :goto_b

    .line 3977
    :cond_b
    :goto_8
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 3978
    :try_start_6
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_e

    .line 3979
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    if-ne v11, v3, :cond_c

    move v3, v12

    goto :goto_9

    :cond_c
    move v3, v7

    :goto_9
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_d

    goto :goto_a

    :cond_d
    move v12, v7

    :goto_a
    invoke-virtual {v9, v3, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3980
    :cond_e
    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_f

    .line 3981
    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3985
    :catchall_5
    :cond_f
    :goto_b
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpl-float v3, v0, v7

    if-lez v3, :cond_11

    if-nez v9, :cond_10

    .line 3988
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    :cond_10
    div-float/2addr v7, v0

    .line 3990
    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_11
    move-object v15, v9

    if-eqz v4, :cond_15

    .line 3996
    :try_start_7
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v10, :cond_13

    .line 3998
    :try_start_8
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_12

    .line 3999
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v5, v10

    goto :goto_e

    .line 4001
    :cond_12
    :goto_c
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v10, :cond_13

    .line 4003
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v5, v0

    goto/16 :goto_15

    :cond_13
    :goto_d
    move-object v5, v10

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    .line 4008
    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4009
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    if-nez v5, :cond_14

    .line 4012
    :try_start_9
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 4013
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_14

    .line 4014
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    goto :goto_10

    :cond_14
    :goto_f
    move-object v10, v5

    if-eqz v10, :cond_13

    .line 4018
    :try_start_a
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v10, :cond_13

    .line 4020
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object v10, v0

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object v5, v10

    .line 4025
    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_15
    if-eqz v1, :cond_18

    .line 4030
    :try_start_b
    invoke-static {v6, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    if-eqz v10, :cond_17

    .line 4032
    :try_start_c
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_16

    .line 4033
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_11

    :catchall_a
    move-exception v0

    move-object v5, v10

    goto :goto_13

    .line 4035
    :cond_16
    :goto_11
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v10, :cond_17

    .line 4037
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object v5, v0

    goto :goto_12

    :cond_17
    move-object v5, v10

    .line 4045
    :goto_12
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v0

    .line 4047
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_c
    move-exception v0

    .line 4042
    :goto_13
    :try_start_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception v0

    move-object v1, v0

    .line 4045
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 4047
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4049
    :goto_14
    throw v1

    :cond_18
    :goto_15
    return-object v5
.end method

.method private static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 2372
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2375
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticAPIConversion0;->m(Ljava/nio/file/Path;)Lj$/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;-><init>(Ljava/io/File;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2388
    :try_start_2
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 2375
    :try_start_3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2389
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private performReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2691
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 2692
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 2694
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 2695
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2697
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 2699
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 2701
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2702
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2703
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2704
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2714
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2709
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 2710
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2711
    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2712
    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 2717
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 2719
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    .line 2768
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2770
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v1, :cond_1

    .line 2772
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2774
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2775
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverGuidsArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2777
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->-$$Nest$fgetimageReceiverArray(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2778
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method private replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_0

    .line 2885
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 2887
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v6, v0

    .line 2890
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2891
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2892
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2893
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2894
    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v8, v11, v0

    aput-object v7, v11, v5

    aput-object p3, v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2898
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v5

    aput-object p3, v4, v2

    invoke-virtual {v3, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private runArtworkTasks(Z)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3788
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 3790
    :cond_0
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3792
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3793
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, p1

    aput-object v4, v3, v0

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3794
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3796
    :catchall_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 1

    .line 3843
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runHttpTasks(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3775
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 3777
    :cond_0
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3778
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz p1, :cond_0

    .line 3780
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3781
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 15

    .line 4291
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 4294
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4295
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 4296
    :goto_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 4297
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 4298
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v3, :cond_1

    .line 4299
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {p0, v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$MessageMedia;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4305
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4307
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v0, :cond_f

    array-length v0, v0

    if-eqz v0, :cond_f

    .line 4309
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_3

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v0, :cond_4

    .line 4310
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v3, -0x80000000

    .line 4311
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 4312
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 4314
    :cond_4
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v3, 0x32

    if-gt v0, v3, :cond_5

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-gt v0, v3, :cond_5

    .line 4315
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;-><init>()V

    .line 4316
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4317
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4318
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4319
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto/16 :goto_5

    .line 4321
    :cond_5
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4323
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, p0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo(ILorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4324
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".enc"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1

    :cond_6
    move v3, v2

    .line 4327
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4329
    const-string/jumbo v4, "rws"

    if-eqz v3, :cond_8

    .line 4330
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4331
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4332
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const/16 v3, 0x20

    .line 4333
    new-array v9, v3, [B

    const/16 v8, 0x10

    .line 4334
    new-array v10, v8, [B

    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_7

    const-wide/16 v13, 0x30

    .line 4335
    rem-long/2addr v6, v13

    cmp-long v6, v6, v11

    if-nez v6, :cond_7

    .line 4336
    invoke-virtual {v5, v9, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4337
    invoke-virtual {v5, v10, v2, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 4339
    :cond_7
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4340
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4341
    invoke-virtual {v5, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4342
    invoke-virtual {v5, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4344
    :goto_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 4345
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v3, v8

    int-to-long v12, v3

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    .line 4347
    :cond_8
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4348
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4349
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 4351
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4355
    :cond_9
    :goto_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4356
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4357
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4358
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4359
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4360
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4363
    :goto_5
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_b

    .line 4364
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-ge v2, v1, :cond_f

    .line 4365
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4366
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_a

    .line 4367
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4371
    :cond_b
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_d

    .line 4372
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-ge v2, v1, :cond_f

    .line 4373
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4374
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_c

    .line 4375
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4379
    :cond_d
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_f

    .line 4380
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_8
    if-ge v2, v1, :cond_f

    .line 4381
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4382
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v3, :cond_e

    .line 4383
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .locals 14

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 4396
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 4398
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v0, :cond_d

    array-length v0, v0

    if-eqz v0, :cond_d

    .line 4400
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v0, :cond_2

    .line 4401
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v2, -0x80000000

    .line 4402
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 4403
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 4405
    :cond_2
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-gt v0, v2, :cond_3

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-gt v0, v2, :cond_3

    .line 4406
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;-><init>()V

    .line 4407
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4408
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4409
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4410
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto/16 :goto_4

    .line 4412
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4414
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, p0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo(ILorg/telegram/tgnet/TLRPC$Message;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4415
    new-instance p0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".enc"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    goto :goto_0

    :cond_4
    move v2, v3

    .line 4418
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    .line 4420
    const-string/jumbo p0, "rws"

    if-eqz v2, :cond_6

    .line 4421
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4422
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4423
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const/16 v2, 0x20

    .line 4424
    new-array v8, v2, [B

    const/16 v7, 0x10

    .line 4425
    new-array v9, v7, [B

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-lez v12, :cond_5

    const-wide/16 v12, 0x30

    .line 4426
    rem-long/2addr v5, v12

    cmp-long v5, v5, v10

    if-nez v5, :cond_5

    .line 4427
    invoke-virtual {v4, v8, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4428
    invoke-virtual {v4, v9, v3, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 4430
    :cond_5
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4431
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4432
    invoke-virtual {v4, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4433
    invoke-virtual {v4, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4435
    :goto_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 4436
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    array-length v2, v7

    int-to-long v11, v2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    .line 4438
    :cond_6
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v0, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4439
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4440
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 4442
    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4446
    :cond_7
    :goto_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4447
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4448
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4449
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4450
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4451
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4454
    :goto_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_9

    .line 4455
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_d

    .line 4456
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4457
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v1, :cond_8

    .line 4458
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4462
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_b

    .line 4463
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_d

    .line 4464
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4465
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v1, :cond_a

    .line 4466
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4470
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_d

    .line 4471
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    if-ge v3, v0, :cond_d

    .line 4472
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4473
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v1, :cond_c

    .line 4474
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    return-void
.end method

.method public static saveMessagesThumbs(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 4555
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4558
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4559
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4560
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4219
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4227
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFZIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4231
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 4235
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;FFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4223
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 17

    move/from16 v0, p8

    move/from16 v1, p9

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 4242
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v10, v3

    .line 4243
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v11, v3

    const/4 v3, 0x0

    cmpl-float v4, v10, v3

    if-eqz v4, :cond_7

    cmpl-float v3, v11, v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    div-float v3, v10, p4

    div-float v4, v11, p5

    .line 4248
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    int-to-float v0, v0

    cmpg-float v4, v10, v0

    if-ltz v4, :cond_2

    int-to-float v5, v1

    cmpg-float v5, v11, v5

    if-gez v5, :cond_5

    :cond_2
    if-gez v4, :cond_3

    int-to-float v3, v1

    cmpl-float v3, v11, v3

    if-lez v3, :cond_3

    div-float v0, v10, v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_3
    cmpl-float v3, v10, v0

    if-lez v3, :cond_4

    int-to-float v3, v1

    cmpg-float v4, v11, v3

    if-gez v4, :cond_4

    div-float v0, v11, v3

    goto :goto_0

    :cond_4
    div-float v0, v10, v0

    int-to-float v1, v1

    div-float v1, v11, v1

    .line 4255
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v15, v0

    move v12, v3

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    div-float v0, v10, v12

    float-to-int v8, v0

    div-float v0, v11, v12

    float-to-int v9, v0

    if-eqz v9, :cond_7

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v16, p10

    .line 4266
    :try_start_0
    invoke-static/range {v4 .. v16}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4268
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4269
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    :cond_7
    :goto_4
    return-object v2
.end method

.method private static scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p8, p3

    const/4 p6, 0x1

    if-gtz p3, :cond_1

    if-eqz p11, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    goto :goto_1

    .line 4144
    :cond_1
    :goto_0
    invoke-static {p1, p4, p5, p6}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_1
    const/4 p4, 0x0

    const-wide/32 p7, -0x80000000

    if-eqz p0, :cond_3

    .line 4151
    iget-object p5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of p11, p5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez p11, :cond_2

    goto :goto_2

    .line 4174
    :cond_2
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    goto :goto_3

    .line 4152
    :cond_3
    :goto_2
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    .line 4153
    iput-wide p7, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 p0, -0x80000000

    .line 4154
    iput p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 4155
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result p0

    iput p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 4156
    new-array p0, p4, [B

    iput-object p0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 4158
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4159
    iput-object p5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4160
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p11

    iput p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4161
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p11

    iput p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4162
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    if-gt p11, v1, :cond_4

    .line 4163
    const-string/jumbo p11, "s"

    iput-object p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/16 v1, 0x140

    if-gt v0, v1, :cond_5

    if-gt p11, v1, :cond_5

    .line 4165
    const-string/jumbo p11, "m"

    iput-object p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/16 v1, 0x320

    if-gt v0, v1, :cond_6

    if-gt p11, v1, :cond_6

    .line 4167
    const-string/jumbo p11, "x"

    iput-object p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/16 v1, 0x500

    if-gt v0, v1, :cond_7

    if-gt p11, v1, :cond_7

    .line 4169
    const-string/jumbo p11, "y"

    iput-object p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    .line 4171
    :cond_7
    const-string/jumbo p11, "w"

    iput-object p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4178
    :goto_3
    sget-object p11, Lorg/telegram/messenger/ImageLoader$7;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p11, p11, v0

    if-eq p11, p6, :cond_8

    const/4 p6, 0x2

    if-eq p11, p6, :cond_8

    const/4 p6, 0x3

    if-eq p11, p6, :cond_8

    const-string p6, ".jpg"

    goto :goto_4

    .line 4182
    :cond_8
    const-string p6, ".webp"

    .line 4186
    :goto_4
    new-instance p11, Ljava/lang/StringBuilder;

    invoke-direct {p11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p11, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const/4 p11, 0x4

    if-eqz p12, :cond_9

    .line 4189
    invoke-static {p11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    goto :goto_5

    .line 4191
    :cond_9
    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long p5, v0, p7

    if-eqz p5, :cond_a

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    goto :goto_5

    :cond_a
    invoke-static {p11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    .line 4193
    :goto_5
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p4, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4198
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4199
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-nez p10, :cond_b

    .line 4201
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p5

    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p5

    long-to-int p5, p5

    iput p5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4203
    :cond_b
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p10, :cond_c

    .line 4206
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4207
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4208
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4209
    array-length p2, p2

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4210
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    if-eq p3, p1, :cond_d

    .line 4213
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    return-object p0
.end method

.method public static shouldSendImageAsDocument(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 4

    .line 3877
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3878
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 3880
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3882
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3883
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3886
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3888
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 3894
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 3898
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 3899
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3900
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 3902
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2

    .line 3906
    :cond_3
    :goto_1
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    .line 3907
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    div-float v0, p0, p1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    div-float/2addr p1, p0

    cmpl-float p0, p1, v3

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method private sizeOfBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3

    .line 2329
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 2330
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2331
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getRenderingHeight()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getRenderingWidth()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    .line 2332
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 2334
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 2335
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    return v0

    .line 2337
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method private useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z
    .locals 3

    .line 3666
    const-string v0, "_firstframe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "_lastframe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3669
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq v2, v0, :cond_2

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public addTestWebFile(Ljava/lang/String;Lorg/telegram/messenger/WebFile;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2360
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelForceLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2945
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 2949
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadHttpFile(Ljava/lang/String;)V
    .locals 2

    .line 3829
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3831
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3832
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3833
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3835
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3837
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3839
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2815
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/web/WebInstantView;->cancelLoadPhoto(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2816
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLoadingOperations()Ljava/util/ArrayList;

    move-result-object v0

    .line 2817
    monitor-enter v0

    .line 2818
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 2819
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2820
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2822
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2824
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2825
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    .line 2826
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 2824
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public changeFileLoadingPriorityForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2789
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v0

    .line 2790
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkMediaPaths()V
    .locals 1

    const/4 v0, 0x0

    .line 2341
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkMediaPaths(Ljava/lang/Runnable;)V
    .locals 2

    .line 2345
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 2762
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2763
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2764
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    return-void
.end method

.method public createMediaPaths()Landroid/util/SparseArray;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2395
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2396
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2398
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2400
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2403
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    const/4 v2, 0x4

    .line 2405
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2406
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2410
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected SD card = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2413
    :try_start_1
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2414
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2415
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 2416
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2417
    const-string v7, " "

    if-eqz v4, :cond_3

    .line 2418
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_3

    .line 2419
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 2420
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "root dir "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v2, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_14

    .line 2427
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2428
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    move v8, v6

    .line 2430
    :goto_3
    array-length v9, v4

    if-ge v8, v9, :cond_5

    .line 2431
    aget-object v9, v4, v8

    if-nez v9, :cond_4

    goto :goto_4

    .line 2434
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dirsDebug "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2440
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external storage = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2443
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v7, 0x1e

    const-string v8, "exteraGram"

    if-lt v4, v7, :cond_7

    .line 2446
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2447
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader;->getPublicStorageDir()Ljava/io/File;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2448
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2449
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v4, v5

    goto :goto_5

    :cond_6
    move-object v4, v5

    goto :goto_6

    .line 2452
    :goto_5
    :try_start_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2454
    :goto_6
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2455
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    move-object v5, v4

    goto :goto_9

    .line 2457
    :cond_7
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_8

    .line 2459
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2460
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t write to this directory = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " use files dir"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2461
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2464
    :cond_b
    :goto_8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2466
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2468
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2469
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getDataDirs()Ljava/util/ArrayList;

    move-result-object v2

    .line 2470
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :goto_a
    if-ge v7, v4, :cond_d

    .line 2471
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_c

    .line 2472
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2474
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2475
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_b

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2481
    :cond_d
    :goto_b
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string/jumbo v4, "video path = "

    const-string v7, "exteraGram Video"

    const-string v8, "image path = "

    const-string v9, "exteraGram Images"

    const/4 v10, 0x2

    if-eqz v2, :cond_13

    .line 2483
    :try_start_7
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2484
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2485
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2486
    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2487
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_e

    .line 2488
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catch_5
    move-exception v2

    .line 2492
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2496
    :cond_e
    :goto_c
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2498
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-direct {p0, v1, v2, v10}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2499
    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2500
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_f

    .line 2501
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_d

    :catch_6
    move-exception v2

    .line 2505
    :try_start_a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 2509
    :cond_f
    :goto_d
    :try_start_b
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "exteraGram Audio"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2511
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2512
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2513
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2514
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_10

    .line 2515
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_e

    :catch_7
    move-exception v2

    .line 2519
    :try_start_c
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 2523
    :cond_10
    :goto_e
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "exteraGram Documents"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2525
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x3

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2526
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2527
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2528
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_11

    .line 2529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "documents path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_f

    :catch_8
    move-exception v2

    .line 2533
    :try_start_e
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 2537
    :cond_11
    :goto_f
    :try_start_f
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "exteraGram Files"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2538
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2539
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x5

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2540
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2541
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2542
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_12

    .line 2543
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "files path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_10

    :catch_9
    move-exception v2

    .line 2547
    :try_start_10
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 2551
    :cond_12
    :goto_10
    :try_start_11
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "exteraGram Stories"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2553
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x6

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2554
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2555
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2556
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_13

    .line 2557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stories path = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_11

    :catch_a
    move-exception v2

    .line 2561
    :try_start_12
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_11
    if-eqz v5, :cond_16

    .line 2564
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    if-eqz v2, :cond_16

    .line 2566
    :try_start_13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2567
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2568
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x64

    .line 2569
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2570
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_14

    .line 2571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_12

    :catch_b
    move-exception v2

    .line 2575
    :try_start_14
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 2579
    :cond_14
    :goto_12
    :try_start_15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2580
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2581
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0, v1, v2, v10}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x65

    .line 2582
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2583
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    .line 2584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_13

    :catch_c
    move-exception v1

    .line 2588
    :try_start_16
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2592
    :cond_15
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    .line 2593
    const-string/jumbo v1, "this Android can\'t rename files"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2596
    :cond_16
    :goto_13
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->checkSaveToGalleryFiles()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_15

    .line 2598
    :goto_14
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_15
    return-object v0
.end method

.method public decrementUseCount(Ljava/lang/String;)Z
    .locals 3

    .line 2734
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2738
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2739
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2742
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public getCacheOutQueue()Lorg/telegram/DispatchQueuePriority;
    .locals 1

    .line 4643
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object v0
.end method

.method public getFileProgress(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2666
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 2670
    aget-wide v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 2671
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 2673
    aget-wide v2, p1, v2

    long-to-float p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFileProgressSizes(Ljava/lang/String;)[J
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2680
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method public getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1768
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    if-nez v0, :cond_1

    .line 1773
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    if-nez v0, :cond_2

    .line 1776
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2859
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2861
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v1, "_"

    if-eqz p2, :cond_2

    .line 2862
    check-cast p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2864
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p2, :cond_3

    .line 2865
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2866
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2867
    :cond_3
    instance-of p2, p1, Lorg/telegram/messenger/SecureDocument;

    if-eqz p2, :cond_4

    .line 2868
    check-cast p1, Lorg/telegram/messenger/SecureDocument;

    .line 2869
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2870
    :cond_4
    instance-of p2, p1, Lorg/telegram/messenger/WebFile;

    if-eqz p2, :cond_5

    .line 2871
    check-cast p1, Lorg/telegram/messenger/WebFile;

    .line 2872
    iget-object p1, p1, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 2876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2878
    :cond_6
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getLottieMemCahce()Lorg/telegram/messenger/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object v0
.end method

.method public getReplacedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2687
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasLottieMemCache(Ljava/lang/String;)Z
    .locals 1

    .line 3673
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public incrementUseCount(Ljava/lang/String;)V
    .locals 3

    .line 2725
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2727
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2729
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isInMemCache(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2755
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 2757
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public isLoadingHttpFile(Ljava/lang/String;)Z
    .locals 1

    .line 3802
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 3815
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 3818
    :cond_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3819
    new-instance v4, Ljava/io/File;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3820
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3822
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3823
    iget-object p1, v2, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3824
    iget-object p1, v2, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3825
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    :goto_0
    return-void
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    const/4 v0, 0x0

    .line 3323
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/util/List;)V

    return-void
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/util/List;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/ImageReceiver;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    if-nez v1, :cond_0

    goto/16 :goto_25

    .line 3331
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getMediaKey()Ljava/lang/String;

    move-result-object v3

    .line 3332
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getNewGuid()I

    move-result v12

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_a

    .line 3334
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 3335
    invoke-direct {v0, v3, v7}, Lorg/telegram/messenger/ImageLoader;->findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3337
    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3338
    invoke-direct {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    :cond_1
    :goto_0
    move-object v2, v4

    goto :goto_1

    .line 3340
    :cond_2
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 3342
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    .line 3345
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 3347
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_4
    move-object v4, v2

    if-nez v4, :cond_1

    .line 3351
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 3353
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_0

    .line 3359
    :goto_1
    instance-of v4, v2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v4, :cond_5

    .line 3360
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v4

    goto :goto_2

    .line 3361
    :cond_5
    instance-of v4, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_6

    .line 3362
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v9

    :goto_2
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 3365
    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v4, 0x3

    const/4 v5, 0x1

    move v6, v12

    .line 3366
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3368
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_25

    :cond_7
    move-object/from16 v1, p1

    move-object v10, v3

    move v13, v8

    move v2, v9

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move v6, v12

    .line 3373
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-object v10, v3

    move v2, v8

    move v13, v9

    goto :goto_3

    :cond_9
    move-object/from16 v1, p1

    :cond_a
    move-object v10, v3

    move v2, v8

    move v13, v2

    .line 3376
    :goto_3
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_10

    .line 3378
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3379
    invoke-direct {v0, v3, v7}, Lorg/telegram/messenger/ImageLoader;->findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_b

    .line 3380
    invoke-direct {v0, v4, v3}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3381
    invoke-direct {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    :cond_b
    if-nez v5, :cond_e

    .line 3384
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    .line 3386
    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_c
    if-nez v4, :cond_d

    .line 3389
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_d

    .line 3391
    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_d
    move-object v5, v4

    if-nez v5, :cond_e

    .line 3395
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    .line 3397
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_e
    if-eqz v5, :cond_10

    .line 3402
    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v4, 0x0

    move-object v2, v5

    const/4 v5, 0x1

    move v6, v12

    .line 3403
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3405
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v10, :cond_4a

    if-eqz v13, :cond_f

    goto/16 :goto_25

    :cond_f
    move v14, v9

    goto :goto_4

    :cond_10
    move v14, v2

    .line 3411
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 3413
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 3415
    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3416
    invoke-direct {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :cond_11
    :goto_5
    move-object v2, v1

    goto :goto_6

    .line 3418
    :cond_12
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 3420
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_13
    if-nez v1, :cond_14

    .line 3423
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    .line 3425
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_14
    if-nez v1, :cond_11

    .line 3429
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    .line 3431
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    if-eqz v2, :cond_16

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move v6, v12

    .line 3436
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3437
    invoke-virtual {v0, v1, v8}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    if-eqz v14, :cond_15

    .line 3438
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_25

    :cond_15
    move v2, v9

    goto :goto_7

    :cond_16
    move-object/from16 v1, p1

    move v2, v8

    .line 3446
    :goto_7
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v3

    .line 3447
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 3448
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 3449
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getThumbFilter()Ljava/lang/String;

    move-result-object v6

    .line 3450
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    .line 3451
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getMediaFilter()Ljava/lang/String;

    move-result-object v15

    .line 3452
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    .line 3453
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageFilter()Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_18

    .line 3455
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 3456
    instance-of v9, v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_17

    .line 3457
    move-object v4, v3

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 3458
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    :goto_8
    const/4 v9, 0x1

    goto :goto_9

    :cond_17
    if-eqz v4, :cond_18

    .line 3461
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    goto :goto_8

    :cond_18
    move v9, v8

    move-object v4, v10

    .line 3474
    :goto_9
    const-string/jumbo v17, "mp4"

    const/4 v8, 0x2

    const/16 v19, 0x0

    if-eqz v4, :cond_19

    iget v0, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v0, v8, :cond_19

    move-object/from16 v0, v17

    goto :goto_a

    :cond_19
    move-object/from16 v0, v19

    :goto_a
    move-object/from16 p2, v0

    if-eqz v7, :cond_1a

    .line 3480
    iget v0, v7, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v0, v8, :cond_1a

    goto :goto_b

    :cond_1a
    move-object/from16 v17, v19

    .line 3485
    :goto_b
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v0

    .line 3486
    const-string/jumbo v8, "jpg"

    if-nez v0, :cond_1b

    move-object v0, v8

    :cond_1b
    if-nez p2, :cond_1c

    move-object/from16 v21, v0

    goto :goto_c

    :cond_1c
    move-object/from16 v21, p2

    :goto_c
    if-nez v17, :cond_1d

    move-object/from16 v17, v0

    :cond_1d
    move/from16 p2, v2

    move-object/from16 v22, v7

    move/from16 v26, v9

    move-object/from16 v1, v19

    move-object v2, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v24

    const/4 v7, 0x0

    const/16 v23, 0x0

    .line 3496
    :goto_d
    const-string v9, "."

    move-object/from16 v27, v10

    const/4 v10, 0x2

    if-ge v7, v10, :cond_36

    if-nez v7, :cond_1e

    move-object v10, v4

    move/from16 v28, v7

    move-object/from16 v7, v21

    goto :goto_e

    :cond_1e
    move/from16 v28, v7

    move-object/from16 v7, v17

    move-object/from16 v10, v22

    :goto_e
    if-nez v10, :cond_1f

    move/from16 v29, v12

    move/from16 v30, v13

    goto :goto_11

    :cond_1f
    move/from16 v29, v12

    if-eqz v22, :cond_20

    move-object/from16 v12, v22

    :goto_f
    move/from16 v30, v13

    const/4 v13, 0x0

    goto :goto_10

    :cond_20
    move-object v12, v4

    goto :goto_f

    .line 3509
    :goto_10
    invoke-virtual {v10, v3, v12, v13}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_21

    :goto_11
    move/from16 v31, v14

    goto/16 :goto_1b

    :cond_21
    if-eqz v22, :cond_22

    move-object/from16 v13, v22

    :goto_12
    move/from16 v31, v14

    const/4 v14, 0x1

    goto :goto_13

    :cond_22
    move-object v13, v4

    goto :goto_12

    .line 3513
    :goto_13
    invoke-virtual {v10, v3, v13, v14}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v13

    .line 3514
    iget-object v14, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v14, :cond_23

    .line 3515
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {v9, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v32, v4

    goto/16 :goto_19

    .line 3516
    :cond_23
    iget-object v14, v10, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v32, v4

    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v4, :cond_31

    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v4, :cond_24

    goto/16 :goto_18

    .line 3518
    :cond_24
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v4, :cond_27

    .line 3519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3520
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v7, :cond_26

    move-object v7, v13

    iget-wide v13, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v33, -0x80000000

    cmp-long v9, v13, v33

    if-nez v9, :cond_25

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v4, :cond_25

    goto :goto_14

    :cond_25
    move-object v13, v7

    goto/16 :goto_19

    :cond_26
    move-object v7, v13

    :goto_14
    move-object v13, v7

    :goto_15
    const/16 v23, 0x1

    goto/16 :goto_19

    .line 3523
    :cond_27
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v4, :cond_28

    .line 3524
    iget-object v4, v4, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v9, v9, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v9, v4}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_19

    .line 3526
    :cond_28
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v4, :cond_29

    .line 3527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_19

    .line 3528
    :cond_29
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_30

    if-nez v28, :cond_2a

    if-eqz v26, :cond_2a

    .line 3530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "q_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3532
    :cond_2a
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2e

    .line 3534
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v9, -0x1

    const-string v14, ""

    if-ne v7, v9, :cond_2b

    move-object v4, v14

    goto :goto_16

    .line 3537
    :cond_2b
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3539
    :goto_16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-gt v7, v9, :cond_2d

    .line 3540
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3541
    const-string v14, ".mp4"

    goto :goto_17

    .line 3542
    :cond_2c
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v7, "video/x-matroska"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3543
    const-string v14, ".mkv"

    goto :goto_17

    :cond_2d
    move-object v14, v4

    .line 3548
    :cond_2e
    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3549
    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto/16 :goto_15

    :cond_2f
    const/16 v23, 0x0

    goto :goto_19

    .line 3550
    :cond_30
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_32

    .line 3551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_19

    .line 3517
    :cond_31
    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_32
    :goto_19
    if-nez v28, :cond_33

    move-object v2, v12

    move-object/from16 v24, v13

    goto :goto_1a

    :cond_33
    move-object v1, v12

    move-object/from16 v25, v13

    :goto_1a
    if-ne v10, v5, :cond_35

    if-nez v28, :cond_34

    move-object/from16 v2, v19

    move-object v4, v2

    move-object/from16 v24, v4

    goto :goto_1b

    :cond_34
    move-object/from16 v1, v19

    move-object/from16 v22, v1

    move-object/from16 v25, v22

    :cond_35
    move-object/from16 v4, v32

    :goto_1b
    add-int/lit8 v7, v28, 0x1

    move-object/from16 v10, v27

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v14, v31

    goto/16 :goto_d

    :cond_36
    move-object/from16 v32, v4

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    if-eqz v5, :cond_3d

    .line 3574
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getStrippedLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    if-nez v4, :cond_38

    if-eqz v22, :cond_37

    move-object/from16 v10, v22

    goto :goto_1c

    :cond_37
    move-object/from16 v10, v27

    :goto_1c
    move-object v4, v10

    :cond_38
    const/4 v13, 0x0

    .line 3578
    invoke-virtual {v5, v3, v4, v13}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x1

    .line 3579
    invoke-virtual {v5, v3, v4, v14}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    .line 3580
    iget-object v4, v5, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 3581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {v3, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_39
    :goto_1d
    move-object/from16 v35, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v35

    goto :goto_1f

    .line 3582
    :cond_3a
    iget-object v4, v5, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v7, :cond_3c

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v4, :cond_3b

    goto :goto_1e

    .line 3584
    :cond_3b
    iget-object v4, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v4, :cond_39

    .line 3585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 3583
    :cond_3c
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_3d
    const/4 v14, 0x1

    move-object/from16 v3, v19

    .line 3589
    :goto_1f
    const-string v4, "@"

    if-eqz v1, :cond_3e

    if-eqz v15, :cond_3e

    .line 3590
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    if-eqz v2, :cond_3f

    if-eqz v11, :cond_3f

    .line 3593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3f
    if-eqz v3, :cond_40

    if-eqz v6, :cond_40

    .line 3596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3599
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    if-eqz v2, :cond_41

    .line 3600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_41
    move-object v13, v2

    .line 3603
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    if-eqz v1, :cond_42

    .line 3604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_42
    move-object/from16 v16, v1

    if-eqz v32, :cond_45

    move-object/from16 v4, v32

    .line 3608
    iget-object v1, v4, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_44

    if-eqz p2, :cond_43

    const/4 v9, 0x2

    goto :goto_20

    :cond_43
    move v9, v14

    :goto_20
    const-wide/16 v7, 0x0

    move-object v1, v11

    move v11, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v14, v1

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v3, v19

    move/from16 v12, v29

    move-object/from16 v1, p1

    move-object v4, v0

    move-object/from16 v0, p0

    .line 3609
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3610
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v4, v21

    move-object/from16 v3, v24

    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    return-void

    :cond_44
    move-object/from16 v32, v4

    move-object v2, v3

    move-object/from16 v3, v19

    move-object/from16 v18, v21

    move-object/from16 v19, v24

    move/from16 v12, v29

    move-object v4, v0

    :goto_21
    move-object/from16 v21, v13

    move-object v13, v11

    goto :goto_22

    :cond_45
    move-object v4, v0

    move-object v2, v3

    move-object/from16 v3, v19

    move-object/from16 v18, v21

    move-object/from16 v19, v24

    move/from16 v12, v29

    goto :goto_21

    :goto_22
    if-eqz v22, :cond_4b

    .line 3612
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    if-nez v0, :cond_46

    if-eqz v23, :cond_46

    move/from16 v20, v14

    goto :goto_23

    :cond_46
    move/from16 v20, v0

    :goto_23
    if-nez v20, :cond_47

    move v9, v14

    goto :goto_24

    :cond_47
    move/from16 v9, v20

    :goto_24
    if-nez p2, :cond_48

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3619
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_48
    if-nez v31, :cond_49

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v13

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    move-object/from16 v5, v32

    .line 3622
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_49
    if-nez v30, :cond_4a

    .line 3625
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v15

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v9, v20

    move-object/from16 v5, v22

    move-object/from16 v3, v25

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_4a
    :goto_25
    return-void

    .line 3628
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    if-nez v0, :cond_4c

    if-eqz v23, :cond_4c

    move v15, v14

    goto :goto_26

    :cond_4c
    move v15, v0

    :goto_26
    if-nez v15, :cond_4d

    move v9, v14

    goto :goto_27

    :cond_4d
    move v9, v15

    :goto_27
    if-eqz p2, :cond_4e

    const/4 v11, 0x2

    goto :goto_28

    :cond_4e
    move v11, v14

    :goto_28
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3633
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3634
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v13

    move v9, v15

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    return-void
.end method

.method public moveToFront(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFragmentStackChanged()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4637
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4638
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput v0, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preloadArtwork(Ljava/lang/String;)V
    .locals 2

    .line 3292
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    .locals 1

    .line 2921
    const-string v0, "_nocache"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2923
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2925
    :cond_1
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putThumbsToCache(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageLoader$MessageThumb;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$MessageThumb;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$MessageThumb;->key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeImage(Ljava/lang/String;)V
    .locals 1

    .line 2748
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2750
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public removeTestWebFile(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2367
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 2914
    new-instance p4, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 2916
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method
