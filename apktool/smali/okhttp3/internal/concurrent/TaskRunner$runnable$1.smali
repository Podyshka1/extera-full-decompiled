.class public final Lokhttp3/internal/concurrent/TaskRunner$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$Backend;Ljava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 69
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .line 63
    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {v0}, Lokhttp3/internal/concurrent/TaskRunner;->access$getRunCallCount$p(Lokhttp3/internal/concurrent/TaskRunner;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/concurrent/TaskRunner;->access$setRunCallCount$p(Lokhttp3/internal/concurrent/TaskRunner;I)V

    .line 71
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 63
    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-wide/16 v4, -0x1

    .line 78
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->getLogger$okhttp()Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->getQueue$okhttp()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 39
    invoke-virtual {v7}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v9

    .line 40
    const-string/jumbo v11, "starting"

    invoke-static {v6, v1, v7, v11}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    move-wide v9, v4

    .line 81
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->runOnce()J

    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v7}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finished run in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v1, v7, v8}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-object v6, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .line 63
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :try_start_4
    invoke-static {v6, v1, v11, v12, v2}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V

    .line 87
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v1, v7

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 63
    :try_start_6
    monitor-exit v6

    throw v2

    :catchall_2
    move-exception v2

    if-eqz v8, :cond_4

    .line 50
    invoke-virtual {v7}, Lokhttp3/internal/concurrent/TaskQueue;->getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/concurrent/TaskRunner;->getBackend()Lokhttp3/internal/concurrent/TaskRunner$Backend;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/internal/concurrent/TaskRunner$Backend;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed a run in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lokhttp3/internal/concurrent/TaskLoggerKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v1, v7, v8}, Lokhttp3/internal/concurrent/TaskLoggerKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    :goto_2
    :try_start_7
    iget-object v6, p0, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;->this$0:Lokhttp3/internal/concurrent/TaskRunner;

    .line 63
    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v7, 0x0

    .line 93
    :try_start_8
    invoke-static {v6, v1, v4, v5, v7}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V

    .line 94
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 63
    :try_start_9
    monitor-exit v6

    .line 95
    instance-of v1, v2, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_5

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 98
    :cond_5
    :try_start_a
    throw v2

    :catchall_4
    move-exception v1

    .line 63
    monitor-exit v6

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 101
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1

    :catchall_5
    move-exception v1

    .line 63
    monitor-exit v0

    throw v1
.end method
