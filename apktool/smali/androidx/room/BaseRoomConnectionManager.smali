.class public abstract Landroidx/room/BaseRoomConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/BaseRoomConnectionManager$Companion;,
        Landroidx/room/BaseRoomConnectionManager$DriverWrapper;,
        Landroidx/room/BaseRoomConnectionManager$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/BaseRoomConnectionManager$Companion;


# instance fields
.field private isConfigured:Z

.field private isInitializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/BaseRoomConnectionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/BaseRoomConnectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/BaseRoomConnectionManager;->Companion:Landroidx/room/BaseRoomConnectionManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$configurationConnection(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configurationConnection(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public static final synthetic access$configureDatabase(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureDatabase(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public static final synthetic access$isConfigured$p(Landroidx/room/BaseRoomConnectionManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    return p0
.end method

.method public static final synthetic access$isInitializing$p(Landroidx/room/BaseRoomConnectionManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    return p0
.end method

.method public static final synthetic access$setInitializing$p(Landroidx/room/BaseRoomConnectionManager;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    return-void
.end method

.method private final checkIdentity(Landroidx/sqlite/SQLiteConnection;)V
    .locals 4

    .line 277
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->hasRoomMasterTable(Landroidx/sqlite/SQLiteConnection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 280
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 281
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 279
    :goto_0
    invoke-static {p1, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 287
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 288
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getLegacyIdentityHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, ", found: "

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 279
    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    .line 298
    :cond_3
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 299
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 303
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    move-result-object v0

    .line 304
    iget-boolean v1, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 310
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 299
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 305
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 299
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 313
    :cond_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 315
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    return-void

    .line 314
    :cond_6
    const-string v0, "ROLLBACK TRANSACTION"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 315
    throw v1
.end method

.method private final configurationConnection(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 138
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 139
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V

    .line 140
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private final configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 167
    const-string v0, "PRAGMA busy_timeout"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    const/4 v1, 0x0

    .line 169
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 167
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    .line 172
    const-string v0, "PRAGMA busy_timeout = 3000"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final configureDatabase(Landroidx/sqlite/SQLiteConnection;)V
    .locals 3

    .line 106
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 107
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureJournalMode(Landroidx/sqlite/SQLiteConnection;)V

    .line 108
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V

    .line 110
    const-string v0, "PRAGMA user_version"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    const/4 v1, 0x0

    .line 112
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v1, v1

    const/4 v2, 0x0

    .line 110
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 115
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 116
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/room/BaseRoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    .line 122
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 116
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 125
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 126
    :cond_2
    const-string v1, "ROLLBACK TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 127
    throw v0

    .line 130
    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :catchall_1
    move-exception p1

    .line 110
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final configureJournalMode(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v1, :cond_0

    .line 146
    const-string v0, "PRAGMA journal_mode = WAL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    const-string v0, "PRAGMA journal_mode = TRUNCATE"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method private final configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v1, :cond_0

    .line 157
    const-string v0, "PRAGMA synchronous = NORMAL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    const-string v0, "PRAGMA synchronous = FULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method private final createMasterTableIfNotExists(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 204
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method

.method private final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 7

    .line 238
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    if-eqz v0, :cond_5

    .line 242
    const-string v0, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    .line 241
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 245
    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    .line 246
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 247
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string/jumbo v5, "sqlite_"

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v6, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_metadata"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 251
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 252
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 245
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0x60

    if-eqz v1, :cond_3

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP VIEW IF EXISTS `"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS `"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    .line 244
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    .line 265
    :cond_5
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private final hasEmptySchema(Landroidx/sqlite/SQLiteConnection;)Z
    .locals 6

    .line 195
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 196
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final hasRoomMasterTable(Landroidx/sqlite/SQLiteConnection;)Z
    .locals 6

    .line 323
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    .line 322
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 326
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final invokeCreateCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 345
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 345
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final invokeDestructiveMigrationCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 349
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 349
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final invokeOpenCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 353
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 353
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateIdentity(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 199
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->createMasterTableIfNotExists(Landroidx/sqlite/SQLiteConnection;)V

    .line 200
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getCallbacks()Ljava/util/List;
.end method

.method protected abstract getConfiguration()Landroidx/room/DatabaseConfiguration;
.end method

.method protected final getMaxNumberOfReaders(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    sget-object v0, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get max number of reader for journal mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method protected final getMaxNumberOfWriters(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    sget-object v0, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get max number of writers for journal mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected abstract getOpenDelegate()Landroidx/room/RoomOpenDelegate;
.end method

.method protected final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->hasEmptySchema(Landroidx/sqlite/SQLiteConnection;)Z

    move-result v0

    .line 178
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    move-result-object v0

    .line 184
    iget-boolean v1, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 189
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 190
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeCreateCallback(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method protected final onMigrate(Landroidx/sqlite/SQLiteConnection;II)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-static {v0, p2, p3}, Landroidx/room/util/MigrationUtil;->findMigrationPath(Landroidx/room/RoomDatabase$MigrationContainer;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 212
    check-cast v0, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/room/migration/Migration;

    .line 212
    invoke-virtual {p3, p1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/SQLiteConnection;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    move-result-object p2

    .line 214
    iget-boolean p3, p2, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    if-eqz p3, :cond_1

    .line 217
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 218
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migration didn\'t properly handle: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_2
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/room/util/MigrationUtil;->isMigrationRequired(Landroidx/room/DatabaseConfiguration;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 232
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeDestructiveMigrationCallback(Landroidx/sqlite/SQLiteConnection;)V

    .line 233
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    .line 223
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->checkIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 271
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 272
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeOpenCallback(Landroidx/sqlite/SQLiteConnection;)V

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    return-void
.end method

.method public abstract resolveFileName$room_runtime(Ljava/lang/String;)Ljava/lang/String;
.end method
