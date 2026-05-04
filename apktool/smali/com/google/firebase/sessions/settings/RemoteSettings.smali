.class public final Lcom/google/firebase/sessions/settings/RemoteSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;

.field private static final defaultCacheDuration:I

.field private static final sanitizeRegex:Lkotlin/text/Regex;


# instance fields
.field private final appInfo:Lcom/google/firebase/sessions/ApplicationInfo;

.field private final configsFetcher:Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;

.field private final fetchInProgress:Lkotlinx/coroutines/sync/Mutex;

.field private final firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

.field private final timeProvider:Lcom/google/firebase/sessions/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->Companion:Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;

    .line 154
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x18

    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->defaultCacheDuration:I

    .line 156
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->sanitizeRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)V
    .locals 1

    const-string/jumbo v0, "timeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationsApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configsFetcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 43
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->appInfo:Lcom/google/firebase/sessions/ApplicationInfo;

    .line 44
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->configsFetcher:Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;

    .line 45
    iput-object p5, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 47
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->fetchInProgress:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->Companion:Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;

    return-object v0
.end method

.method public static final synthetic access$getDefaultCacheDuration$cp()I
    .locals 1

    .line 37
    sget v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->defaultCacheDuration:I

    return v0
.end method

.method public static final synthetic access$getSettingsCache$p(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    return-object p0
.end method

.method public static final synthetic access$getTimeProvider$p(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/TimeProvider;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->timeProvider:Lcom/google/firebase/sessions/TimeProvider;

    return-object p0
.end method

.method private final sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 151
    sget-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->sanitizeRegex:Lkotlin/text/Regex;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSamplingRate()Ljava/lang/Double;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->sessionSamplingRate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSessionEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->sessionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSessionRestartTimeout-FghU774()Lkotlin/time/Duration;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->sessionRestartTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateSettings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    iget v3, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 64
    iget v4, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "FirebaseSessions"

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_5

    :cond_3
    iget-object v4, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->fetchInProgress:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->hasCacheExpired()Z

    move-result v0

    if-nez v0, :cond_5

    .line 67
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 70
    :cond_5
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->fetchInProgress:Lkotlinx/coroutines/sync/Mutex;

    .line 121
    iput-object v1, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-interface {v0, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto/16 :goto_3

    :cond_6
    move-object v4, v0

    move-object v10, v1

    .line 72
    :goto_1
    :try_start_2
    iget-object v0, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->settingsCache:Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->hasCacheExpired()Z

    move-result v0

    if-nez v0, :cond_7

    .line 73
    const-string v0, "Remote settings cache not expired. Using cached values."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 78
    :cond_7
    :try_start_3
    sget-object v0, Lcom/google/firebase/sessions/InstallationId;->Companion:Lcom/google/firebase/sessions/InstallationId$Companion;

    iget-object v11, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->firebaseInstallationsApi:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iput-object v10, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-virtual {v0, v11, v2}, Lcom/google/firebase/sessions/InstallationId$Companion;->create(Lcom/google/firebase/installations/FirebaseInstallationsApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    goto/16 :goto_3

    :cond_8
    :goto_2
    check-cast v0, Lcom/google/firebase/sessions/InstallationId;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/InstallationId;->getFid()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v11, ""

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 80
    const-string v0, "Error getting Firebase Installation ID. Skipping this Session Event."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 87
    :cond_9
    :try_start_4
    const-string v11, "X-Crashlytics-Installation-ID"

    invoke-static {v11, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 88
    const-string v11, "X-Crashlytics-Device-Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/google/firebase/sessions/settings/RemoteSettings;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 89
    const-string v12, "X-Crashlytics-OS-Build-Version"

    sget-object v13, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v14, "INCREMENTAL"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Lcom/google/firebase/sessions/settings/RemoteSettings;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 90
    const-string v13, "X-Crashlytics-OS-Display-Version"

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v15, "RELEASE"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Lcom/google/firebase/sessions/settings/RemoteSettings;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 91
    const-string v14, "X-Crashlytics-API-Client-Version"

    iget-object v15, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->appInfo:Lcom/google/firebase/sessions/ApplicationInfo;

    invoke-virtual {v15}, Lcom/google/firebase/sessions/ApplicationInfo;->getSessionSdkVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/4 v15, 0x5

    new-array v15, v15, [Lkotlin/Pair;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    aput-object v11, v15, v7

    aput-object v12, v15, v6

    aput-object v13, v15, v5

    const/4 v0, 0x4

    aput-object v14, v15, v0

    .line 86
    invoke-static {v15}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 94
    const-string v6, "Fetching settings from server."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v6, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->configsFetcher:Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;

    new-instance v7, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    invoke-direct {v7, v10, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;

    invoke-direct {v8, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    invoke-interface {v6, v0, v7, v8, v2}, Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;->doConfigFetch(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v3, :cond_a

    :goto_3
    return-object v3

    :cond_a
    move-object v2, v4

    .line 141
    :goto_4
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 125
    :goto_5
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
