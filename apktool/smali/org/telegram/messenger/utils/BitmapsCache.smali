.class public Lorg/telegram/messenger/utils/BitmapsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;,
        Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;,
        Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;,
        Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;,
        Lorg/telegram/messenger/utils/BitmapsCache$Metadata;
    }
.end annotation


# static fields
.field private static final N:I

.field private static bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field static volatile cleanupScheduled:Z

.field private static mkdir:Z

.field static final sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

.field private static sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

.field private static taskCounter:I


# instance fields
.field bufferTmp:[B

.field volatile cacheCreated:Z

.field cachedFile:Ljava/io/RandomAccessFile;

.field public cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile checked:Z

.field private cleanupSharedBuffers:Ljava/lang/Runnable;

.field compressQuality:I

.field error:Z

.field final file:Ljava/io/File;

.field volatile fileExist:Z

.field fileName:Ljava/lang/String;

.field private frameIndex:I

.field frameOffsets:Ljava/util/ArrayList;

.field public final framesProcessed:Ljava/util/concurrent/atomic/AtomicInteger;

.field h:I

.field private final mutex:Ljava/lang/Object;

.field options:Landroid/graphics/BitmapFactory$Options;

.field volatile recycled:Z

.field private final source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

.field private tryCount:I

.field final useSharedBuffers:Z

.field w:I


# direct methods
.method public static synthetic $r8$lambda$6kVoZXFQyFpZ88pME7DtCof8SlA(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)I
    .locals 0

    .line 340
    iget p0, p0, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->index:I

    return p0
.end method

.method public static synthetic $r8$lambda$75FwZaXfPh-7AZ0gZ3tKl5Rqbyg()V
    .locals 1

    .line 160
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->release()V

    const/4 v0, 0x0

    .line 162
    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$FoChbovdHYgidAWB8EndELMo4u4(Lorg/telegram/messenger/utils/BitmapsCache;Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/utils/BitmapsCache;->lambda$createCache$1(Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcleanupSharedBuffers(Lorg/telegram/messenger/utils/BitmapsCache;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetN()I
    .locals 1

    .line 0
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 56
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V
    .locals 12

    move/from16 v0, p4

    move/from16 v1, p5

    .line 85
    const-string/jumbo v2, "r"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->framesProcessed:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    .line 58
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->mutex:Ljava/lang/Object;

    .line 68
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v3, Lorg/telegram/messenger/utils/BitmapsCache$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/utils/BitmapsCache$1;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;)V

    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    .line 86
    iput-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    .line 87
    iput v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->w:I

    .line 88
    iput v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->h:I

    .line 89
    iget p2, p3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->compressQuality:I

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileName:Ljava/lang/String;

    .line 91
    sget-object p1, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    .line 92
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v8, 0x3c

    move v7, v6

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v5, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    :cond_0
    new-instance p1, Ljava/io/File;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string p3, "acache"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    sget-boolean p2, Lorg/telegram/messenger/utils/BitmapsCache;->mkdir:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 98
    sput-boolean p3, Lorg/telegram/messenger/utils/BitmapsCache;->mkdir:Z

    .line 100
    :cond_1
    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_2

    const-string v5, "_nolimit"

    goto :goto_0

    :cond_2
    const-string v5, " "

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pcache2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const/high16 p1, 0x42700000    # 60.0f

    .line 101
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-ge v1, p1, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->useSharedBuffers:Z

    .line 104
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_8

    .line 105
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 106
    iget-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-eqz p1, :cond_7

    .line 107
    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-direct {p1, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 109
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 111
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_4

    move v0, v4

    .line 115
    :cond_4
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 118
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 119
    iput-boolean p3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z

    .line 120
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .line 122
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 123
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :cond_6
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    .line 107
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 128
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 129
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 130
    iput-boolean p3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z

    .line 133
    :cond_7
    :goto_6
    iput-boolean p3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z

    return-void

    .line 135
    :cond_8
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 136
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    return-void
.end method

.method private closeCachedFile()V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 518
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static decrementTaskCounter()V
    .locals 2

    .line 156
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 158
    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    .line 159
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private fillFrames(Ljava/io/RandomAccessFile;I)V
    .locals 3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, p2, 0x8

    .line 376
    new-array v0, v0, [B

    .line 377
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 380
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;ILorg/telegram/messenger/utils/BitmapsCache-IA;)V

    .line 381
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    .line 382
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    .line 383
    iget-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getBuffer(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)[B
    .locals 5

    .line 526
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->useSharedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DispatchQueuePoolThreadSafety_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 529
    sget-object v2, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_1

    .line 531
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->bufferTmp:[B

    :goto_1
    if-eqz v2, :cond_3

    .line 534
    array-length v3, v2

    iget v4, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    if-ge v3, v4, :cond_2

    goto :goto_2

    :cond_2
    return-object v2

    .line 535
    :cond_3
    :goto_2
    iget p1, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    int-to-float p1, p1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    new-array p1, p1, [B

    if-eqz v0, :cond_5

    .line 537
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-boolean v0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupScheduled:Z

    if-nez v0, :cond_4

    .line 539
    sput-boolean v1, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupScheduled:Z

    .line 540
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-object p1

    .line 543
    :cond_5
    iput-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->bufferTmp:[B

    return-object p1
.end method

.method public static incrementTaskCounter()V
    .locals 1

    .line 152
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    return-void
.end method

.method private synthetic lambda$createCache$1(Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 291
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_1

    .line 292
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 294
    :cond_1
    aget-object p2, p2, p3

    iget v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->compressQuality:I

    aget-object v2, p4, p3

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 295
    aget-object p2, p4, p3

    iget p2, p2, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->count:I

    .line 298
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->mutex:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p5, v2}, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;ILorg/telegram/messenger/utils/BitmapsCache-IA;)V

    .line 300
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int p5, v2

    iput p5, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    .line 302
    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    aget-object p5, p4, p3

    iget-object p5, p5, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->buf:[B

    const/4 p7, 0x0

    invoke-virtual {p6, p5, p7, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 305
    iput p2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    .line 306
    aget-object p2, p4, p3

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->reset()V

    .line 307
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 309
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x1

    .line 311
    :try_start_3
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 314
    :catch_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_1
    move-exception p3

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    throw p3

    .line 318
    :goto_0
    aget-object p1, p8, p3

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelCreate()V
    .locals 0

    return-void
.end method

.method public createCache()V
    .locals 16

    move-object/from16 v1, p0

    .line 171
    :try_start_0
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v10, 0x0

    const-string/jumbo v12, "r"

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_6

    .line 174
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-direct {v0, v3, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 175
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v3

    iput-boolean v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 176
    iget-boolean v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v3, :cond_4

    .line 177
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 178
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    const/16 v4, 0x2710

    if-le v3, v4, :cond_0

    move v3, v14

    :cond_0
    if-lez v3, :cond_3

    .line 184
    invoke-direct {v1, v0, v3}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    .line 185
    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 186
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v3, v0, :cond_1

    .line 187
    invoke-direct {v1}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 189
    :cond_1
    iput-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 190
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 191
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 209
    :try_start_3
    iget-object v2, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq v2, v0, :cond_2

    .line 211
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    :catchall_0
    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_d

    .line 194
    :cond_3
    :try_start_5
    iput-boolean v14, v1, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 195
    iput-boolean v14, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 196
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z

    .line 199
    :cond_4
    iget-boolean v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v3, :cond_5

    .line 200
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 209
    :cond_5
    :try_start_6
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eq v3, v0, :cond_6

    .line 211
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_2
    move-object v0, v2

    .line 204
    :catchall_3
    :try_start_8
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 209
    :catchall_4
    :try_start_9
    iget-object v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v3, v0, :cond_6

    if-eqz v0, :cond_6

    goto :goto_1

    .line 219
    :catchall_5
    :cond_6
    :goto_2
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v7, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    if-nez v0, :cond_7

    .line 222
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;-><init>(Lorg/telegram/messenger/utils/BitmapsCache-IA;)V

    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    .line 224
    :cond_7
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    iget v2, v1, Lorg/telegram/messenger/utils/BitmapsCache;->h:I

    iget v3, v1, Lorg/telegram/messenger/utils/BitmapsCache;->w:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->allocate(II)V

    .line 225
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    invoke-static {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->-$$Nest$fgetbitmap(Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;)[Landroid/graphics/Bitmap;

    move-result-object v3

    .line 226
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    iget-object v5, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->byteArrayOutputStream:[Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    .line 227
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    new-array v9, v0, [Ljava/util/concurrent/CountDownLatch;

    .line 229
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {v7, v14}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 233
    invoke-virtual {v7, v14}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 238
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 239
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->prepareForGenerateCache()V

    move v4, v14

    move v6, v4

    .line 242
    :goto_3
    aget-object v0, v9, v4
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_8

    .line 244
    :try_start_a
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 246
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    :cond_8
    :goto_4
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    .line 276
    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    aget-object v15, v3, v4

    invoke-interface {v0, v15}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->getNextFrame(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eq v0, v13, :cond_d

    move v3, v14

    .line 328
    :goto_5
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-ge v3, v0, :cond_b

    .line 329
    aget-object v0, v9, v3
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_a

    .line 331
    :try_start_c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_3
    move-exception v0

    .line 333
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 338
    :cond_b
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 340
    new-instance v3, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    aget-object v3, v5, v14

    invoke-virtual {v3}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->reset()V

    .line 342
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 343
    aget-object v4, v5, v14

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeInt(I)V

    move v4, v14

    .line 344
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 345
    aget-object v6, v5, v14

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    iget v9, v9, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeInt(I)V

    .line 346
    aget-object v6, v5, v14

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    iget v9, v9, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 348
    :cond_c
    aget-object v4, v5, v14

    iget-object v4, v4, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->buf:[B

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v7, v4, v14, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 349
    aget-object v3, v5, v14

    invoke-virtual {v3}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->reset()V

    .line 350
    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 351
    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 352
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 353
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 356
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-direct {v1}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 359
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, v1, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-direct {v0, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 360
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 361
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 362
    iput-boolean v13, v1, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 368
    :goto_8
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    goto :goto_e

    .line 279
    :cond_d
    :try_start_e
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v0, v9, v4

    .line 285
    sget-object v15, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 323
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-lt v4, v0, :cond_e

    move v4, v14

    .line 326
    :cond_e
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->framesProcessed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_3

    .line 251
    :cond_f
    :goto_9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_10

    .line 252
    const-string v0, "cancelled cache generation"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 254
    :cond_10
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    :goto_a
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-ge v14, v0, :cond_13

    .line 256
    aget-object v0, v9, v14
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_11

    .line 258
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_b

    :catch_4
    move-exception v0

    .line 260
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    :cond_11
    :goto_b
    aget-object v0, v3, v14
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_12

    .line 265
    :try_start_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_5
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 271
    :cond_13
    :try_start_12
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 272
    iget-object v0, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_0

    .line 366
    :goto_c
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 364
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_8

    :goto_e
    return-void

    .line 368
    :goto_f
    iget-object v2, v1, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v2}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    .line 369
    throw v0
.end method

.method public getFrame(ILandroid/graphics/Bitmap;)I
    .locals 7

    .line 436
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 442
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-nez v3, :cond_1

    return v1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 446
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_5

    .line 447
    :cond_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 449
    iget-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 451
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 452
    invoke-direct {p0, v3, v5}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-object v0, v3

    goto/16 :goto_3

    .line 454
    :cond_3
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 455
    iput-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 456
    iput-boolean v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->checked:Z

    .line 459
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v5, :cond_5

    .line 460
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    return v1

    .line 467
    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    return v1

    .line 470
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {p1, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    .line 471
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    .line 472
    iget v5, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 474
    invoke-direct {p0, p1}, Lorg/telegram/messenger/utils/BitmapsCache;->getBuffer(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)[B

    move-result-object v5

    .line 475
    iget v6, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 476
    iget-boolean v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->recycled:Z

    if-nez v6, :cond_8

    .line 477
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v6, v3, :cond_7

    .line 478
    invoke-direct {p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 480
    :cond_7
    iput-object v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 482
    :cond_8
    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 483
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 486
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    if-nez v6, :cond_9

    .line 487
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    .line 489
    :cond_9
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 490
    iget p1, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-static {v5, v4, p1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 491
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v4

    .line 496
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 497
    iget p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->tryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->tryCount:I

    const/16 p2, 0xa

    if-le p1, p2, :cond_a

    .line 499
    iput-boolean v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    .line 503
    :catch_1
    :cond_a
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    .line 505
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_4
    return v1
.end method

.method public getFrame(Landroid/graphics/Bitmap;Lorg/telegram/messenger/utils/BitmapsCache$Metadata;)I
    .locals 1

    .line 392
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(ILandroid/graphics/Bitmap;)I

    move-result p1

    .line 393
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    iput v0, p2, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    .line 394
    iget-boolean p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 395
    iget p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    .line 396
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    .line 397
    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    :cond_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public needGenCache()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 556
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    :cond_0
    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->recycled:Z

    return-void
.end method
