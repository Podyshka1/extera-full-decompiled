.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allowDestructiveMigrationForAllTables:Z

.field public final allowDestructiveMigrationOnDowngrade:Z

.field public final allowMainThreadQueries:Z

.field public final autoMigrationSpecs:Ljava/util/List;

.field public final callbacks:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final copyFromAssetPath:Ljava/lang/String;

.field public final copyFromFile:Ljava/io/File;

.field public final copyFromInputStream:Ljava/util/concurrent/Callable;

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field public final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field private final migrationNotRequiredFrom:Ljava/util/Set;

.field public final multiInstanceInvalidation:Z

.field public final multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

.field public final name:Ljava/lang/String;

.field private preparedStatementCacheSize:I

.field public final queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final queryExecutor:Ljava/util/concurrent/Executor;

.field public final requireMigration:Z

.field public final sqliteDriver:Landroidx/sqlite/SQLiteDriver;

.field public final sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final transactionExecutor:Ljava/util/concurrent/Executor;

.field public final typeConverters:Ljava/util/List;

.field private useTempTrackingTable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V
    .locals 5

    move-object v0, p9

    move-object v1, p10

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    const-string v4, "context"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "migrationContainer"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "journalMode"

    invoke-static {p7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "queryExecutor"

    invoke-static {p8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "transactionExecutor"

    invoke-static {p9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "typeConverters"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "autoMigrationSpecs"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 48
    iput-object p4, p0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 51
    iput-object p5, p0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 54
    iput-boolean p6, p0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 57
    iput-object p7, p0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 60
    iput-object p8, p0, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 63
    iput-object v0, p0, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object v1, p0, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    move/from16 p1, p11

    .line 75
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    move/from16 p1, p12

    .line 78
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    move-object/from16 p1, p13

    .line 79
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    move-object/from16 p1, p14

    .line 82
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 85
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    move-object/from16 p1, p16

    .line 88
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 94
    iput-object v2, p0, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 97
    iput-object v3, p0, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    move/from16 p1, p20

    .line 100
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    move-object/from16 p1, p21

    .line 103
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    move-object/from16 p1, p22

    .line 106
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x1

    if-eqz v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 113
    :goto_0
    iput-boolean p2, p0, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    .line 115
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    const/16 p1, 0x19

    .line 741
    iput p1, p0, Landroidx/room/DatabaseConfiguration;->preparedStatementCacheSize:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/room/DatabaseConfiguration;Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Landroidx/room/DatabaseConfiguration;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p23

    if-nez p24, :cond_16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 756
    iget-object v2, v0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 757
    iget-object v3, v0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 758
    iget-object v4, v0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 759
    iget-object v5, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 760
    iget-object v6, v0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 761
    iget-boolean v7, v0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 762
    iget-object v8, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 763
    iget-object v9, v0, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 764
    iget-object v10, v0, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 766
    iget-object v11, v0, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 767
    iget-boolean v12, v0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 768
    iget-boolean v13, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 769
    iget-object v14, v0, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 770
    iget-object v15, v0, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 771
    iget-object v2, v0, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 772
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p23, v16

    if-eqz v16, :cond_10

    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v16, p17

    :goto_10
    const/high16 v17, 0x20000

    and-int v17, p23, v17

    move-object/from16 p2, v1

    if-eqz v17, :cond_11

    .line 775
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v17, 0x40000

    and-int v17, p23, v17

    move-object/from16 p3, v1

    if-eqz v17, :cond_12

    .line 776
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v17, 0x80000

    and-int v17, p23, v17

    move-object/from16 p4, v1

    if-eqz v17, :cond_13

    .line 777
    iget-boolean v1, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    goto :goto_13

    :cond_13
    move/from16 v1, p20

    :goto_13
    const/high16 v17, 0x100000

    and-int v17, p23, v17

    move/from16 p5, v1

    if-eqz v17, :cond_14

    .line 778
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v17, 0x200000

    and-int v17, p23, v17

    if-eqz v17, :cond_15

    move-object/from16 p6, v1

    .line 779
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 p22, p6

    move-object/from16 p23, v1

    :goto_15
    move-object/from16 p17, p2

    move-object/from16 p19, p3

    move-object/from16 p20, p4

    move/from16 p21, p5

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p18, v16

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_16

    :cond_15
    move-object/from16 p23, p22

    move-object/from16 p22, v1

    goto :goto_15

    .line 754
    :goto_16
    invoke-virtual/range {p1 .. p23}, Landroidx/room/DatabaseConfiguration;->copy(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: copy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final copy(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)Landroidx/room/DatabaseConfiguration;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "migrationContainer"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "journalMode"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "queryExecutor"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "transactionExecutor"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "typeConverters"

    move-object/from16 v2, p18

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "autoMigrationSpecs"

    move-object/from16 v4, p19

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    new-instance v2, Landroidx/room/DatabaseConfiguration;

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v21, v4

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v24}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 806
    iget-boolean v1, v0, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    iput-boolean v1, v2, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    .line 807
    iget v1, v0, Landroidx/room/DatabaseConfiguration;->preparedStatementCacheSize:I

    iput v1, v2, Landroidx/room/DatabaseConfiguration;->preparedStatementCacheSize:I

    return-object v2
.end method

.method public final getMigrationNotRequiredFrom$room_runtime()Ljava/util/Set;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    return-object v0
.end method

.method public final getPreparedStatementCacheSize$room_runtime()I
    .locals 1

    .line 741
    iget v0, p0, Landroidx/room/DatabaseConfiguration;->preparedStatementCacheSize:I

    return v0
.end method

.method public final getUseTempTrackingTable$room_runtime()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    return v0
.end method

.method public isMigrationRequired(II)Z
    .locals 0

    .line 751
    invoke-static {p0, p1, p2}, Landroidx/room/util/MigrationUtil;->isMigrationRequired(Landroidx/room/DatabaseConfiguration;II)Z

    move-result p1

    return p1
.end method

.method public final setUseTempTrackingTable$room_runtime(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    return-void
.end method
