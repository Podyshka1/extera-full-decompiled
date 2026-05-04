.class Lcom/google/firebase/components/EventBus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/events/Subscriber;
.implements Lcom/google/firebase/events/Publisher;


# instance fields
.field private final defaultExecutor:Ljava/util/concurrent/Executor;

.field private final handlerMap:Ljava/util/Map;

.field private pendingEvents:Ljava/util/Queue;


# direct methods
.method public static synthetic $r8$lambda$sqqhdhVt61Z8rtVGSrd8s31MuYQ(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    .line 71
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {p0, p1}, Lcom/google/firebase/events/EventHandler;->handle(Lcom/google/firebase/events/Event;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    .line 53
    iput-object p1, p0, Lcom/google/firebase/components/EventBus;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized getHandlers(Lcom/google/firebase/events/Event;)Ljava/util/Set;
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 76
    :try_start_0
    throw p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method enablePublishingAndFlushPending()V
    .locals 3

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iput-object v1, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 127
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/firebase/components/EventBus;->publish(Lcom/google/firebase/events/Event;)V

    goto :goto_1

    :cond_1
    return-void

    .line 127
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public publish(Lcom/google/firebase/events/Event;)V
    .locals 4

    .line 58
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 65
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/firebase/components/EventBus;->getHandlers(Lcom/google/firebase/events/Event;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->defaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/components/EventBus;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V

    return-void
.end method

.method public declared-synchronized subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p3}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
