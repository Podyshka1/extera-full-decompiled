.class public final Lcom/google/firebase/sessions/settings/SettingsCacheImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/SettingsCache;


# instance fields
.field private final backgroundDispatcher:Lkotlin/coroutines/CoroutineContext;

.field private final sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

.field private final sessionConfigsDataStore:Landroidx/datastore/core/DataStore;

.field private final timeProvider:Lcom/google/firebase/sessions/TimeProvider;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)V
    .locals 6

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionConfigsDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->backgroundDispatcher:Lkotlin/coroutines/CoroutineContext;

    .line 52
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    .line 53
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsDataStore:Landroidx/datastore/core/DataStore;

    .line 55
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;-><init>(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getSessionConfigsAtomicReference$p(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic access$getSessionConfigsDataStore$p(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsDataStore:Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method private final getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    new-instance v1, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$sessionConfigs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$sessionConfigs$1;-><init>(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding1;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsAtomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firebase/sessions/settings/SessionConfigs;

    return-object v0
.end method


# virtual methods
.method public hasCacheExpired()Z
    .locals 6

    .line 78
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SessionConfigs;->getCacheUpdatedTimeSeconds()Ljava/lang/Long;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/sessions/settings/SessionConfigs;->getCacheDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    invoke-interface {v2}, Lcom/google/firebase/sessions/TimeProvider;->currentTime()Lcom/google/firebase/sessions/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/sessions/Time;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public sessionRestartTimeout()Ljava/lang/Integer;
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SessionConfigs;->getSessionTimeoutSeconds()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public sessionSamplingRate()Ljava/lang/Double;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SessionConfigs;->getSessionSamplingRate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public sessionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->getSessionConfigs()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SessionConfigs;->getSessionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public updateConfigs(Lcom/google/firebase/sessions/settings/SessionConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;

    iget v1, v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;-><init>(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget v2, v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->sessionConfigsDataStore:Landroidx/datastore/core/DataStore;

    new-instance v2, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$2;-><init>(Lcom/google/firebase/sessions/settings/SessionConfigs;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$updateConfigs$1;->label:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 100
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update config values: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FirebaseSessions"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
