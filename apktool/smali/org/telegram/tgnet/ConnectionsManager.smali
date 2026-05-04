.class public Lorg/telegram/tgnet/ConnectionsManager;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;,
        Lorg/telegram/tgnet/ConnectionsManager$INativeTlTest;,
        Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;,
        Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;,
        Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;,
        Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;,
        Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field public static final CPU_COUNT:I

.field public static final ConnectionStateConnected:I = 0x3

.field public static final ConnectionStateConnecting:I = 0x1

.field public static final ConnectionStateConnectingToProxy:I = 0x4

.field public static final ConnectionStateUpdating:I = 0x5

.field public static final ConnectionStateWaitingForNetwork:I = 0x2

.field public static final ConnectionTypeDownload:I = 0x2

.field public static final ConnectionTypeDownload2:I = 0x10002

.field public static final ConnectionTypeGeneric:I = 0x1

.field public static final ConnectionTypePush:I = 0x8

.field public static final ConnectionTypeUpload:I = 0x4

.field public static final DEFAULT_DATACENTER_ID:I = 0x7fffffff

.field public static final DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final FileTypeAudio:I = 0x3000000

.field public static final FileTypeFile:I = 0x4000000

.field public static final FileTypePhoto:I = 0x1000000

.field public static final FileTypeVideo:I = 0x2000000

