.class public abstract Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final NetworkStateTracker(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getActiveNetworkState(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/NetworkState;
    .locals 7

    const-string v0, "connectivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    move v3, v1

    move v1, v2

    move v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    move v5, p1

    goto :goto_3

    :cond_0
    move v3, v1

    move v4, v2

    .line 93
    :goto_0
    :try_start_2
    invoke-static {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->isActiveNetworkValidated(Landroid/net/ConnectivityManager;)Z

    move-result v2

    .line 94
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    .line 95
    :try_start_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 96
    :goto_1
    :try_start_4
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    move v3, p0

    move v5, p1

    :try_start_5
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move v5, p1

    goto :goto_2

    .line 99
    :goto_3
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get active network state"

    invoke-virtual {p1, v0, v1, p0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    new-instance v1, Landroidx/work/impl/constraints/NetworkState;

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    return-object v1
.end method

.method public static final getActiveNetworkState(Landroid/net/NetworkCapabilities;Z)Landroidx/work/impl/constraints/NetworkState;
    .locals 7

    const-string v0, "capabilities"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 115
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/16 v0, 0x10

    .line 116
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/16 v0, 0xb

    .line 117
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/16 v0, 0x12

    .line 118
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    .line 119
    new-instance v1, Landroidx/work/impl/constraints/NetworkState;

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    return-object v1
.end method

.method public static final isActiveNetworkValidated(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x10

    .line 70
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v0

    .line 73
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const-string v3, "Unable to validate active network"

    invoke-virtual {v1, v2, v3, p0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
