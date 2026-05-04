.class Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirebaseTask"
.end annotation


# instance fields
.field private currentAccount:I

.field private firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public static synthetic $r8$lambda$OBfEWFIPlYa_SQ6n3vvtTsZf12Q(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->lambda$doInBackground$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QSnR_ya9ru60LA5Jn4hpA0BEh60(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->lambda$doInBackground$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0mjYgO6Qld7AiIaT_NdFp2s6mQ(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->lambda$doInBackground$0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sSS4s8U8bhk1R6V4Lwh8dSJmIyk(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->lambda$doInBackground$2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1462
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1463
    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$doInBackground$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 5

    .line 1482
    const-string p1, "6. currentTask = null"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1483
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V

    .line 1484
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-string v1, "ipconfigv3"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1486
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1488
    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1489
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 1490
    iget-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getFetchTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p1, v1

    .line 1491
    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    iget-wide v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDnsConfig(IJLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1493
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 1496
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1497
    const-string v0, "failed to get firebase result"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1498
    const-string v0, "start dns txt task"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1500
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;-><init>(I)V

    const/4 v1, 0x3

    .line 1501
    new-array v1, v1, [Ljava/lang/Void;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1502
    const-string p1, "7. currentTask = GoogleDnsLoadTask"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1503
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private synthetic lambda$doInBackground$1(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1481
    iget-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 1507
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 1508
    const-string p1, "failed to get firebase result 2"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1509
    const-string p1, "start dns txt task"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1511
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    invoke-direct {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;-><init>(I)V

    const/4 v0, 0x3

    .line 1512
    new-array v0, v0, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1513
    const-string v0, "7. currentTask = GoogleDnsLoadTask"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1514
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private synthetic lambda$doInBackground$2(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1478
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    .line 1479
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$doInBackground$3()V
    .locals 4

    .line 1520
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1521
    const-string v0, "failed to get firebase result"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1522
    const-string v0, "start dns txt task"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1524
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;-><init>(I)V

    const/4 v1, 0x3

    .line 1525
    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1526
    const-string v1, "8. currentTask = GoogleDnsLoadTask"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1527
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1456
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 2

    .line 1468
    :try_start_0
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 1471
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 1472
    const-string v0, "ipconfigv3"

    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1473
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current firebase value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1477
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->firebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    .line 1469
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "test backend"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    :goto_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1529
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1456
    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;->onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0

    .line 0
    return-void
.end method
