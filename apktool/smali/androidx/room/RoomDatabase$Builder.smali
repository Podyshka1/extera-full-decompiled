.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowDestructiveMigrationForAllTables:Z

.field private allowDestructiveMigrationOnDowngrade:Z

.field private allowMainThreadQueries:Z

.field private autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private autoCloseTimeout:J

.field private final autoMigrationSpecs:Ljava/util/List;

.field private final callbacks:Ljava/util/List;

.field private final context:Landroid/content/Context;

.field private copyFromAssetPath:Ljava/lang/String;

.field private copyFromFile:Ljava/io/File;

.field private copyFromInputStream:Ljava/util/concurrent/Callable;

.field private driver:Landroidx/sqlite/SQLiteDriver;

.field private final factory:Lkotlin/jvm/functions/Function0;

.field private inMemoryTrackingTableMode:Z

.field private journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final klass:Lkotlin/reflect/KClass;

.field private final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field private final migrationStartAndEndVersions:Ljava/util/Set;

.field private migrationsNotRequiredFrom:Ljava/util/Set;

.field private multiInstanceInvalidationIntent:Landroid/content/Intent;

.field private final name:Ljava/lang/String;

.field private queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private queryExecutor:Ljava/util/concurrent/Executor;

.field private requireMigration:Z

.field private supportOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field private transactionExecutor:Ljava/util/concurrent/Executor;

.field private final typeConverters:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 915
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    const-wide/16 v0, -0x1

    .line 918
    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 922
    new-instance v0, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {v0}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 928
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 935
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    const/4 v0, 0x1

    .line 939
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 950
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    .line 898
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    .line 899
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 900
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 901
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->factory:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;
    .locals 5

    const-string/jumbo v0, "migrations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1147
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    iget v4, v2, Landroidx/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    iget v2, v2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Landroidx/room/migration/Migration;)V

    return-object p0
.end method

.method public allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1178
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    return-object p0
.end method

.method public build()Landroidx/room/RoomDatabase;
    .locals 31

    move-object/from16 v0, p0

    .line 1677
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 1678
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 1679
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1680
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 1681
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 1683
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 1686
    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    invoke-static {v1, v2}, Landroidx/room/RoomDatabaseKt;->validateMigrationsNotRequired(Ljava/util/Set;Ljava/util/Set;)V

    .line 1689
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->driver:Landroidx/sqlite/SQLiteDriver;

    if-nez v1, :cond_3

    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v3, :cond_3

    .line 1691
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 1694
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    goto :goto_1

    .line 1695
    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    .line 1705
    :goto_1
    iget-wide v3, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 1707
    :goto_2
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v5

    .line 1711
    :goto_4
    const-string v7, "Required value was null."

    if-eqz v1, :cond_11

    if-eqz v3, :cond_a

    .line 1713
    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1717
    new-instance v9, Landroidx/room/support/AutoCloser;

    .line 1718
    iget-wide v10, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 1719
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v12, :cond_8

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 1717
    invoke-direct/range {v9 .. v15}, Landroidx/room/support/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$Watch;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1721
    new-instance v8, Landroidx/room/support/AutoClosingRoomOpenHelperFactory;

    invoke-direct {v8, v1, v9}, Landroidx/room/support/AutoClosingRoomOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/support/AutoCloser;)V

    move-object v1, v8

    goto :goto_5

    .line 1719
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1713
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    if-eqz v6, :cond_10

    .line 1728
    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 1732
    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    if-nez v8, :cond_b

    move v9, v4

    goto :goto_6

    :cond_b
    move v9, v5

    .line 1733
    :goto_6
    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    if-nez v10, :cond_c

    move v11, v4

    goto :goto_7

    :cond_c
    move v11, v5

    .line 1735
    :goto_7
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-nez v12, :cond_d

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    add-int/2addr v9, v11

    add-int/2addr v9, v4

    if-ne v9, v5, :cond_e

    .line 1747
    new-instance v4, Landroidx/room/support/PrePackagedCopyOpenHelperFactory;

    invoke-direct {v4, v8, v10, v12, v1}, Landroidx/room/support/PrePackagedCopyOpenHelperFactory;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)V

    move-object v1, v4

    goto :goto_9

    .line 1741
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1728
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_9
    move-object v11, v1

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_14

    if-nez v3, :cond_13

    if-nez v6, :cond_12

    goto :goto_b

    .line 1776
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pre-Package Database is not supported when an SQLiteDriver is configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1773
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Auto Closing Database is not supported when an SQLiteDriver is configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1784
    :cond_14
    :goto_b
    new-instance v8, Landroidx/room/DatabaseConfiguration;

    .line 1785
    iget-object v9, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 1786
    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 1788
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 1789
    iget-object v13, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 1790
    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 1791
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v1, v9}, Landroidx/room/RoomDatabase$JournalMode;->resolve$room_runtime(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v15

    .line 1792
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_18

    .line 1793
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_17

    .line 1794
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 1795
    iget-boolean v5, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 1796
    iget-boolean v6, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 1797
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 1798
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 1799
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    move-object/from16 v23, v1

    .line 1800
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v24, v1

    .line 1802
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    move-object/from16 v26, v1

    .line 1803
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    move-object/from16 v27, v1

    .line 1805
    iget-boolean v1, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    move/from16 v28, v1

    .line 1806
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->driver:Landroidx/sqlite/SQLiteDriver;

    move-object/from16 v29, v1

    .line 1807
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/16 v25, 0x0

    move-object/from16 v30, v1

    move-object/from16 v22, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    .line 1784
    invoke-direct/range {v8 .. v30}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 1809
    iget-boolean v1, v0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    invoke-virtual {v8, v1}, Landroidx/room/DatabaseConfiguration;->setUseTempTrackingTable$room_runtime(Z)V

    .line 1810
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->factory:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase;

    if-nez v1, :cond_16

    :cond_15
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroidx/room/util/KClassUtil;->findAndInstantiateDatabaseImpl$default(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase;

    .line 1811
    :cond_16
    invoke-virtual {v1, v8}, Landroidx/room/RoomDatabase;->init(Landroidx/room/DatabaseConfiguration;)V

    return-object v1

    .line 1793
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1792
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1700
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1701
    const-string v2, "A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory."

    .line 1700
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final fallbackToDestructiveMigration(Z)Landroidx/room/RoomDatabase$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v0, 0x1

    .line 1369
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 1370
    iput-boolean p1, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    return-object p0
.end method

.method public openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;
    .locals 0

    .line 1127
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    return-object p0
.end method

.method public setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    .line 1225
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    return-object p0

    .line 1221
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
