.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 166
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 8

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-static {v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$getConnectivityManager$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network blocked status changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getState()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/work/impl/constraints/NetworkState;

    .line 203
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$getLock$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    monitor-enter p1

    .line 204
    :try_start_0
    invoke-static {v1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$isBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p2, :cond_0

    monitor-exit p1

    return-void

    .line 205
    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$setBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;Z)V

    .line 206
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit p1

    .line 207
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p2

    invoke-static/range {v0 .. v7}, Landroidx/work/impl/constraints/NetworkState;->copy$default(Landroidx/work/impl/constraints/NetworkState;ZZZZZILjava/lang/Object;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 203
    monitor-exit p1

    throw p2

    :cond_1
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network capabilities changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 178
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$isBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Z

    move-result v0

    invoke-static {p2, v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/NetworkCapabilities;Z)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p2

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$getConnectivityManager$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;

    move-result-object p2

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-static {v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->access$isBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Z

    move-result v0

    invoke-static {p2, v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p2

    .line 174
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 190
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    .line 189
    invoke-virtual {p1, v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    return-void
.end method
