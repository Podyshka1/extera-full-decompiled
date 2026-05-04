.class public Lorg/telegram/messenger/ApplicationLoader;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final PREF_PROXY_AUTO_DISABLED_BY_VPN:Ljava/lang/String; = "proxy_auto_disabled_by_vpn"

.field private static final PREF_PROXY_AUTO_RESTORE_CALLS:Ljava/lang/String; = "proxy_auto_restore_calls"

.field public static volatile applicationContext:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile applicationHandler:Landroid/os/Handler; = null

.field private static volatile applicationInited:Z = false

.field public static applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader; = null

.field public static canDrawOverlays:Z = false

.field private static connectivityManager:Landroid/net/ConnectivityManager; = null

.field public static volatile currentNetworkInfo:Landroid/net/NetworkInfo; = null

.field public static volatile externalInterfacePaused:Z = true

.field private static firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics; = null

.field private static firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics; = null

.field public static volatile isScreenOn:Z = false

.field private static lastKnownNetworkType:I = -0x1

.field private static lastNetworkCheck:J = 0x0L

.field private static lastNetworkCheckTypeTime:J = 0x0L

.field private static locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider; = null

.field public static volatile mainInterfacePaused:Z = true

.field public static volatile mainInterfacePausedStageQueue:Z = true

.field public static volatile mainInterfacePausedStageQueueTime:J = 0x0L

.field public static volatile mainInterfaceStopped:Z = true

.field private static mapsProvider:Lorg/telegram/messenger/IMapsProvider;

.field private static volatile networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

.field public static startTime:J


