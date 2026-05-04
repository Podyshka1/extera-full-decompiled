.class public final Lcom/google/android/gms/internal/cast/zzay;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/cast/zzax;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/util/LinkedHashSet;

.field private final zzf:Lcom/google/android/gms/internal/cast/zzbg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MRDiscoveryCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cast/zzbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzbg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzf:Lcom/google/android/gms/internal/cast/zzbg;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    .line 4
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzc:Ljava/util/Set;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzax;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzax;-><init>(Lcom/google/android/gms/internal/cast/zzay;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zza:Lcom/google/android/gms/internal/cast/zzax;

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaRouterDiscoveryCallback.onRouteAdded."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/zzay;->zzf(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    return-void
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaRouterDiscoveryCallback.onRouteChanged."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/zzay;->zzf(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    return-void
.end method

.method public final onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MediaRouterDiscoveryCallback.onRouteRemoved."

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/cast/zzay;->zzf(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetRouteDiscovery for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IDs"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzes;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "resetting routes. appIdToRouteInfo has these appId route keys: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/internal/cast/zzes;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzaw;

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 12
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 13
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Routes reset. appIdToRouteInfo has these appId route keys: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    .line 17
    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 20
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzay;->zzb()V

    return-void

    :catchall_1
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 14
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting RouteDiscovery with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " IDs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "appIdToRouteInfo has these appId route keys: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzay;->zzc()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/cast/zzav;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzav;-><init>(Lcom/google/android/gms/internal/cast/zzay;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzc()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzf:Lcom/google/android/gms/internal/cast/zzbg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzbg;->zzb(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zze:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v4, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v4}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 7
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/zzaw;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    new-instance v6, Lcom/google/android/gms/internal/cast/zzaw;

    .line 8
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/zzaw;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding mediaRouter callback for control category "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzay;->zzf:Lcom/google/android/gms/internal/cast/zzbg;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzbg;->zza()Landroidx/mediarouter/media/MediaRouter;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v4, p0, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "appIdToRouteInfo has these appId route keys: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzd()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stopping RouteDiscovery."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzf:Lcom/google/android/gms/internal/cast/zzbg;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzbg;->zzb(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzed;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/cast/zzau;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzau;-><init>(Lcom/google/android/gms/internal/cast/zzay;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzf:Lcom/google/android/gms/internal/cast/zzbg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cast/zzbg;->zzb(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    return-void
.end method

.method public final zzf(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string v1, "MediaRouterDiscoveryCallback.updateRouteToAppIds (add=%b) route %s"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 2
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appIdToRouteInfo has these appId route keys: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzaw;

    .line 7
    iget-object v6, v4, Lcom/google/android/gms/internal/cast/zzaw;->zzb:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding/updating route for appId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/zzaw;->zza:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Route "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already exists for appId "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_1
    move v2, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing route for appId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/zzaw;->zza:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Route "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already removed from appId "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    sget-object p1, Lcom/google/android/gms/internal/cast/zzay;->zzb:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "Invoking callback.onRouteUpdated."

    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzc:Ljava/util/Set;

    .line 16
    monitor-enter p1

    :try_start_1
    new-instance p2, Ljava/util/HashMap;

    .line 17
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 18
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzay;->zzd:Ljava/util/Map;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzes;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cast/zzaw;

    if-nez v3, :cond_5

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzfu;->zzk()Lcom/google/android/gms/internal/cast/zzfu;

    move-result-object v3

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_4

    .line 24
    :cond_5
    iget-object v3, v3, Lcom/google/android/gms/internal/cast/zzaw;->zza:Ljava/util/LinkedHashSet;

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzfu;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/cast/zzfu;

    move-result-object v3

    .line 23
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 24
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :try_start_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzft;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zzft;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzay;->zzc:Ljava/util/Set;

    .line 27
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p2

    goto :goto_5

    .line 27
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 28
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 25
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2

    .line 29
    :goto_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    :cond_8
    return-void

    .line 14
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
