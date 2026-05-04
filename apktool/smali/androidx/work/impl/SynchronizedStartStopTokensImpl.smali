.class final Landroidx/work/impl/SynchronizedStartStopTokensImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/StartStopTokens;


# instance fields
.field private final delegate:Landroidx/work/impl/StartStopTokens;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/StartStopTokens;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->delegate:Landroidx/work/impl/StartStopTokens;

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->delegate:Landroidx/work/impl/StartStopTokens;

    invoke-interface {v1, p1}, Landroidx/work/impl/StartStopTokens;->contains(Landroidx/work/impl/model/WorkGenerationalId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->delegate:Landroidx/work/impl/StartStopTokens;

    invoke-interface {v1, p1}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->delegate:Landroidx/work/impl/StartStopTokens;

    invoke-interface {v1, p1}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->delegate:Landroidx/work/impl/StartStopTokens;

    invoke-interface {v1, p1}, Landroidx/work/impl/StartStopTokens;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public synthetic tokenFor(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/StartStopToken;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/work/impl/StartStopTokens$-CC;->$default$tokenFor(Landroidx/work/impl/StartStopTokens;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/StartStopToken;

    move-result-object p1

    return-object p1
.end method