# direct methods
.method public static synthetic $r8$lambda$Dg08OQoz1Ha7gWZHgwTNhzwKwfw()V
    .locals 2

    .line 471
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->onRequestPushToken()V

    return-void

    .line 474
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->getLogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " APK found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 477
    :cond_1
    const-string v0, "__NO_GOOGLE_PLAY_SERVICES__"

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 478
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->getPushType()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 364
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :try_start_0
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz v1, :cond_2

    .line 368
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 369
    const-string v2, "had_crash"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 378
    const-string v2, "crashed_plugin_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin crash detected for plugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 383
    :cond_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 384
    const-string/jumbo v2, "label"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 387
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 389
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 391
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$wnB-rVmMYJiauKVRZVM_KRHynzI(Lorg/telegram/messenger/ApplicationLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;->lambda$initFirebase$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetconnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputlastKnownNetworkType(I)V
    .locals 0

    .line 0
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smensureCurrentNetworkGet(Z)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->applyBlacklist()V

    const-wide/16 v0, -0x1

    .line 493
    sput-wide v0, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheck:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkPlayServices()Z
    .locals 2

    const/4 v0, 0x1

    .line 485
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    .line 488
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static checkProxyForVpnState()V
    .locals 22

    .line 538
    const-string/jumbo v0, "proxy_auto_disabled_by_vpn"

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 542
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isVpnEnabled()Z

    move-result v1

    .line 543
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 544
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 546
    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "proxy_secret"

    const-string/jumbo v7, "proxy_pass"

    const-string/jumbo v8, "proxy_user"

    const/16 v9, 0x438

    const-string/jumbo v10, "proxy_port"

    const-string/jumbo v11, "proxy_enabled_calls"

    const-string/jumbo v13, "proxy_ip"

    const-string/jumbo v14, "proxy_enabled"

    const-string/jumbo v15, "proxy_auto_restore_calls"

    const-string v12, ""

    if-nez v5, :cond_3

    if-eqz v4, :cond_8

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 550
    :cond_1
    :try_start_1
    invoke-interface {v2, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 551
    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 552
    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 553
    invoke-interface {v2, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 554
    invoke-interface {v2, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 555
    invoke-interface {v2, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 557
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 558
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 560
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 561
    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 564
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 566
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v16, 0x1

    .line 567
    invoke-static/range {v16 .. v21}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v1, :cond_6

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 577
    :cond_4
    invoke-interface {v2, v14, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 578
    invoke-interface {v2, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_8

    .line 579
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 582
    :cond_5
    invoke-interface {v2, v11, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 583
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v4, 0x1

    .line 584
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 585
    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    invoke-interface {v0, v14, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void

    :cond_6
    if-eqz v4, :cond_8

    .line 591
    invoke-interface {v2, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 593
    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-interface {v2, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-interface {v2, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 596
    invoke-interface {v2, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 598
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 599
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 600
    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 602
    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 603
    invoke-interface {v0, v11, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 607
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v7, v4

    const/4 v4, 0x1

    move v6, v1

    .line 608
    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 613
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static ensureCurrentNetworkGet()V
    .locals 6

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    sget-wide v2, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheck:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 497
    sput-wide v0, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheck:J

    return-void
.end method

.method private static ensureCurrentNetworkGet(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 501
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez p0, :cond_2

    .line 503
    :cond_0
    :try_start_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    .line 504
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 506
    :cond_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    .line 507
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_2

    .line 508
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p0, :cond_2

    .line 509
    new-instance p0, Lorg/telegram/messenger/ApplicationLoader$3;

    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader$3;-><init>()V

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 528
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "com.exteragram.messenger"

    return-object v0
.end method

.method public static getAutodownloadNetworkType()I
    .locals 7

    const/4 v0, 0x0

    .line 697
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 698
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    return v0

    .line 701
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 713
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    return v0

    :catch_0
    move-exception v1

    goto :goto_2

    .line 702
    :cond_2
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_4

    sget v1, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheckTypeTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 703
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    return v0

    .line 705
    :cond_4
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 706
    sput v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    goto :goto_1

    .line 708
    :cond_5
    sput v2, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    .line 710
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheckTypeTime:J

    .line 711
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 717
    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method public static getCurrentNetworkType()I
    .locals 1

    .line 723
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectedOrConnectingToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 725
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getFilesDirFixed()Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 181
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.exteragram.messenger/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFilesDirFixed(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 199
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 205
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 462
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static getFirebaseCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 1

    .line 466
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    return-object v0
.end method

.method public static getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;
    .locals 2

    .line 111
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    .line 113
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->init(Landroid/content/Context;)V

    .line 115
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    return-object v0
.end method

.method public static getMapsProvider()Lorg/telegram/messenger/IMapsProvider;
    .locals 1

    .line 123
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    .line 126
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    return-object v0
.end method

.method public static getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;
    .locals 1

    .line 153
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreatePushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    .line 156
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    return-object v0
.end method

.method private initFirebase()V
    .locals 1

    .line 453
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ApplicationLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initPushServices()V
    .locals 3

    .line 470
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda3;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static isAndroidTestEnvironment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isConnectedOrConnectingToWiFi()Z
    .locals 4

    const/4 v0, 0x0

    .line 651
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 652
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 653
    :cond_0
    :goto_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 654
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_2

    :cond_1
    return v2

    .line 659
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public static isConnectedToWiFi()Z
    .locals 4

    const/4 v0, 0x0

    .line 666
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 667
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_1

    return v2

    .line 671
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static isConnectionSlow()Z
    .locals 4

    const/4 v0, 0x0

    .line 678
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 679
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 680
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static isNetworkOnline()Z
    .locals 2

    .line 784
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnlineRealtime()Z

    move-result v0

    .line 785
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_0

    .line 786
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnlineFast()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 788
    const-string/jumbo v1, "network online mismatch"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isNetworkOnlineFast()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 734
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 735
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_0

    return v1

    .line 738
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 743
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 746
    :cond_2
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 747
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1

    .line 752
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isNetworkOnlineRealtime()Z
    .locals 4

    const/4 v0, 0x1

    .line 760
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 761
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    .line 766
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 768
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    .line 771
    :cond_2
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 772
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    return v0

    :cond_3
    return v2

    .line 777
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static isRoaming()Z
    .locals 2

    const/4 v0, 0x0

    .line 641
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 642
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return v0

    .line 644
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static isVpnEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 619
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 620
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 622
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    return v0

    .line 625
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 627
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    .line 628
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 632
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 633
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3

    return v2

    :catchall_0
    :cond_3
    return v0
.end method

.method private synthetic lambda$initFirebase$1()V
    .locals 2

    .line 454
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 455
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 456
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useGoogleAnalytics:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 457
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->firebaseCrashlytics:Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useGoogleCrashlytics:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    return-void
.end method

.method public static postInitApplication()V
    .locals 5

    .line 211
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    if-nez v0, :cond_7

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x1

    .line 214
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    .line 215
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 218
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    :goto_0
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 225
    new-instance v1, Lorg/telegram/messenger/ApplicationLoader$1;

    invoke-direct {v1}, Lorg/telegram/messenger/ApplicationLoader$1;-><init>()V

    .line 242
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    :goto_1
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    new-instance v2, Lorg/telegram/messenger/ScreenReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ScreenReceiver;-><init>()V

    .line 252
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    :goto_2
    :try_start_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 259
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 260
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    :cond_1
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 268
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/SharedPrefsHelper;->init(Landroid/content/Context;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 270
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    .line 271
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    if-nez v2, :cond_2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__FIREBASE_GENERATING_SINCE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    goto :goto_5

    .line 275
    :cond_2
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    .line 277
    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 279
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 280
    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 283
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    .line 285
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    check-cast v0, Lorg/telegram/messenger/ApplicationLoader;

    .line 286
    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader;->initPushServices()V

    .line 287
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 288
    const-string v0, "app initied"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 291
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    :goto_6
    if-ge v1, v3, :cond_6

    .line 293
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 294
    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 296
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->startConnection()V

    :cond_7
    :goto_7
    return-void
.end method

.method public static startPushService()V
    .locals 4

    .line 418
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    const-string/jumbo v1, "pushService"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 421
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 423
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "keepAliveService"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 425
    :goto_0
    const-class v1, Lorg/telegram/messenger/NotificationsService;

    if-eqz v0, :cond_1

    .line 427
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 432
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static updateMapsProvider()V
    .locals 2

    .line 130
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    .line 131
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    .line 132
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    return-void
.end method

.method public allowToUseYandexMaps()Z
    .locals 3

    .line 140
    invoke-static {}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    return v1

    .line 146
    :cond_1
    const-string/jumbo v0, "yandex_maps_only_ru"

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getBooleanConfigValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 147
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isRussianUser()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isFragmentUser()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public cancelDownloadingUpdate()V
    .locals 0

    return-void
.end method

.method public checkApkInstallPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 796
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkRequestPermissionResult(I[Ljava/lang/String;[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkUpdate(ZLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public consumePush(ILorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public downloadUpdate()V
    .locals 0

    return-void
.end method

.method public getDownloadedUpdateFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadingUpdateProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpdate()Lorg/telegram/messenger/BetaUpdate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isAndroidTestEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isBeta()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCustomUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDownloadingUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isStandalone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 438
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->onDeviceConfigurationChange(Landroid/content/res/Configuration;)V

    .line 441
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 442
    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->checkScreenCapturerSize()V

    .line 443
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->resetTabletFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onCreate()V
    .locals 11

    .line 305
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    .line 307
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :catchall_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->applyArtOpts()V

    .line 313
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 315
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app start time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 318
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 320
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, " "

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 327
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "universal "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 323
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store bundled "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "v%s (%d[%d]) %s"

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v9, v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v1

    aput-object v9, v10, v4

    aput-object v0, v10, v3

    const/4 v0, 0x3

    aput-object v2, v10, v0

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 332
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 334
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device = manufacturer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", product="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 336
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 340
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcom/exteragram/messenger/plugins/utils/NativeCrashHandler;->getCrashFlagPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/utils/NativeCrashHandler;->init(Ljava/lang/String;)V

    .line 343
    :try_start_3
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setJava(Z)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$2;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/ApplicationLoader$2;-><init>(Lorg/telegram/messenger/ApplicationLoader;Landroid/app/Application;)V

    .line 357
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load libs time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 361
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-eqz v0, :cond_5

    .line 362
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 363
    new-instance v1, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 396
    :cond_5
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    .line 398
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->initCached()V

    .line 399
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 401
    invoke-static {}, Lorg/telegram/ui/LauncherIconController;->tryFixLauncherIconIfNeeded()V

    .line 402
    invoke-static {}, Lorg/telegram/messenger/ProxyRotationController;->init()V

    .line 403
    invoke-static {}, Lorg/telegram/messenger/ProxyPingController;->init()V

    .line 405
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    check-cast v0, Lorg/telegram/messenger/ApplicationLoader;

    .line 406
    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader;->initFirebase()V

    return-void

    .line 345
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load native libraries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lookup folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->getAbiFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->allowToUseYandexMaps()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/GoogleLocationProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/GoogleLocationProvider;-><init>()V

    return-object v0
.end method

.method protected onCreateMapsProvider()Lorg/telegram/messenger/IMapsProvider;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->allowToUseYandexMaps()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/GoogleMapsProvider;-><init>()V

    return-object v0
.end method

.method protected onCreatePushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;
    .locals 1

    .line 160
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    return-object v0
.end method

.method public onPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSuggestionClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSuggestionFill(Ljava/lang/String;[Ljava/lang/CharSequence;[Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTerminate()V
    .locals 1

    .line 411
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->terminate()V

    .line 414
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 803
    invoke-static {p1, p2}, Lcom/exteragram/messenger/updater/UpdaterUtils;->installUpdate(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openSettings(I)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseTLUpdate(I)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public processUpdate(ILorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    return-void
.end method

.method public showCustomUpdateAppPopup(Landroid/content/Context;Lorg/telegram/messenger/BetaUpdate;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showUpdateAppPopup(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)Z
    .locals 1

    .line 809
    :try_start_0
    new-instance v0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;-><init>(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 811
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public takeUpdateLayout(Landroid/app/Activity;Landroid/view/ViewGroup;)Lorg/telegram/ui/IUpdateLayout;
    .locals 1

    .line 821
    new-instance v0, Lcom/exteragram/messenger/updater/UpdateLayout;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/updater/UpdateLayout;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-object v0
.end method
