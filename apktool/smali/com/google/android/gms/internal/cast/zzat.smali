.class public final Lcom/google/android/gms/internal/cast/zzat;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/cast/zzao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzao;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzf(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v0, Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onRouteAdded"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Unable to call %s on %s."

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzg(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v0, Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onRouteChanged"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Unable to call %s on %s."

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v0, Lcom/google/android/gms/internal/cast/zzao;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onRouteRemoved"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Unable to call %s on %s."

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 8

    .line 1
    const-string v0, "-groupRoute"

    sget-object v1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 p3, 0x1

    aput-object v2, v4, p3

    const-string/jumbo v2, "onRouteSelected with reason = %d, routeId = %s"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    if-eq v1, p3, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 11
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string/jumbo v0, "routeId is changed from %s to %s"

    .line 13
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v5

    aput-object v4, v7, p3

    invoke-virtual {p1, v0, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzao;->zze()I

    move-result p1

    const v0, 0xd230980

    if-lt p1, v0, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 16
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 17
    invoke-interface {p1, v2, v1, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzj(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 18
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/google/android/gms/internal/cast/zzao;->zzi(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v0, Lcom/google/android/gms/internal/cast/zzao;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "onRouteSelected"

    aput-object v2, v1, v5

    aput-object v0, v1, p3

    const-string p3, "Unable to call %s on %s."

    .line 20
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string/jumbo v1, "onRouteUnselected with reason = %d, routeId = %s"

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-array p2, v4, [Ljava/lang/Object;

    const-string/jumbo p3, "skip route unselection for non-cast route"

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzat;->zzb:Lcom/google/android/gms/internal/cast/zzao;

    .line 4
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/gms/internal/cast/zzao;->zzk(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzat;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p3, Lcom/google/android/gms/internal/cast/zzao;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "onRouteUnselected"

    aput-object v2, v1, v4

    aput-object p3, v1, v0

    const-string p3, "Unable to call %s on %s."

    .line 6
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
