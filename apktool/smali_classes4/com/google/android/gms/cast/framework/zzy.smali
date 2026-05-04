.class final Lcom/google/android/gms/cast/framework/zzy;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveInputStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationDisconnected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzh(Lcom/google/android/gms/cast/framework/CastSession;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->notifySessionEnded(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationStatusChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStandbyStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVolumeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastSession;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$Listener;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
