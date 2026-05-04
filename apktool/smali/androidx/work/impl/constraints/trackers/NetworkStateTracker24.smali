.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "SourceFile"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private volatile isBlocked:Z

.field private final lock:Ljava/lang/Object;

.field private final networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 148
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 150
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->lock:Ljava/lang/Object;

    .line 166
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-direct {p1, p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    return-void
.end method

.method public static final synthetic access$getConnectivityManager$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Ljava/lang/Object;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$isBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->isBlocked:Z

    return p0
.end method

.method public static final synthetic access$setBlocked$p(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->isBlocked:Z

    return-void
.end method


# virtual methods
.method public readSystemState()Landroidx/work/impl/constraints/NetworkState;
    .locals 2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-boolean v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->isBlocked:Z

    invoke-static {v0, v1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/NetworkCapabilities;Z)Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->isBlocked:Z

    invoke-static {v0, v1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readSystemState()Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->readSystemState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public startTracking()V
    .locals 4

    .line 213
    const-string v0, "Received exception while registering network callback"

    .line 214
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-static {v1, v2}, Landroidx/work/impl/utils/NetworkApi24;->registerDefaultNetworkCallbackCompat(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 223
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 221
    :goto_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public stopTracking()V
    .locals 4

    .line 228
    const-string v0, "Received exception while unregistering network callback"

    .line 229
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 238
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 236
    :goto_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
