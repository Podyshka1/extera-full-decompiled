.class public Lorg/telegram/messenger/ProxyPingController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lorg/telegram/messenger/ProxyPingController;


# instance fields
.field private final pingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$A6CxG2H98x1ngjbYhmAxtwts59g(Lorg/telegram/messenger/ProxyPingController;JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ProxyPingController;->lambda$new$0(JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIFgLsVuUNEzrMWzLr3AjxHR0TE(Lorg/telegram/messenger/ProxyPingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyPingController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_1yTmqZEY_ColhySo4aZk31F_qU(Lorg/telegram/messenger/ProxyPingController;Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ProxyPingController;->lambda$new$1(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lorg/telegram/messenger/ProxyPingController;

    invoke-direct {v0}, Lorg/telegram/messenger/ProxyPingController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ProxyPingController;->INSTANCE:Lorg/telegram/messenger/ProxyPingController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ProxyPingController;)V

    iput-object v0, p0, Lorg/telegram/messenger/ProxyPingController;->pingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static init()V
    .locals 1

    .line 35
    sget-object v0, Lorg/telegram/messenger/ProxyPingController;->INSTANCE:Lorg/telegram/messenger/ProxyPingController;

    invoke-direct {v0}, Lorg/telegram/messenger/ProxyPingController;->scheduleNextPing()V

    return-void
.end method

.method private synthetic lambda$new$0(JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 14
    iput-wide p1, p3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    .line 16
    iput-boolean v2, p3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v1, p3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    .line 20
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxyPingUpdated:I

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {p3, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 21
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyPingController;->scheduleNextPing()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 1

    .line 12
    new-instance v0, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ProxyPingController;JLorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 9

    .line 9
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v0, :cond_0

    .line 11
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v4, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v5, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    new-instance v8, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v0}, Lorg/telegram/messenger/ProxyPingController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ProxyPingController;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ProxyPingController;->scheduleNextPing()V

    return-void
.end method

.method private scheduleNextPing()V
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/ProxyPingController;->pingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/ProxyPingController;->pingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
