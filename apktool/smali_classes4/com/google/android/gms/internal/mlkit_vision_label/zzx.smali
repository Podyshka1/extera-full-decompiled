.class final Lcom/google/android/gms/internal/mlkit_vision_label/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final zza:Ljava/util/Iterator;

.field zzb:Ljava/util/Collection;

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzy;->zza:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzb:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzy;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_label/zzy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzag;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_label/zzba;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzba;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzb:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzs;->zzd(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zza:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_label/zzag;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzb:Ljava/util/Collection;

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzg(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzb:Ljava/util/Collection;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzx;->zzb:Ljava/util/Collection;

    return-void
.end method
