.class public Lcom/google/firebase/installations/FirebaseInstallations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/FirebaseInstallationsApi;


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;

.field private final fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

.field private fidListeners:Ljava/util/Set;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final iidStore:Lcom/google/firebase/components/Lazy;

.field private final listeners:Ljava/util/List;

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/Executor;

.field private final persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

.field private final serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method public static synthetic $r8$lambda$OSO9eK_Xa1c8M9IT8c3BJLq2_VU(Lcom/google/firebase/installations/FirebaseInstallations;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_LVWvNUQ4Iq8r5kiH7vh8J1nAu0(Lcom/google/firebase/installations/FirebaseInstallations;Z)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jX0pccJHLZRoBEZDXzgxla0Cc58(Lcom/google/firebase/installations/FirebaseInstallations;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0Ybp6xAOnLAhXE51EMdjIBTAfA(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/local/IidStore;
    .locals 1

    .line 143
    new-instance v0, Lcom/google/firebase/installations/local/IidStore;

    invoke-direct {v0, p0}, Lcom/google/firebase/installations/local/IidStore;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/FirebaseInstallations$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 9

    .line 135
    new-instance v4, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 140
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;-><init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;)V

    new-instance v5, Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-direct {v5, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 142
    invoke-static {}, Lcom/google/firebase/installations/Utils;->getInstance()Lcom/google/firebase/installations/Utils;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/Lazy;

    new-instance p2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {v7, p2}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    new-instance v8, Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-direct {v8}, Lcom/google/firebase/installations/RandomFidGenerator;-><init>()V

    move-object v0, p0

    move-object v3, p1

    move-object v1, p3

    move-object v2, p4

    .line 135
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/FirebaseInstallations;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/components/Lazy;Lcom/google/firebase/installations/RandomFidGenerator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/components/Lazy;Lcom/google/firebase/installations/RandomFidGenerator;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    .line 158
    iput-object p3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 159
    iput-object p4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 160
    iput-object p5, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 161
    iput-object p6, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 162
    iput-object p7, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/components/Lazy;

    .line 163
    iput-object p8, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    .line 164
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 165
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 304
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 306
    new-instance v1, Lcom/google/firebase/installations/GetAuthTokenListener;

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/GetAuthTokenListener;-><init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 307
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private addGetIdListener()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 297
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 298
    new-instance v1, Lcom/google/firebase/installations/GetIdListener;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/GetIdListener;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 299
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 300
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private addStateListeners(Lcom/google/firebase/installations/StateListener;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doNetworkCallIfNecessary(Z)V
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 387
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isUnregistered()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 389
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/Utils;->isAuthTokenExpired(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    .line 390
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    goto :goto_2

    .line 388
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 404
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 409
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 414
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 415
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    return-void

    .line 416
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    return-void

    .line 421
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    return-void

    .line 396
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    return-void
.end method

.method private final doRegistrationOrRefresh(Z)V
    .locals 2

    .line 362
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withClearedAuthToken()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 373
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 568
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    .line 573
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 587
    :cond_0
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw p1

    .line 580
    :cond_1
    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 576
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 578
    invoke-virtual {v0}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v4

    move-object v0, p1

    .line 575
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withAuthToken(Ljava/lang/String;JJ)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getCacheFid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getIidStore()Lcom/google/firebase/installations/local/IidStore;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/local/IidStore;

    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/installations/FirebaseInstallations;
    .locals 1

    .line 195
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 208
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/FirebaseInstallations;

    return-object p0
.end method

.method private getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 3

    .line 620
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 622
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 625
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 633
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 635
    :cond_1
    throw v2

    .line 636
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 5

    .line 474
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 476
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 479
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;

    move-result-object v3

    .line 488
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 490
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withUnregisteredFid(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 489
    invoke-virtual {v4, v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 499
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 501
    :cond_2
    throw v2

    .line 502
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 3

    .line 443
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 445
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 454
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 457
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    .line 454
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 456
    :cond_1
    throw p1

    .line 457
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private preConditionChecks()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    .line 177
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->shouldAttemptMigration()Z

    move-result p1

    if-nez p1, :cond_2

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {p1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 512
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getIidStore()Lcom/google/firebase/installations/local/IidStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/IidStore;->readIid()Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {p1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 10

    .line 526
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getIidStore()Lcom/google/firebase/installations/local/IidStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/IidStore;->readToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 535
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 538
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v0

    .line 541
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 550
    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 552
    :cond_1
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw p1

    .line 544
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 546
    invoke-virtual {v1}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v5

    .line 547
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 548
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v8

    move-object v2, p1

    .line 543
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1
.end method

.method private triggerOnException(Ljava/lang/Exception;)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 335
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 340
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 322
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 327
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateCacheFid(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 344
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 431
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 435
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method getApiKey()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 236
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 239
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getCacheFid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetIdListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method getProjectIdentifier()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