.field private static final Instance:[Lorg/telegram/tgnet/ConnectionsManager;

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final RequestFlagCanCompress:I = 0x4

.field public static final RequestFlagDoNotWaitFloodWait:I = 0x400

.field public static final RequestFlagEnableUnauthorized:I = 0x1

.field public static final RequestFlagFailOnServerErrors:I = 0x2

.field public static final RequestFlagFailOnServerErrorsExceptFloodWait:I = 0x10000

.field public static final RequestFlagForceDownload:I = 0x20

.field public static final RequestFlagInvokeAfter:I = 0x40

.field public static final RequestFlagListenAfterCancel:I = 0x800

.field public static final RequestFlagNeedQuickAck:I = 0x80

.field public static final RequestFlagTryDifferentDc:I = 0x10

.field public static final RequestFlagWithoutLogin:I = 0x8

.field public static final USE_IPV4_IPV6_RANDOM:B = 0x2t

.field public static final USE_IPV4_ONLY:B = 0x0t

.field public static final USE_IPV6_ONLY:B = 0x1t

.field private static currentTask:Landroid/os/AsyncTask;

.field private static dnsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClassGuid:I

.field private static lastDnsRequestTime:J

.field public static lastPremiumFloodWaitShown:J

.field private static resolvingHostnameTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private appPaused:Z

.field private appResumeCount:I

.field private connectionState:I

.field private forceTryIpV6:Z

.field private final hooks:Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;

.field private isUpdating:Z

.field private lastPauseTime:J

.field private lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0ugsk_wgEzlBNBkFOs1HHiU-0gE(Lorg/telegram/tgnet/ConnectionsManager;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$discardConnection$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$23wFAk06e6eTyXwuUbelGCAloC0(II)V
    .locals 3

    .line 849
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v0

    .line 850
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda17;-><init>(IZI)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$6dXVSSiWEpxGzqN5oGtpO-FuuSw(II)V
    .locals 1

    .line 812
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iput p1, v0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    .line 813
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8rHrGzkyrl-iJMokXSq2auMo358(Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 318
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 320
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxliBnbAvOjFm7kFVr7vofAMM1I(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequest$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$BHcEx53gGK4FSthrIIX5DgZqUDA(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 377
    invoke-interface {p0, v0, v0}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 379
    invoke-interface {p1, v0, v0, v1, v2}, Lorg/telegram/tgnet/RequestDelegateTimestamp;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$BmYwn98nbxCNwIiwvtvGPh8Uubc(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;JILjava/lang/String;IJJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p23}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequestInternal$7(Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;JILjava/lang/String;IJJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$L0Vsd-sgkR8O6Rjk2Iy_WcLYwFo(ILorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 791
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6M-3sMK7a08kPvg9-UWzD48uYs(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 318
    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OihWrsvEnv4ayAWBRRQ-yI9s6k4(I)V
    .locals 0

    .line 803
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->updateTimerProc()V

    return-void
.end method

.method public static synthetic $r8$lambda$OlqczWPXbUj5ppKqWQmWMT6frWU(ZII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1550
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/FileLoader;->findUploadOperationByRequestToken(I)Lorg/telegram/messenger/FileUploadOperation;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1552
    iget-boolean p2, p0, Lorg/telegram/messenger/FileUploadOperation;->caughtPremiumFloodWait:Z

    xor-int/2addr p2, v0

    .line 1553
    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->caughtPremiumFloodWait:Z

    goto :goto_0

    .line 1556
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/FileLoader;->findLoadOperationByRequestToken(I)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1558
    iget-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->caughtPremiumFloodWait:Z

    xor-int/2addr p2, v0

    .line 1559
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->caughtPremiumFloodWait:Z

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 1564
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->premiumFloodWaitReceived:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$RpC48Ww5GEdsCBiPZFr2fuL5Nss(Lorg/telegram/tgnet/ConnectionsManager;Ljava/lang/Runnable;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$cancelRequest$9(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNE4pkWmmqUHEBfr1QY7L5OEbGk(IZI)V
    .locals 1

    .line 1544
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v0, p0, :cond_0

    return-void

    .line 1547
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda19;-><init>(ZII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZNCslk0XwqpxQQOF4ak4Yt0MxQ(Lorg/telegram/tgnet/ConnectionsManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$setIsUpdating$21(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvUepM-OOJRgO-FwyJ6FWg9pdfo(Ljava/lang/String;J)V
    .locals 5

    .line 894
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    if-eqz v0, :cond_0

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->ttl:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 896
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 898
    :cond_0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;

    if-nez v0, :cond_1

    .line 900
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;-><init>(Ljava/lang/String;)V

    .line 902
    :try_start_0
    sget-object v1, Lorg/telegram/tgnet/ConnectionsManager;->DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    sget-object v1, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 904
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 905
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 910
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addAddress(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_XzMHjd0kuOj5hc8UG2Msz89mU()V
    .locals 5

    .line 889
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZazgDTlT_aKYwQKOb3TheY_ZpZk(ILorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    .line 929
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cDt96M7BGOJ1gKiCFHOcoGZqaNY(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequestInternal$6(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dIQoTwnKyQyK2n-soItOK2xRnag(Lorg/telegram/tgnet/ConnectionsManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$failNotRunningRequest$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbLNnPmURSyx4gb2uLOjNczBzXY(IZI)V
    .locals 4

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "13. currentTask == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 852
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_7

    if-nez p0, :cond_0

    sget-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 858
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_3

    .line 860
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    .line 861
    const-string/jumbo p0, "start mozilla txt task"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 863
    :cond_2
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;-><init>(I)V

    .line 864
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    aput-object v3, v0, p1

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 865
    const-string p1, "9. currentTask = mozilla"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 866
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    return-void

    :cond_3
    if-ne p0, v1, :cond_5

    .line 868
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_4

    .line 869
    const-string/jumbo p0, "start google txt task"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 871
    :cond_4
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;-><init>(I)V

    .line 872
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    aput-object v3, v0, p1

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 873
    const-string p1, "11. currentTask = dnstxt"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 874
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    return-void

    .line 876
    :cond_5
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_6

    .line 877
    const-string/jumbo p0, "start firebase task"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 879
    :cond_6
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;-><init>(I)V

    .line 880
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    aput-object v3, v0, p1

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 881
    const-string p1, "12. currentTask = firebase"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 882
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    return-void

    .line 853
    :cond_7
    :goto_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_8

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "don\'t start task, current task = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " next task = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " time diff = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " network = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static synthetic $r8$lambda$i1-fJiZv_avJbglRlrm1Bl5MZcc(Lorg/telegram/tgnet/ConnectionsManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$cancelRequestsForGuid$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oE9kgBZkRj7WlTwNUiu-aTudjE8(Ljava/lang/Runnable;)V
    .locals 1

    .line 570
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$tP-VmzeQJ0dzY3m_ik55mB6qZFI(I)V
    .locals 4

    .line 819
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    .line 820
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 822
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ydHbqulMxJwU6m7v-Rgm5L1Y7Ys(I)V
    .locals 0

    .line 807
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdnsCache()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetresolvingHostnameTasks()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    .line 125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lorg/telegram/tgnet/ConnectionsManager;->CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 127
    sput v5, Lorg/telegram/tgnet/ConnectionsManager;->MAXIMUM_POOL_SIZE:I

    .line 129
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v9, Lorg/telegram/tgnet/ConnectionsManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 130
    new-instance v10, Lorg/telegram/tgnet/ConnectionsManager$1;

    invoke-direct {v10}, Lorg/telegram/tgnet/ConnectionsManager$1;-><init>()V

    sput-object v10, Lorg/telegram/tgnet/ConnectionsManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 141
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 143
    sput-object v3, Lorg/telegram/tgnet/ConnectionsManager;->DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    .line 182
    sput v1, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    const/16 v0, 0x10

    .line 184
    new-array v0, v0, [Lorg/telegram/tgnet/ConnectionsManager;

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:[Lorg/telegram/tgnet/ConnectionsManager;

    const-wide/16 v0, 0x0

    .line 1540
    sput-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastPremiumFloodWaitShown:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 199
    const-string v2, "App version unknown"

    const-string v3, "Android unknown"

    const-string v4, "en"

    const-string v5, "SDK "

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 74
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/ConnectionsManager;->hooks:Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    const/4 v6, 0x1

    .line 114
    iput-boolean v6, v0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 117
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 471
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    .line 200
    iget v6, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_getConnectionState(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    .line 206
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    if-eqz v1, :cond_0

    .line 208
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-object v6, v7

    .line 211
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 212
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->isPushConnectionEnabled()Z

    move-result v17

    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getLocaleStringIso639()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 218
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 219
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v11, :cond_1

    .line 220
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pbeta"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 221
    :cond_1
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_2

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " beta"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 224
    :cond_2
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 230
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    move-object v10, v2

    move-object v8, v3

    move-object v6, v4

    .line 232
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v6

    .line 235
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v8

    .line 238
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v2

    goto :goto_4

    :cond_5
    move-object v6, v10

    .line 241
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 242
    const-string v5, "SDK Unknown"

    .line 244
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    .line 245
    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getRegId()Ljava/lang/String;

    move-result-object v11

    .line 246
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCertificateSHA256Fingerprint()Ljava/lang/String;

    move-result-object v12

    .line 248
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    add-int/2addr v2, v8

    div-int/lit16 v13, v2, 0x3e8

    .line 250
    iget v2, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const-string/jumbo v8, "mainconfig"

    if-nez v2, :cond_7

    .line 251
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_5

    .line 253
    :cond_7
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 255
    :goto_5
    const-string v8, "forceTryIpV6"

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    .line 257
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 258
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    :cond_8
    move/from16 v16, v1

    .line 260
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->buildVersion()I

    move-result v1

    move-object v8, v4

    move-object v4, v3

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppId()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getNetworkLogPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    const/16 v2, 0xdf

    invoke-virtual/range {v0 .. v17}, Lorg/telegram/tgnet/ConnectionsManager;->init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZ)V

    return-void
.end method

.method public static generateClassGuid()I
    .locals 2

    .line 1019
    sget v0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    return v0
.end method

.method public static getHostByName(Ljava/lang/String;J)V
    .locals 1

    .line 893
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInitFlags()I
    .locals 1

    .line 829
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 832
    const-string v0, "detected emu"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x400

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    .locals 3

    .line 186
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:[Lorg/telegram/tgnet/ConnectionsManager;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 188
    const-class v2, Lorg/telegram/tgnet/ConnectionsManager;

    monitor-enter v2

    .line 189
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager;-><init>(I)V

    aput-object v1, v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 193
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v1
.end method

.method private getRegId()Ljava/lang/String;
    .locals 3

    .line 264
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 268
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FIREBASE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_GENERATING_SINCE_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$cancelRequest$9(Ljava/lang/Runnable;IZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 569
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->listenCancel(ILjava/lang/Runnable;)V

    .line 573
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequest(IIZ)V

    return-void
.end method

.method private synthetic lambda$cancelRequestsForGuid$10(I)V
    .locals 1

    .line 583
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequestsForGuid(II)V

    return-void
.end method

.method private synthetic lambda$discardConnection$0(II)V
    .locals 1

    .line 155
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_discardConnection(III)V

    return-void
.end method

.method private synthetic lambda$failNotRunningRequest$1(I)V
    .locals 1

    .line 161
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_failNotRunningRequest(II)V

    return-void
.end method

.method private synthetic lambda$sendRequest$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    .locals 0

    .line 358
    invoke-direct/range {p0 .. p10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestInternal(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V

    return-void
.end method

.method private synthetic lambda$sendRequestInternal$6(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V
    .locals 0

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1, p2, p3}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 452
    invoke-interface {p4, p2, p3, p5, p6}, Lorg/telegram/tgnet/RequestDelegateTimestamp;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    goto :goto_0

    .line 453
    :cond_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p1, :cond_2

    .line 454
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->finishJob()V

    .line 455
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 458
    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$sendRequestInternal$7(Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;JILjava/lang/String;IJJI)V
    .locals 14

    move/from16 v0, p16

    move-object/from16 v2, p17

    const-wide/16 v3, 0x0

    cmp-long v5, p14, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 402
    :try_start_0
    invoke-static/range {p14 .. p15}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 403
    sget-object v2, Lorg/telegram/tgnet/TLDataSourceType;->NETWORK:Lorg/telegram/tgnet/TLDataSourceType;

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->setDataSourceType(Lorg/telegram/tgnet/TLDataSourceType;)V

    .line 404
    iput-boolean v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 405
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    .line 406
    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :try_start_1
    invoke-virtual {p1, v0, v5, v6}, Lorg/telegram/tgnet/TLObject;->deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 410
    :try_start_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v1, :cond_0

    .line 413
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->fatal(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 411
    :cond_0
    throw v0

    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 417
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 418
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 419
    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 420
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    const/16 v2, -0x7d0

    if-eq v0, v2, :cond_2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " got error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    move v2, v5

    move-object v0, v7

    move-object v7, v8

    goto :goto_0

    :cond_3
    move v2, v5

    move-object v0, v7

    :goto_0
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_4

    .line 424
    sget-object v5, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 425
    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentPingTime(I)I

    move-result v5

    int-to-long v8, v5

    int-to-long v10, v2

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, p3

    sub-long/2addr v12, v8

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 428
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v4

    invoke-virtual {v4, v10, v11, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onTransfer(JJ)V

    .line 430
    :cond_4
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v7, :cond_6

    iget v2, v7, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_6

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CONNECTION_NOT_INITED"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 431
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup keys for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because of CONNECTION_NOT_INITED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 434
    :cond_5
    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    move-object/from16 p12, p0

    move-object/from16 p13, p1

    move/from16 p20, p2

    move-object/from16 p14, p5

    move-object/from16 p15, p6

    move-object/from16 p16, p7

    move-object/from16 p17, p8

    move/from16 p18, p9

    move/from16 p19, p10

    move/from16 p21, p11

    .line 435
    invoke-virtual/range {p12 .. p21}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    return-void

    :cond_6
    if-eqz v0, :cond_7

    move/from16 v1, p18

    .line 439
    iput v1, v0, Lorg/telegram/tgnet/TLObject;->networkType:I

    .line 441
    :cond_7
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_9

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "java received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " messageId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p21 .. p22}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    move-object v2, v0

    .line 443
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object v1, p1

    move/from16 v8, p12

    move-wide/from16 v4, p21

    move-object v3, v7

    move-wide/from16 v6, p3

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/FileLog;->dumpResponseAndRequest(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;JJI)V

    goto :goto_2

    :cond_9
    move-object v2, v0

    move-object v3, v7

    .line 445
    :goto_2
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->hooks:Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object/from16 v4, p13

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;->executePostRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;

    move-result-object v0

    .line 446
    iget-object v1, v0, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->response:Lorg/telegram/tgnet/TLObject;

    .line 447
    iget-object v0, v0, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 448
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda0;

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, p19

    move-object/from16 p11, v0

    move-object/from16 p10, v1

    move-object/from16 p7, v3

    invoke-direct/range {p7 .. p14}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 462
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$setIsUpdating$21(Z)V
    .locals 2

    .line 1024
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    .line 1028
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1029
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private listen(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;)V
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    invoke-direct {v1, p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;-><init>(Lorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;)V

    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private listenCancel(ILjava/lang/Runnable;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    if-eqz p1, :cond_0

    .line 492
    iput-object p2, p1, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;->onCancelled:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public static native native_applyDatacenterAddress(IILjava/lang/String;I)V
.end method

.method public static native native_applyDnsConfig(IJLjava/lang/String;I)V
.end method

.method public static native native_bindRequestToGuid(III)V
.end method

.method public static native native_cancelRequest(IIZ)V
.end method

.method public static native native_cancelRequestsForGuid(II)V
.end method

.method public static native native_checkProxy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
.end method

.method public static native native_cleanUp(IZ)V
.end method

.method public static native native_connect()Z
.end method

.method public static native native_discardConnection(III)V
.end method

.method public static native native_failNotRunningRequest(II)V
.end method

.method public static native native_getConnectionState(I)I
.end method

.method public static native native_getCurrentAuthKeyId(I)J
.end method

.method public static native native_getCurrentDatacenterId(I)I
.end method

.method public static native native_getCurrentPingTime(I)I
.end method

.method public static native native_getCurrentTime(I)I
.end method

.method public static native native_getCurrentTimeMillis(I)J
.end method

.method public static native native_getTimeDifference(I)I
.end method

.method public static native native_init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZZII)V
.end method

.method public static native native_isGoodPrime([BI)Z
.end method

.method public static native native_isTestBackend(I)I
.end method

.method public static native native_log()V
.end method

.method public static native native_moveDatacenter(II)V
.end method

.method public static native native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public static native native_pauseNetwork(I)V
.end method

.method public static native native_receivedCaptchaResult(I[ILjava/lang/String;)V
.end method

.method public static native native_receivedIntegrityCheckClassic(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native native_resumeNetwork(IZ)V
.end method

.method public static native native_sendRequest(IJIIIZI)V
.end method

.method public static native native_setIpStrategy(IB)V
.end method

.method public static native native_setJava(Z)V
.end method

.method public static native native_setLangCode(ILjava/lang/String;)V
.end method

.method public static native native_setNetworkAvailable(IZIZ)V
.end method

.method public static native native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native native_setPushConnectionEnabled(IZ)V
.end method

.method public static native native_setRegId(ILjava/lang/String;)V
.end method

.method public static native native_setSystemLangCode(ILjava/lang/String;)V
.end method

.method public static native native_setUserId(IJ)V
.end method

.method public static native native_switchBackend(IZ)V
.end method

.method public static native native_test_AuthAuthorization(J)Z
.end method

.method public static native native_updateDcSettings(I)V
.end method

.method public static onBytesReceived(III)V
    .locals 3

    .line 917
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    const/4 v0, 0x6

    int-to-long v1, p0

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 919
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onBytesSent(III)V
    .locals 3

    .line 841
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getStatsController()Lorg/telegram/messenger/StatsController;

    move-result-object p2

    const/4 v0, 0x6

    int-to-long v1, p0

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 843
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onCaptchaCheck(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1577
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/CaptchaController;->request(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onConnectionStateChanged(II)V
    .locals 1

    .line 811
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onIntegrityCheckClassic(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1572
    const-string p2, "PLAYINTEGRITY_FAILED_EXCEPTION"

    invoke-static {p0, p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_receivedIntegrityCheckClassic(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onInternalPushReceived(I)V
    .locals 0

    .line 937
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->startJob()V

    return-void
.end method

.method public static onLogout(I)V
    .locals 1

    .line 818
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPremiumFloodWait(IIZ)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1543
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;-><init>(IZI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onProxyError()V
    .locals 1

    .line 889
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRequestClear(IIZ)V
    .locals 2

    .line 500
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_3

    .line 505
    iget-object p2, v0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;->onCancelled:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 506
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 508
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 514
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public static onRequestComplete(IIJILjava/lang/String;IJJI)V
    .locals 12

    .line 520
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    .line 523
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 525
    iget-object v1, v0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;->onComplete:Lorg/telegram/tgnet/RequestDelegateInternal;

    if-eqz v1, :cond_1

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    .line 526
    invoke-interface/range {v1 .. v11}, Lorg/telegram/tgnet/RequestDelegateInternal;->run(JILjava/lang/String;IJJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onRequestNewServerIpAndPort(II)V
    .locals 2

    .line 848
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda23;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onRequestQuickAck(II)V
    .locals 0

    .line 535
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    if-eqz p0, :cond_1

    .line 539
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;->onQuickAck:Lorg/telegram/tgnet/QuickAckDelegate;

    if-eqz p0, :cond_1

    .line 540
    invoke-interface {p0}, Lorg/telegram/tgnet/QuickAckDelegate;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onRequestWriteToSocket(II)V
    .locals 0

    .line 549
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager;->requestCallbacks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;

    if-eqz p0, :cond_1

    .line 553
    iget-object p0, p0, Lorg/telegram/tgnet/ConnectionsManager$RequestCallbacks;->onWriteToSocket:Lorg/telegram/tgnet/WriteToSocketDelegate;

    if-eqz p0, :cond_1

    .line 554
    invoke-interface {p0}, Lorg/telegram/tgnet/WriteToSocketDelegate;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onSessionCreated(I)V
    .locals 2

    .line 807
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onUnparsedMessageReceived(JIJ)V
    .locals 2

    .line 780
    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p0

    .line 781
    sget-object p1, Lorg/telegram/tgnet/TLDataSourceType;->NETWORK:Lorg/telegram/tgnet/TLDataSourceType;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/AbstractSerializedData;->setDataSourceType(Lorg/telegram/tgnet/TLDataSourceType;)V

    const/4 p1, 0x1

    .line 782
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 783
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    .line 784
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    .line 785
    invoke-static {p0, p3, p4, p2}, Lorg/telegram/messenger/FileLog;->dumpUnparsedMessage(Lorg/telegram/tgnet/TLObject;JI)V

    .line 786
    instance-of p3, p0, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p3, :cond_1

    .line 787
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "java received "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 790
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->finishJob()V

    .line 791
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda4;

    invoke-direct {p3, p2, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda4;-><init>(ILorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 793
    :cond_1
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    .line 794
    const-string/jumbo p0, "java received unknown constructor 0x%x"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 798
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onUpdate(I)V
    .locals 2

    .line 803
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onUpdateConfig(JI)V
    .locals 1

    .line 925
    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p0

    const/4 p1, 0x1

    .line 926
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 927
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_config;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 929
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda18;-><init>(ILorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 932
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendRequestInternal(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v7, p10

    .line 364
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 368
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 370
    iget-object v2, v1, Lorg/telegram/tgnet/ConnectionsManager;->hooks:Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;

    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-interface {v2, v14, v3, v0}, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;->executePreRequestHook(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    if-nez v2, :cond_2

    .line 372
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request cancelled by pre-request hook: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v1

    goto/16 :goto_2

    .line 375
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;

    move-object/from16 v6, p2

    move-object/from16 v3, p3

    invoke-direct {v2, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move-object/from16 v6, p2

    move-object/from16 v3, p3

    .line 386
    new-instance v15, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v0

    invoke-direct {v15, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 387
    invoke-virtual {v2, v15}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 388
    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    .line 391
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_4

    :cond_3
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_5

    .line 392
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    .line 396
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p9

    move v13, v7

    move-object v7, v3

    move/from16 v3, p8

    invoke-direct/range {v0 .. v14}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move v7, v13

    move-object/from16 v1, p4

    move-object/from16 v9, p5

    :try_start_1
    invoke-direct {v8, v7, v0, v1, v9}, Lorg/telegram/tgnet/ConnectionsManager;->listen(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;)V

    .line 465
    iget v0, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iget-wide v1, v15, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->native_sendRequest(IJIIIZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 467
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLangCode(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 668
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 670
    invoke-static {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setLangCode(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 941
    const-string v0, ""

    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p3, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    if-nez p4, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    if-nez p5, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    const/4 p1, 0x0

    move v1, p1

    :goto_4
    const/16 p1, 0x10

    if-ge v1, p1, :cond_6

    if-eqz p0, :cond_4

    .line 955
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    move v3, p2

    .line 956
    invoke-static/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 958
    :cond_4
    const-string v11, ""

    const-string v12, ""

    const-string v8, ""

    const/16 v9, 0x438

    const-string v10, ""

    move v7, v1

    invoke-static/range {v7 .. v12}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 962
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public static setRegId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 676
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    move-object p0, p2

    .line 679
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 681
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "__"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FIREBASE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_GENERATING_SINCE_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    :cond_1
    :goto_0
    const/16 p1, 0x10

    if-ge p2, p1, :cond_2

    .line 684
    invoke-static {p2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setRegId(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setSystemLangCode(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 689
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 691
    invoke-static {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setSystemLangCode(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static testNativeTlScheme(Lorg/telegram/tgnet/NativeByteBuffer;Lorg/telegram/tgnet/ConnectionsManager$INativeTlTest;)Z
    .locals 2

    .line 1009
    iget-wide v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager$INativeTlTest;->test(J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public applyDatacenterAddress(ILjava/lang/String;I)V
    .locals 1

    .line 595
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDatacenterAddress(IILjava/lang/String;I)V

    return-void
.end method

.method public bindRequestToGuid(II)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 591
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_bindRequestToGuid(III)V

    return-void
.end method

.method public cancelRequest(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public cancelRequest(IZLjava/lang/Runnable;)V
    .locals 2

    .line 567
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Ljava/lang/Runnable;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelRequestsForGuid(I)V
    .locals 2

    .line 582
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/ConnectionsManager;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkConnection()V
    .locals 4

    .line 610
    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getIpStrategy()B

    move-result v0

    .line 611
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selected ip strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 614
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setIpStrategy(IB)V

    .line 615
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->native_setNetworkAvailable(IZIZ)V

    return-void
.end method

.method public checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
    .locals 8

    .line 722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 725
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-nez p3, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, p3

    :goto_1
    if-nez p4, :cond_3

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, p4

    :goto_2
    if-nez p5, :cond_4

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, p5

    .line 737
    :goto_3
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move v3, p2

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->native_checkProxy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    move-result-wide p1

    return-wide p1
.end method

.method public cleanup(Z)V
    .locals 1

    .line 578
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cleanUp(IZ)V

    return-void
.end method

.method public discardConnection(II)V
    .locals 2

    .line 154
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/tgnet/ConnectionsManager;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public failNotRunningRequest(I)V
    .locals 2

    .line 160
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/ConnectionsManager;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getConnectionState()I
    .locals 2

    .line 599
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    return v0
.end method

.method public getCurrentAuthKeyId()J
    .locals 2

    .line 297
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentAuthKeyId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDatacenterId()I
    .locals 1

    .line 293
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentDatacenterId(I)I

    move-result v0

    return v0
.end method

.method public getCurrentTime()I
    .locals 1

    .line 289
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTime(I)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .line 285
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTimeMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getIpStrategy()B
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1036
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1039
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 1040
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1041
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1042
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1045
    :cond_1
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valid interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1048
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    move v3, v1

    .line 1049
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1050
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1051
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 1052
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_3

    .line 1053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1055
    :cond_3
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 1058
    :cond_4
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_5

    .line 1059
    const-string v4, "address is good"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1064
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1069
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1073
    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_d

    .line 1074
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 1075
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    .line 1078
    :cond_8
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    move v7, v1

    .line 1079
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 1080
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InterfaceAddress;

    .line 1081
    invoke-virtual {v8}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 1082
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v8}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_7

    .line 1085
    :cond_9
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_a

    move v2, v6

    goto :goto_7

    .line 1087
    :cond_a
    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_c

    .line 1088
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1089
    const-string v9, "192.0.0."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    move v4, v6

    goto :goto_7

    :cond_b
    move v3, v6

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_10

    .line 1098
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_e

    return v6

    :cond_e
    if-eqz v3, :cond_f

    const/4 v0, 0x2

    return v0

    :cond_f
    if-nez v4, :cond_10

    return v6

    .line 1109
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    return v1
.end method

.method public getPauseTime()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    return-wide v0
.end method

.method public getTimeDifference()I
    .locals 1

    .line 301
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getTimeDifference(I)I

    move-result v0

    return v0
.end method

.method public init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZ)V
    .locals 28

    move-object/from16 v0, p0

    .line 623
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    const-string/jumbo v2, "proxy_ip"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 625
    const-string/jumbo v2, "proxy_user"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 626
    const-string/jumbo v2, "proxy_pass"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 627
    const-string/jumbo v2, "proxy_secret"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 628
    const-string/jumbo v2, "proxy_port"

    const/16 v5, 0x438

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 630
    const-string/jumbo v2, "proxy_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    iget v5, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static/range {v5 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 636
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    .line 637
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 639
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 641
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    :cond_1
    move-object v2, v4

    goto :goto_0

    .line 645
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    move-object/from16 v18, v4

    goto :goto_1

    :cond_4
    move-object/from16 v18, v2

    .line 655
    :goto_1
    :try_start_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-object v1, v4

    :goto_2
    if-nez v1, :cond_5

    move-object/from16 v19, v4

    goto :goto_3

    :cond_5
    move-object/from16 v19, v1

    .line 663
    :goto_3
    iget v5, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v25

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v26

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v27

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v20, p13

    move-wide/from16 v21, p14

    move/from16 v23, p16

    move/from16 v24, p17

    invoke-static/range {v5 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->native_init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZZII)V

    .line 664
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    return-void
.end method

.method public isPushConnectionEnabled()Z
    .locals 3

    .line 276
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "pushConnection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 278
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 280
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backgroundConnection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTestBackend()Z
    .locals 1

    .line 702
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resumeNetworkMaybe()V
    .locals 2

    .line 706
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(IZ)V

    return-void
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 330
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I
    .locals 10

    const v7, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v8, p4

    .line 334
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    .line 342
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .locals 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 346
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .locals 13

    .line 356
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 357
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda21;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return v12
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move v8, p4

    move v7, p5

    .line 338
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequestSync(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .locals 11

    .line 350
    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 351
    invoke-direct/range {v0 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestInternal(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V

    return v10
.end method

.method public sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/telegram/tgnet/TLObject;",
            ">(",
            "Lorg/telegram/tgnet/TLMethod;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "TT;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            ">;)I"
        }
    .end annotation

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 308
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;II)I

    move-result p1

    return p1
.end method

.method public sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/telegram/tgnet/TLObject;",
            ">(",
            "Lorg/telegram/tgnet/TLMethod;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "TT;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            ">;I)I"
        }
    .end annotation

    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 311
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;II)I

    move-result p1

    return p1
.end method

.method public sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/telegram/tgnet/TLObject;",
            ">(",
            "Lorg/telegram/tgnet/TLMethod;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "TT;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            ">;II)I"
        }
    .end annotation

    .line 314
    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p4

    move v6, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Lorg/telegram/messenger/Utilities$Callback2;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/telegram/tgnet/TLObject;",
            ">(",
            "Lorg/telegram/tgnet/TLMethod;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "TT;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    move-result p1

    return p1
.end method

.method public setAppPaused(ZZ)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 742
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 743
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 744
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app paused = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 747
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    goto :goto_0

    .line 749
    :cond_1
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 751
    :goto_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app resume count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 754
    :cond_2
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-gez p1, :cond_3

    .line 755
    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 758
    :cond_3
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    const-wide/16 v1, 0x0

    if-nez p1, :cond_5

    .line 759
    iget-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_4

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 762
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_pauseNetwork(I)V

    return-void

    .line 764
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    if-eqz p1, :cond_6

    return-void

    .line 767
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_7

    .line 768
    const-string/jumbo p1, "reset app pause time"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 770
    :cond_7
    iget-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, p1, v3

    if-lez p1, :cond_8

    .line 771
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->checkContacts()V

    .line 773
    :cond_8
    iput-wide v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 774
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(IZ)V

    return-void
.end method

.method public setDefaultDatacenterId(I)V
    .locals 1

    .line 714
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_moveDatacenter(II)V

    return-void
.end method

.method public setForceTryIpV6(Z)V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    if-eq v0, p1, :cond_0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    .line 149
    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    :cond_0
    return-void
.end method

.method public setIsUpdating(Z)V
    .locals 1

    .line 1023
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushConnectionEnabled(Z)V
    .locals 1

    .line 619
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setPushConnectionEnabled(IZ)V

    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .line 606
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUserId(IJ)V

    return-void
.end method

.method public switchBackend(Z)V
    .locals 2

    .line 696
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 697
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "language_showed2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 698
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_switchBackend(IZ)V

    return-void
.end method

.method public updateDcSettings()V
    .locals 1

    .line 710
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_updateDcSettings(I)V

    return-void
.end method
