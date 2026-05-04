.class public final Landroidx/datastore/core/MulticastFileObserver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/MulticastFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RJDrtcZMUHSzp9sK3YDnx03MGSE(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe$lambda$4(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/datastore/core/MulticastFileObserver$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$observe(Landroidx/datastore/core/MulticastFileObserver$Companion;Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method private final observe(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 4

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "key"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Landroidx/datastore/core/MulticastFileObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/datastore/core/MulticastFileObserver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 103
    :cond_0
    :goto_0
    check-cast v2, Landroidx/datastore/core/MulticastFileObserver;

    .line 106
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 110
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 112
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    .line 113
    new-instance v0, Landroidx/datastore/core/MulticastFileObserver$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    .line 102
    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private static final observe$lambda$4(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "$observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/MulticastFileObserver;

    if-eqz v2, :cond_0

    .line 116
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getFileObservers$datastore_core_release()Ljava/util/Map;
    .locals 1

    .line 60
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getFileObservers$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final observe(Ljava/io/File;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
