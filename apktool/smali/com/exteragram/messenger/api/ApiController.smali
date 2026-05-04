.class public final Lcom/exteragram/messenger/api/ApiController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/api/ApiController;

.field private static lastBoostySyncTime:J

.field private static lastExchangeRatesSyncTime:J

.field private static lastProfilesSyncTime:J

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/api/ApiController;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/ApiController;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/ApiController;->INSTANCE:Lcom/exteragram/messenger/api/ApiController;

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/ApiController;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 40
    invoke-static {v2, v0, v1, v2}, Lcom/exteragram/messenger/api/ApiController;->sync$default(Landroid/content/SharedPreferences;ZILjava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/exteragram/messenger/api/ApiController;->scheduleWorker()V

    .line 42
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/api/ApiController$init$1;

    invoke-direct {v1}, Lcom/exteragram/messenger/api/ApiController$init$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ForegroundDetector;->addListener(Lorg/telegram/ui/Components/ForegroundDetector$Listener;)V

    return-void
.end method

.method public static synthetic performSync$default(Lcom/exteragram/messenger/api/ApiController;Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 70
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo p5, "preferences"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/api/ApiController;->performSync(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final scheduleWorker()V
    .locals 6

    .line 124
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 125
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    .line 128
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 364
    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v3, Lcom/exteragram/messenger/api/worker/SyncWorker;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 129
    invoke-virtual {v2, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 130
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 132
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 133
    const-string v2, "api_sync_work"

    .line 134
    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 132
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public static final sync()V
    .locals 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lcom/exteragram/messenger/api/ApiController;->sync$default(Landroid/content/SharedPreferences;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final sync(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 0
    const-string/jumbo v0, "preferences"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/exteragram/messenger/api/ApiController;->sync$default(Landroid/content/SharedPreferences;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final sync(Landroid/content/SharedPreferences;Z)V
    .locals 12

    const-string/jumbo v0, "preferences"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 59
    sget-wide v4, Lcom/exteragram/messenger/api/ApiController;->lastProfilesSyncTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-nez p1, :cond_3

    .line 60
    sget-wide v5, Lcom/exteragram/messenger/api/ApiController;->lastBoostySyncTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x28

    invoke-static {v7, v8}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Lj$/time/Duration;->toMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    if-nez p1, :cond_5

    .line 61
    sget-wide v6, Lcom/exteragram/messenger/api/ApiController;->lastExchangeRatesSyncTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Lj$/time/Duration;->ofHours(J)Lj$/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    return-void

    .line 65
    :cond_6
    sget-object v6, Lcom/exteragram/messenger/api/ApiController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lcom/exteragram/messenger/api/ApiController$sync$1;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, v0}, Lcom/exteragram/messenger/api/ApiController$sync$1;-><init>(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic sync$default(Landroid/content/SharedPreferences;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 57
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo p3, "preferences"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p0, p1}, Lcom/exteragram/messenger/api/ApiController;->sync(Landroid/content/SharedPreferences;Z)V

    return-void
.end method


# virtual methods
.method public final performSync(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move/from16 v1, p2

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/exteragram/messenger/api/ApiController$performSync$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;

    iget v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/exteragram/messenger/api/ApiController$performSync$1;-><init>(Lcom/exteragram/messenger/api/ApiController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 70
    iget v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    const-string/jumbo v6, "lastSyncTimestamp"

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v4, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lretrofit2/Response;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/exteragram/messenger/api/network/ApiService;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v2, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x1

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    const/16 v16, 0x1

    goto/16 :goto_16

    :pswitch_1
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iget-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lretrofit2/Response;

    iget-object v15, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lcom/exteragram/messenger/api/network/ApiService;

    iget-object v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroid/content/SharedPreferences;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x1

    goto/16 :goto_10

    :pswitch_2
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/exteragram/messenger/api/network/ApiService;

    iget-object v10, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroid/content/SharedPreferences;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a

    :pswitch_3
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/exteragram/messenger/api/network/ApiService;

    iget-object v10, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroid/content/SharedPreferences;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_8

    :pswitch_4
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lretrofit2/Response;

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroid/content/SharedPreferences;

    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v19, v7

    move v7, v1

    move v1, v5

    move-object v5, v9

    move-wide/from16 v8, v19

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-wide/from16 v19, v7

    move v7, v1

    move v1, v5

    move-object v5, v9

    move-wide/from16 v8, v19

    goto/16 :goto_5

    :pswitch_5
    iget v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iget-wide v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iget-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iget-object v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroid/content/SharedPreferences;

    :try_start_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v19, v7

    move v7, v1

    move v1, v5

    move-object v5, v9

    move-wide/from16 v8, v19

    goto :goto_2

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-nez v1, :cond_2

    .line 75
    sget-wide v9, Lcom/exteragram/messenger/api/ApiController;->lastBoostySyncTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x28

    invoke-static {v11, v12}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    move-wide v8, v7

    const/4 v7, 0x1

    goto :goto_6

    .line 77
    :cond_2
    :goto_1
    :try_start_6
    sget-object v0, Lcom/exteragram/messenger/api/network/ApiClient;->INSTANCE:Lcom/exteragram/messenger/api/network/ApiClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/network/ApiClient;->getApiService()Lcom/exteragram/messenger/api/network/ApiService;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v5, p1

    :try_start_7
    iput-object v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    const/4 v9, 0x1

    iput v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    iput v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-interface {v0, v2}, Lcom/exteragram/messenger/api/network/ApiService;->getBoostySubscribers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v0, v4, :cond_3

    goto/16 :goto_11

    :cond_3
    move-wide v8, v7

    const/4 v7, 0x1

    .line 70
    :goto_2
    :try_start_8
    check-cast v0, Lretrofit2/Response;

    .line 78
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 79
    sget-object v10, Lcom/exteragram/messenger/api/db/DatabaseHelper;->INSTANCE:Lcom/exteragram/messenger/api/db/DatabaseHelper;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Ljava/util/List;

    iput-object v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iput v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    const/4 v0, 0x2

    iput v0, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-virtual {v10, v11, v2}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->insertBoostySubscribers(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_4

    goto/16 :goto_11

    .line 80
    :cond_4
    :goto_3
    sput-wide v8, Lcom/exteragram/messenger/api/ApiController;->lastBoostySyncTime:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_4
    move-wide v8, v7

    const/4 v7, 0x1

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_4

    .line 83
    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    if-nez v1, :cond_7

    .line 88
    sget-wide v10, Lcom/exteragram/messenger/api/ApiController;->lastProfilesSyncTime:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-ltz v0, :cond_6

    goto :goto_7

    :cond_6
    const/16 v16, 0x1

    goto/16 :goto_17

    :cond_7
    :goto_7
    const/4 v0, 0x0

    .line 90
    :try_start_9
    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    sget-object v0, Lcom/exteragram/messenger/api/network/ApiClient;->INSTANCE:Lcom/exteragram/messenger/api/network/ApiClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/network/ApiClient;->getApiService()Lcom/exteragram/messenger/api/network/ApiService;

    move-result-object v0

    if-nez v10, :cond_9

    .line 94
    iput-object v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iput v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    const/4 v11, 0x3

    iput v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-interface {v0, v2}, Lcom/exteragram/messenger/api/network/ApiService;->getAllProfiles(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_8

    goto/16 :goto_11

    :cond_8
    move-wide/from16 v19, v8

    move-object v9, v0

    move-object v0, v11

    move-object v11, v5

    move v5, v1

    move v1, v7

    move-wide/from16 v7, v19

    :goto_8
    check-cast v0, Lretrofit2/Response;

    :goto_9
    move-object v14, v0

    move-object v15, v9

    move-wide/from16 v19, v7

    move-object v7, v10

    move-wide/from16 v9, v19

    move-object v8, v11

    goto :goto_b

    .line 96
    :cond_9
    iput-object v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iput v7, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    const/4 v11, 0x4

    iput v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-interface {v0, v10, v2}, Lcom/exteragram/messenger/api/network/ApiService;->getUpdates(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_a

    goto/16 :goto_11

    :cond_a
    move-wide/from16 v19, v8

    move-object v9, v0

    move-object v0, v11

    move-object v11, v5

    move v5, v1

    move v1, v7

    move-wide/from16 v7, v19

    .line 70
    :goto_a
    check-cast v0, Lretrofit2/Response;

    goto :goto_9

    .line 98
    :goto_b
    invoke-virtual {v14}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v14}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 99
    invoke-virtual {v14}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    check-cast v13, Ljava/util/List;

    .line 100
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 101
    move-object v0, v13

    check-cast v0, Ljava/lang/Iterable;

    .line 3301
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3302
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 p1, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3304
    move-object/from16 v17, v0

    check-cast v17, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    .line 101
    invoke-virtual/range {v17 .. v17}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getDeleted()Ljava/lang/Boolean;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 p2, v7

    const/16 v16, 0x1

    :try_start_a
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3305
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_16

    .line 3307
    :cond_b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    goto :goto_c

    :cond_c
    move-object/from16 p2, v7

    const/16 v16, 0x1

    .line 3310
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 102
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 103
    sget-object v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;->INSTANCE:Lcom/exteragram/messenger/api/db/DatabaseHelper;

    move-object v3, v12

    check-cast v3, Ljava/lang/Iterable;

    .line 1563
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 p1, v12

    const/16 v12, 0xa

    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1635
    check-cast v12, Lcom/exteragram/messenger/api/dto/ProfileDTO;

    .line 103
    invoke-virtual {v12}, Lcom/exteragram/messenger/api/dto/ProfileDTO;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    .line 1635
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 103
    :cond_d
    iput-object v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$5:Ljava/lang/Object;

    iput-object v11, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$6:Ljava/lang/Object;

    iput-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iput v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    const/4 v3, 0x5

    iput v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-virtual {v0, v7, v2}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->deleteProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_e

    goto :goto_11

    :cond_e
    move-object/from16 v12, p1

    goto :goto_f

    :cond_f
    move-object/from16 p1, v12

    :goto_f
    move-object/from16 v7, p2

    .line 105
    :goto_10
    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 106
    sget-object v0, Lcom/exteragram/messenger/api/db/DatabaseHelper;->INSTANCE:Lcom/exteragram/messenger/api/db/DatabaseHelper;

    iput-object v8, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$1:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$2:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->L$6:Ljava/lang/Object;

    iput-boolean v5, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->Z$0:Z

    iput-wide v9, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->J$0:J

    iput v1, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->I$0:I

    const/4 v3, 0x6

    iput v3, v2, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    invoke-virtual {v0, v11, v2}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->insertProfiles(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_10

    :goto_11
    return-object v4

    :cond_10
    move-object v2, v8

    move-wide v4, v9

    :goto_12
    move v7, v1

    move-object v8, v2

    move-wide v9, v4

    goto :goto_14

    :cond_11
    :goto_13
    move v7, v1

    goto :goto_14

    :cond_12
    const/16 v16, 0x1

    goto :goto_13

    .line 45
    :goto_14
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    sput-wide v9, Lcom/exteragram/messenger/api/ApiController;->lastProfilesSyncTime:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_17

    :cond_13
    const/16 v16, 0x1

    :goto_15
    const/4 v7, 0x0

    goto :goto_17

    .line 115
    :goto_16
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    :goto_17
    if-eqz v7, :cond_14

    move/from16 v7, v16

    goto :goto_18

    :cond_14
    const/4 v7, 0x0

    .line 119
    :goto_18
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
