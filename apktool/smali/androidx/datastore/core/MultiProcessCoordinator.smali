.class public final Landroidx/datastore/core/MultiProcessCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/InterProcessCoordinator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/MultiProcessCoordinator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

.field private static final DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

.field private static final INITIAL_WAIT_MILLIS:J

.field private static final MAX_WAIT_MILLIS:J


# instance fields
.field private final LOCK_ERROR_MESSAGE:Ljava/lang/String;

.field private final LOCK_SUFFIX:Ljava/lang/String;

.field private final VERSION_SUFFIX:Ljava/lang/String;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final file:Ljava/io/File;

.field private final inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final lazySharedCounter:Lkotlin/Lazy;

.field private final lockFile$delegate:Lkotlin/Lazy;

.field private final updateNotifications:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    .line 189
    const-string v0, "Resource deadlock would occur"

    sput-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    const-wide/16 v0, 0xa

    .line 190
    sput-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->INITIAL_WAIT_MILLIS:J

    const-wide/32 v0, 0xea60

    .line 191
    sput-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->MAX_WAIT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    .line 36
    iput-object p2, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    .line 39
    sget-object p1, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {p1, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe(Ljava/io/File;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->updateNotifications:Lkotlinx/coroutines/flow/Flow;

    .line 109
    const-string p1, ".lock"

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_SUFFIX:Ljava/lang/String;

    .line 110
    const-string p1, ".version"

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->VERSION_SUFFIX:Ljava/lang/String;

    .line 111
    const-string p1, "fcntl failed: EAGAIN"

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_ERROR_MESSAGE:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 114
    new-instance p1, Landroidx/datastore/core/MultiProcessCoordinator$lockFile$2;

    invoke-direct {p1, p0}, Landroidx/datastore/core/MultiProcessCoordinator$lockFile$2;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lockFile$delegate:Lkotlin/Lazy;

    .line 120
    new-instance p1, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;

    invoke-direct {p1, p0}, Landroidx/datastore/core/MultiProcessCoordinator$lazySharedCounter$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$createIfNotExists(Landroidx/datastore/core/MultiProcessCoordinator;Ljava/io/File;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator;->createIfNotExists(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$fileWithSuffix(Landroidx/datastore/core/MultiProcessCoordinator;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator;->fileWithSuffix(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEADLOCK_ERROR_MESSAGE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getINITIAL_WAIT_MILLIS$cp()J
    .locals 2

    .line 34
    sget-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->INITIAL_WAIT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getLOCK_SUFFIX$p(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_SUFFIX:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMAX_WAIT_MILLIS$cp()J
    .locals 2

    .line 34
    sget-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->MAX_WAIT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getSharedCounter(Landroidx/datastore/core/MultiProcessCoordinator;)Landroidx/datastore/core/SharedCounter;
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVERSION_SUFFIX$p(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->VERSION_SUFFIX:Ljava/lang/String;

    return-object p0
.end method

.method private final createIfNotExists(Ljava/io/File;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator;->createParentDirectories(Ljava/io/File;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-void
.end method

.method private final createParentDirectories(Ljava/io/File;)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final fileWithSuffix(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 131
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLockFile()Ljava/io/File;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lockFile$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getSharedCounter()Landroidx/datastore/core/SharedCounter;
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/SharedCounter;

    return-object v0
.end method


# virtual methods
.method public getUpdateNotifications()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->updateNotifications:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 159
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/datastore/core/SharedCounter;->getValue()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Landroidx/datastore/core/MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/datastore/core/MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public incrementAndGetVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 159
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/datastore/core/SharedCounter;->incrementAndGetValue()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Landroidx/datastore/core/MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/datastore/core/MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    iget v1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/FileLock;

    iget-object v1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object v0, v2

    :goto_1
    move-object p1, v6

    goto/16 :goto_7

    :cond_3
    iget-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 125
    iput-object p0, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, p0

    .line 44
    :goto_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v5}, Landroidx/datastore/core/MultiProcessCoordinator;->getLockFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 47
    :try_start_3
    sget-object v5, Landroidx/datastore/core/MultiProcessCoordinator;->Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    iput-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-static {v5, v2, v0}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;->access$getExclusiveFileLockWithRetryIfDeadlock(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v4

    move-object v4, p1

    move-object p1, v2

    move-object v2, p2

    move-object p2, v7

    .line 42
    :goto_3
    :try_start_4
    check-cast p2, Ljava/nio/channels/FileLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :try_start_5
    iput-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v0, v1, :cond_7

    :goto_4
    return-object v1

    :cond_7
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, v2

    :goto_5
    if-eqz p1, :cond_8

    .line 50
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, v0

    goto :goto_8

    .line 48
    :cond_8
    :goto_6
    :try_start_7
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 215
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_3
    move-exception p1

    move-object p2, v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, v2

    goto :goto_7

    :catchall_5
    move-exception p1

    move-object v0, p2

    move-object v1, v2

    move-object p2, p1

    goto :goto_1

    :goto_7
    if-eqz p1, :cond_9

    .line 50
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    :cond_9
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_8
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception p1

    .line 215
    :goto_9
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public tryLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    iget v4, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    invoke-direct {v3, v1, v0}, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 59
    iget v5, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v2, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iget-object v4, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/nio/channels/FileLock;

    iget-object v5, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    iget-object v3, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v2, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iget-object v3, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object v5, v1, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 36
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->tryLock(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_6

    .line 62
    :try_start_2
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v5, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    iput-boolean v9, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iput v7, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v4, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object v3, v5

    move v2, v9

    :goto_1
    if-eqz v2, :cond_5

    .line 41
    invoke-interface {v3, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :cond_5
    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v5

    move v2, v9

    goto/16 :goto_a

    .line 64
    :cond_6
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v1}, Landroidx/datastore/core/MultiProcessCoordinator;->getLockFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 68
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x1

    const-wide/16 v13, 0x0

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v12, v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v5

    move-object v4, v8

    move v2, v9

    move-object v5, v11

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 82
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v13, v1, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_ERROR_MESSAGE:Ljava/lang/String;

    invoke-static {v12, v13, v10, v6, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-ne v12, v7, :cond_7

    goto :goto_2

    .line 83
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    sget-object v13, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    invoke-static {v12, v13, v10, v6, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v12, v7, :cond_c

    :goto_2
    move-object v12, v8

    :goto_3
    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    move v7, v10

    .line 87
    :goto_4
    :try_start_6
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v5, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$1:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$2:Ljava/lang/Object;

    iput-boolean v9, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iput v6, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v4, :cond_9

    :goto_5
    return-object v4

    :cond_9
    move-object v3, v5

    move v2, v9

    move-object v5, v11

    move-object v4, v12

    :goto_6
    if-eqz v4, :cond_a

    .line 89
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    move v3, v2

    move-object v2, v0

    goto :goto_9

    .line 87
    :cond_a
    :goto_7
    :try_start_8
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_b

    .line 41
    invoke-interface {v3, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :cond_b
    return-object v0

    :catchall_5
    move-exception v0

    move-object v3, v5

    move v2, v9

    move-object v5, v11

    move-object v4, v12

    goto :goto_8

    .line 84
    :cond_c
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    if-eqz v4, :cond_d

    .line 89
    :try_start_a
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_d
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_9
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    move v2, v3

    move-object v3, v4

    :goto_a
    if-eqz v2, :cond_e

    .line 41
    invoke-interface {v3, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :cond_e
    throw v0
.end method
