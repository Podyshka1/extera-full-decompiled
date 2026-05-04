.class public Lorg/telegram/messenger/ProxyRotationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field public static final DEFAULT_TIMEOUT_INDEX:I = 0x1

.field private static final INSTANCE:Lorg/telegram/messenger/ProxyRotationController;

.field public static final ROTATION_TIMEOUTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkProxyAndSwitchRunnable:Ljava/lang/Runnable;

.field private isCurrentlyChecking:Z


# direct methods
.method public static synthetic $r8$lambda$1qJ21Y6U4pSijLu67isAkLum5lk(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    iget-wide p0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FJmGRCN67bPTU1pXgzMUZvFLhhE(Lorg/telegram/messenger/ProxyRotationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyRotationController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eWTdX8ujv-si5gV2KcZj1iGeQgI(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 1

    .line 34
    new-instance v0, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4AyqLfFAqbbC1e8rcgYYgTc97s(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 3

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/16 p1, 0x0

    .line 39
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    goto :goto_0

    .line 41
    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 42
    iput-boolean v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    .line 44
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lorg/telegram/messenger/ProxyRotationController;

    invoke-direct {v0}, Lorg/telegram/messenger/ProxyRotationController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ProxyRotationController;->INSTANCE:Lorg/telegram/messenger/ProxyRotationController;

    const/4 v0, 0x5

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ProxyRotationController;->ROTATION_TIMEOUTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ProxyRotationController;)V

    iput-object v0, p0, Lorg/telegram/messenger/ProxyRotationController;->checkProxyAndSwitchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static init()V
    .locals 1

    .line 55
    sget-object v0, Lorg/telegram/messenger/ProxyRotationController;->INSTANCE:Lorg/telegram/messenger/ProxyRotationController;

    invoke-direct {v0}, Lorg/telegram/messenger/ProxyRotationController;->initInternal()V

    return-void
.end method

.method private initInternal()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 96
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 99
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 14

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lorg/telegram/messenger/ProxyRotationController;->isCurrentlyChecking:Z

    .line 25
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 27
    :goto_0
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 28
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 29
    iget-boolean v6, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    iput-boolean v0, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    .line 34
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v9, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v10, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v11, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v12, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    new-instance v13, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda2;

    invoke-direct {v13, v5}, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->proxyCheckPingId:J

    move v4, v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 49
    iput-boolean v2, p0, Lorg/telegram/messenger/ProxyRotationController;->isCurrentlyChecking:Z

    .line 50
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyRotationController;->switchToAvailable()V

    :cond_3
    return-void
.end method

.method private switchToAvailable()V
    .locals 7

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/telegram/messenger/ProxyRotationController;->isCurrentlyChecking:Z

    .line 62
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 66
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    new-instance v2, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/messenger/ProxyRotationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 69
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eq v4, v5, :cond_1

    iget-boolean v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v5, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "proxy_ip"

    iget-object v3, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string/jumbo v2, "proxy_pass"

    iget-object v3, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string/jumbo v2, "proxy_user"

    iget-object v3, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string/jumbo v2, "proxy_port"

    iget v3, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string/jumbo v2, "proxy_secret"

    iget-object v3, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string/jumbo v2, "proxy_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v2, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 82
    const-string/jumbo v2, "proxy_enabled_calls"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 87
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v3, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v4, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 104
    sget p3, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    const/4 v0, 0x1

    if-ne p1, p3, :cond_1

    .line 105
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isProxyEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    if-eqz p1, :cond_6

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_6

    iget-boolean p1, p0, Lorg/telegram/messenger/ProxyRotationController;->isCurrentlyChecking:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyRotationController;->switchToAvailable()V

    return-void

    .line 110
    :cond_1
    sget p3, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    if-ne p1, p3, :cond_2

    .line 111
    iget-object p1, p0, Lorg/telegram/messenger/ProxyRotationController;->checkProxyAndSwitchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 112
    :cond_2
    sget p3, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p3, :cond_6

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-ne p2, p1, :cond_6

    .line 113
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isProxyEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    if-eqz p1, :cond_6

    :cond_3
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_4

    goto :goto_0

    .line 117
    :cond_4
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 120
    iget-boolean p1, p0, Lorg/telegram/messenger/ProxyRotationController;->isCurrentlyChecking:Z

    if-nez p1, :cond_6

    .line 121
    iget-object p1, p0, Lorg/telegram/messenger/ProxyRotationController;->checkProxyAndSwitchRunnable:Ljava/lang/Runnable;

    sget-object p2, Lorg/telegram/messenger/ProxyRotationController;->ROTATION_TIMEOUTS:Ljava/util/List;

    sget p3, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 124
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/ProxyRotationController;->checkProxyAndSwitchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method
