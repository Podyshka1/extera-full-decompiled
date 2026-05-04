.class public Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;
    }
.end annotation


# instance fields
.field private final controller:Lcom/exteragram/messenger/plugins/PluginsController;

.field private final executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastReportedFrozenPluginId:Ljava/lang/String;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final watchdogRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$I8Zz55RrAflUj6kCoVEI9_r9TmM(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    .line 159
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwM6eYYwUFfaxIWervWPVoGukcg(Lcom/exteragram/messenger/plugins/Plugin;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 181
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->forceDisablePlugin(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 183
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->watchdog:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->forceDeletePlugin(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontroller(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Lcom/exteragram/messenger/plugins/PluginsController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexecutingPlugins(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/PluginsController;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;-><init>(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->watchdogRunnable:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    return-void
.end method

.method private disablePluginPref(Ljava/lang/String;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x5313219b1c0974dbL    # -2.767954666074632E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private restartApp(Landroid/app/Activity;)V
    .locals 3

    .line 152
    new-instance v0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static showNotRespondingAlert(Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 8

    .line 164
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 167
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->PluginIsNotRespondingAlert:I

    .line 168
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->WaitMore:I

    .line 170
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Disable:I

    .line 171
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    .line 172
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v2, v7, v6

    aput-object v3, v7, v4

    const/4 v2, 0x2

    aput-object v5, v7, v2

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_recent:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    filled-new-array {v2, v3, v5}, [I

    move-result-object v2

    new-instance v3, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/Plugin;Landroid/app/Activity;)V

    .line 169
    invoke-virtual {v0, v7, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    return-void
.end method


# virtual methods
.method public forceDeletePlugin(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5

    .line 141
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->disablePluginPref(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/plugins/PluginsController;->clearPluginSettingsPreferences(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->pluginsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x531321971c0974dbL    # -2.7679605181700753E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 144
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->restartApp(Landroid/app/Activity;)V

    return-void
.end method

.method public forceDisablePlugin(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->disablePluginPref(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->restartApp(Landroid/app/Activity;)V

    return-void
.end method

.method public onPluginExecutionFinished(Ljava/lang/String;)V
    .locals 4

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    if-eqz v2, :cond_1

    .line 121
    invoke-static {v2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->-$$Nest$fgetpluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->controller:Lcom/exteragram/messenger/plugins/PluginsController;

    iget-object v0, v0, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/plugins/Plugin;->setNotResponding(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    .line 130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPluginExecutionStarted(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;-><init>(Ljava/lang/String;JLcom/exteragram/messenger/plugins/utils/PluginsWatchdog-IA;)V

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 101
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->watchdogRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 107
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->lastReportedFrozenPluginId:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->executingPlugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
