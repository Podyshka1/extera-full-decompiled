.class public final Landroidx/room/support/PrePackagedCopyOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private final copyFromAssetPath:Ljava/lang/String;

.field private final copyFromFile:Ljava/io/File;

.field private final copyFromInputStream:Ljava/util/concurrent/Callable;

.field private databaseConfiguration:Landroidx/room/DatabaseConfiguration;

.field private final databaseVersion:I

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private verified:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILandroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    .line 47
    iput-object p4, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 48
    iput p5, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I

    .line 49
    iput-object p6, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-void
.end method

.method private final copyDatabaseFile(Ljava/io/File;Z)V
    .locals 4

    .line 158
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    const-string/jumbo v1, "newChannel(...)"

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-string v1, "getChannel(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_5

    .line 165
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object v1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "room-copy-helper"

    const-string v3, ".tmp"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 180
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 181
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/room/util/FileUtil;->copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 184
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directories for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 190
    :cond_3
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2}, Landroidx/room/support/PrePackagedCopyOpenHelper;->dispatchOnOpenPrepackagedDatabase(Ljava/io/File;Z)V

    .line 191
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 192
    :cond_4
    new-instance p2, Ljava/io/IOException;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move intermediate file ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to destination ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string p1, ")."

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Ljava/io/IOException;

    const-string v0, "inputStreamCallable exception on call"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 171
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 172
    const-string p2, "copyFromAssetPath, copyFromFile and copyFromInputStream are all null!"

    .line 171
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final dispatchOnOpenPrepackagedDatabase(Ljava/io/File;Z)V
    .locals 0

    .line 200
    iget-object p1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    if-nez p1, :cond_0

    const-string p1, "databaseConfiguration"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final verifyDatabaseFile(Z)V
    .locals 10

    .line 92
    const-string v0, "ROOM"

    invoke-virtual {p0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 93
    iget-object v2, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 94
    iget-object v3, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    const-string v4, "databaseConfiguration"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    iget-boolean v3, v3, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    .line 95
    new-instance v6, Landroidx/sqlite/util/ProcessLock;

    iget-object v7, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v1, v7, v3}, Landroidx/sqlite/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 99
    :try_start_0
    invoke-static {v6, v3, v7, v5}, Landroidx/sqlite/util/ProcessLock;->lock$default(Landroidx/sqlite/util/ProcessLock;ZILjava/lang/Object;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Unable to copy database file."

    if-nez v3, :cond_1

    .line 103
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1}, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyDatabaseFile(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 106
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_1
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/room/util/DBUtil;->readVersion(Ljava/io/File;)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    iget v8, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v3, v8, :cond_2

    .line 151
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    .line 122
    :cond_2
    :try_start_5
    iget-object v8, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    if-nez v8, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_3
    iget-object v8, v8, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 124
    iget v9, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I

    .line 122
    invoke-virtual {v8, v3, v9}, Landroidx/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_4

    .line 151
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    .line 131
    :cond_4
    :try_start_6
    iget-object v8, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    if-nez v8, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v5, v8

    :goto_0
    iget v4, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I

    invoke-virtual {v5, v3, v4}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    .line 136
    :cond_6
    :try_start_7
    iget-object v3, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_7

    .line 138
    :try_start_8
    invoke-direct {p0, v2, p1}, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyDatabaseFile(Ljava/io/File;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 142
    :try_start_9
    invoke-static {v0, v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 147
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete database file ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for a copy destructive migration."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 151
    :goto_1
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    :catch_2
    move-exception p1

    .line 115
    :try_start_a
    const-string v1, "Unable to read database version."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 151
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v6}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    throw p1

    .line 92
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->verifyDatabaseFile(Z)V

    .line 65
    iput-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final setDatabaseConfiguration(Landroidx/room/DatabaseConfiguration;)V
    .locals 1

    const-string v0, "databaseConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    return-void
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
