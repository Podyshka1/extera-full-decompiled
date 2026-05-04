.class public Lorg/telegram/messenger/FilePathDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FilePathDatabase$FileMeta;,
        Lorg/telegram/messenger/FilePathDatabase$PathData;
    }
.end annotation


# static fields
.field private static final DATABASE_BACKUP_NAME:Ljava/lang/String; = "file_to_path_backup"

.field private static final DATABASE_NAME:Ljava/lang/String; = "file_to_path"

.field public static final FLAG_LOCALLY_CREATED:I = 0x1

.field private static final LAST_DB_VERSION:I = 0x7

.field public static final MESSAGE_TYPE_VIDEO_MESSAGE:I


# instance fields
.field private final NULL_PATH:Ljava/lang/String;

.field private final cache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheFile:Ljava/io/File;

.field private final currentAccount:I

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field databaseCreated:Z

.field private dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

.field private shmCacheFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$3K_jyjq0V83In8Mya0aWQ4uYfjQ(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$hasAnotherRefOnFile$4(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6PYebqesT6JWlfPlQcpXJTLCrNY(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$lookupFiles$7(Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1VqQtOHVRaeYLo_PYoXmQXmTas(Lorg/telegram/messenger/FilePathDatabase;JIILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FilePathDatabase;->lambda$putPath$1(JIILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLAaegZgOLHLzrAGX0a1v_B8xdw(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->postToFrontRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L3nURaNCPRfYlyOeqSTde0Xcct8(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$isLocallyCreated$8(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$amVBHCuUjedk6dVg5QBGa6mLwK4(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->lambda$removeFiles$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dyrEK6II0AidDB8dDn3IMPUESVs(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j5TEW10KM2zPBlrP1O_dEY3FBEo(Lorg/telegram/messenger/FilePathDatabase;JII[Ljava/lang/String;JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/FilePathDatabase;->lambda$getPath$0(JII[Ljava/lang/String;JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jvcZT-fp5t4orjxphpbQXgFKTfw(Lorg/telegram/messenger/FilePathDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->lambda$clear$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pP4Qp44mYBQaD4awCEtLowFXNIg(Lorg/telegram/messenger/FilePathDatabase;Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->lambda$saveFileDialogId$5(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCjsA8v8FOBY0rQXCUYWKxxAycw(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$checkMediaExistance$2(Ljava/util/ArrayList;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "~null~"

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->NULL_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {v0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 45
    iput p1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    return-void
.end method

.method private createBackup()V
    .locals 4

    .line 134
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 135
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 139
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path_backup.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file db backup created "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private ensureQueueExist()V
    .locals 3

    .line 522
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_1

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files_database_queue_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 528
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkMediaExistance$2(Ljava/util/ArrayList;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    const/4 v2, 0x0

    move v3, v2

    .line 331
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 332
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 333
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 335
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    aput-wide v3, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 337
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 340
    throw p1
.end method

.method private synthetic lambda$clear$3()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 364
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "DELETE FROM paths WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 365
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "DELETE FROM paths_by_dialog_id WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 367
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$getPath$0(JII[Ljava/lang/String;JLjava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 192
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 196
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT path FROM paths WHERE document_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND dc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v3

    .line 199
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get file path id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " dc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p5, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p6

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    .line 204
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 209
    :cond_1
    throw p1

    .line 211
    :cond_2
    :goto_2
    invoke-virtual {p8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$hasAnotherRefOnFile$4(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 376
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT document_id FROM paths WHERE path = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 380
    aput-boolean p1, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 383
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 386
    throw p1
.end method

.method private synthetic lambda$isLocallyCreated$8(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 536
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    const/4 v0, 0x0

    .line 539
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT flags FROM paths WHERE path = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 541
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p1

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aput-boolean v1, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 546
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 548
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    return-void

    .line 544
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_2
    return-void

    .line 546
    :goto_3
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 550
    :cond_3
    throw p1
.end method

.method private synthetic lambda$lookupFiles$7(Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 484
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {v0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 485
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 486
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    iget-object v3, v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {p0, v3, v0}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 487
    iget-wide v4, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 488
    invoke-virtual {p2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 491
    iget-wide v5, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    invoke-virtual {p2, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 493
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    iget v3, v3, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    const/16 v6, 0x17

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    iput-boolean v3, v5, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->isStory:Z

    .line 494
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 498
    :goto_3
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 501
    throw p1
.end method

.method private synthetic lambda$putPath$1(JIILjava/lang/String;I)V
    .locals 6

    .line 276
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "put file path id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 280
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 286
    const-string v2, "_"

    if-eqz p5, :cond_2

    .line 287
    :try_start_0
    const-string v3, "DELETE FROM paths WHERE path = ?"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 288
    :try_start_1
    invoke-virtual {v0, v3, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 291
    iget-object v4, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v5, "REPLACE INTO paths VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 293
    invoke-virtual {v1, v3, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    .line 294
    invoke-virtual {v1, v3, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    .line 295
    invoke-virtual {v1, v3, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x4

    .line 296
    invoke-virtual {v1, v3, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x5

    .line 297
    invoke-virtual {v1, v3, p6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 298
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 299
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 300
    iget-object p6, p0, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v1, v0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    .line 302
    :cond_2
    :try_start_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "DELETE FROM paths WHERE document_id = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, " AND dc_id = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " AND type = "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 303
    iget-object p5, p0, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "~null~"

    invoke-virtual {p5, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v1

    :goto_0
    if-eqz v1, :cond_3

    .line 309
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    if-eqz p1, :cond_5

    .line 312
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    .line 306
    :goto_1
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_4
    if-eqz p2, :cond_5

    .line 312
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_6

    .line 309
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_6
    if-eqz p2, :cond_7

    .line 312
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 314
    :cond_7
    throw p1
.end method

.method private synthetic lambda$removeFiles$6(Ljava/util/List;)V
    .locals 4

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 466
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 467
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 468
    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM paths_by_dialog_id WHERE path = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v3, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 473
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    return-void

    .line 471
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 473
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 474
    throw p1
.end method

.method private synthetic lambda$saveFileDialogId$5(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    const/4 v0, 0x0

    .line 405
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "REPLACE INTO paths_by_dialog_id VALUES(?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 408
    iget-wide v1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 409
    iget p1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 410
    iget p1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    const/4 p2, 0x4

    invoke-virtual {v0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 411
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_0
    return-void

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 418
    :cond_1
    throw p1
.end method

.method private migrateDatabase(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 109
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "PRAGMA user_version = 2"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move p1, v1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v1, :cond_1

    .line 113
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER);"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 114
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "PRAGMA user_version = 3"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move p1, v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v0, :cond_2

    .line 118
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "ALTER TABLE paths_by_dialog_id ADD COLUMN message_id INTEGER default 0"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 119
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "ALTER TABLE paths_by_dialog_id ADD COLUMN message_type INTEGER default 0"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 120
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "PRAGMA user_version = 4"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move p1, v1

    :cond_2
    if-eq p1, v1, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 125
    :cond_4
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "ALTER TABLE paths ADD COLUMN flags INTEGER default 0"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 127
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 129
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "PRAGMA user_version = 7"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 512
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureQueueExist()V

    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postToFrontRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 517
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureQueueExist()V

    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DispatchQueue;->postToFrontRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreBackup()Z
    .locals 4

    .line 149
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 150
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 154
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path_backup.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 159
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 161
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2
.end method

.method private shield(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 454
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkMediaExistance(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 326
    new-array v2, v2, [J

    .line 327
    new-instance v5, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v0, v2, v1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v5}, Lorg/telegram/messenger/FilePathDatabase;->postToFrontRunnable(Ljava/lang/Runnable;)V

    .line 345
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 350
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMediaExistance size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " thread_time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget-wide v1, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 352
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_1

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 354
    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo v0, "warning, not allowed in main thread"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 361
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FilePathDatabase;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createDatabase(IZ)V
    .locals 4

    .line 49
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 50
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    .line 55
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path.db-shm"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->shmCacheFile:Ljava/io/File;

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v2, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v3, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    .line 64
    const-string v3, "PRAGMA secure_delete = ON"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 65
    iget-object v2, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "PRAGMA temp_store = MEMORY"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "CREATE TABLE paths(document_id INTEGER, dc_id INTEGER, type INTEGER, path TEXT, flags INTEGER, PRIMARY KEY(document_id, dc_id, type));"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER, message_id INTEGER, message_type INTEGER);"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "PRAGMA user_version = 7"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "PRAGMA user_version"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current files db version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_4

    .line 82
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->migrateDatabase(I)V

    :goto_0
    if-nez p2, :cond_3

    .line 86
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->createBackup()V

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files db created from_backup= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "malformed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x4

    if-ge p1, v2, :cond_6

    const/4 v2, 0x1

    if-nez p2, :cond_5

    .line 91
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->restoreBackup()Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/2addr p1, v2

    .line 92
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    return-void

    .line 95
    :cond_5
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 96
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->shmCacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    add-int/2addr p1, v2

    .line 97
    invoke-virtual {p0, p1, v1}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    .line 100
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_7

    .line 101
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public ensureDatabaseCreated()V
    .locals 5

    .line 254
    iget-boolean v0, p0, Lorg/telegram/messenger/FilePathDatabase;->databaseCreated:Z

    if-nez v0, :cond_2

    .line 255
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    .line 257
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x3e8

    .line 259
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 261
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    add-int/2addr v0, v1

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    .line 269
    :cond_1
    invoke-virtual {p0, v2, v2}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    .line 270
    iput-boolean v1, p0, Lorg/telegram/messenger/FilePathDatabase;->databaseCreated:Z

    :cond_2
    return-void
.end method

.method public getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 427
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 434
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT dialog_id, message_id, message_type FROM paths_by_dialog_id WHERE path = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 436
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v2

    const/4 p1, 0x1

    .line 437
    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    .line 438
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v1

    move v1, p1

    move p1, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 444
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    .line 441
    :goto_1
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    move v7, v1

    move v1, p1

    move p1, v7

    .line 447
    :goto_2
    iput-wide v2, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    .line 448
    iput v1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    .line 449
    iput p1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    return-object p2

    :goto_3
    if-eqz v0, :cond_4

    .line 444
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 446
    :cond_4
    throw p1
.end method

.method public getPath(JIIZ)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 169
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    const-string/jumbo v6, "ms"

    const-string v9, " in "

    const-string v11, " path="

    const-string v12, " type="

    const-string v13, " dc="

    const/4 v14, 0x0

    const-string/jumbo v15, "~null~"

    if-ne v0, v15, :cond_1

    .line 171
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get file path cached null id="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-object v14

    :cond_1
    if-eqz v0, :cond_3

    .line 176
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v10, :cond_2

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get file path cached id="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 181
    :cond_3
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v16, v14

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v17, 0x0

    iget-object v14, v1, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v14}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v14

    if-ne v0, v14, :cond_5

    move/from16 v0, v17

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    :cond_5
    move/from16 v0, p5

    :goto_0
    if-eqz v0, :cond_8

    .line 186
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 187
    new-array v6, v0, [Ljava/lang/String;

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v11

    if-ne v0, v11, :cond_6

    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FilePathDatabase;)V

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FilePathDatabase;)V

    goto :goto_1

    .line 191
    :goto_2
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda6;

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FilePathDatabase;JII[Ljava/lang/String;JLjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v11, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    aget-object v0, v6, v17

    if-eqz v0, :cond_7

    .line 218
    iget-object v2, v1, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 220
    :cond_7
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10, v15}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_3
    aget-object v0, v6, v17

    return-object v0

    .line 224
    :cond_8
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-nez v0, :cond_9

    return-object v16

    .line 230
    :cond_9
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v7

    const-string v7, "SELECT path FROM paths WHERE document_id = "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " AND dc_id = "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " AND type = "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, v17

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7
    :try_end_1
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :try_start_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 232
    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :try_start_3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_b

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get file path id="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v14, v7

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v16, v14

    :goto_4
    move-object v14, v7

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_a
    move-object/from16 v14, v16

    .line 241
    :cond_b
    :goto_5
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v14, v16

    .line 238
    :goto_6
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v14, :cond_c

    .line 241
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_c
    move-object/from16 v14, v16

    :goto_7
    if-eqz v14, :cond_d

    .line 245
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10, v14}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 247
    :cond_d
    iget-object v0, v1, Lorg/telegram/messenger/FilePathDatabase;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10, v15}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-object v14

    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v14, :cond_e

    .line 241
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 243
    :cond_e
    throw v0
.end method

.method public getQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .line 458
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureQueueExist()V

    .line 459
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public hasAnotherRefOnFile(Ljava/lang/String;)Z
    .locals 4

    .line 373
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 374
    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 375
    new-instance v3, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v3}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 390
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 394
    :goto_0
    aget-boolean p1, v1, v2

    return p1
.end method

.method public isLocallyCreated(Ljava/lang/String;)Z
    .locals 4

    .line 533
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 534
    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 535
    new-instance v3, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v3}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 554
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 556
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 558
    :goto_0
    aget-boolean p1, v1, v2

    return p1
.end method

.method public lookupFiles(Ljava/util/ArrayList;)Landroid/util/LongSparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;",
            ">;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 480
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 481
    new-instance v2, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 504
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 506
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public putPath(JIIILjava/lang/String;)V
    .locals 8

    .line 275
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v7, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FilePathDatabase;JIILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Storage/CacheModel$FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 463
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
