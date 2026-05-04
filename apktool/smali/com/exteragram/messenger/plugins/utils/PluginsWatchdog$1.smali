.class Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 53
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetexecutingPlugins(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v6, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;

    .line 56
    invoke-static {v7}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->-$$Nest$fgetstartTime(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1388

    cmp-long v10, v8, v10

    if-lez v10, :cond_0

    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    .line 60
    invoke-static {v7}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;->-$$Nest$fgetpluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$ExecutionInfo;)Ljava/lang/String;

    move-result-object v6

    move-wide v4, v8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    .line 66
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 67
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v1, v6}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fputlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetcontroller(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Lcom/exteragram/messenger/plugins/Plugin;->setNotResponding(Z)V

    .line 72
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetcontroller(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v2}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fgetlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/plugins/Plugin;->setNotResponding(Z)V

    .line 81
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->pluginIsNotResponding:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog$1;->this$0:Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;

    invoke-static {v0, v3}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->-$$Nest$fputlastReportedFrozenPluginId(Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    .line 87
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
