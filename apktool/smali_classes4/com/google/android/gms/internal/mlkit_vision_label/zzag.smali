.class abstract Lcom/google/android/gms/internal/mlkit_vision_label/zzag;
.super Lcom/google/android/gms/internal/mlkit_vision_label/zzai;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient zza:Ljava/util/Map;

.field private transient zzb:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzai;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    :cond_0
    return-void
.end method


# virtual methods
.method abstract zza()Ljava/util/Collection;
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
.end method

.method public final zzh(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza()Ljava/util/Collection;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method final zzi(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_label/zzad;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzab;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_label/zzab;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_label/zzad;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_label/zzaf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_label/zzad;)V

    return-object v0
.end method

.method final zzk()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;Ljava/util/Map;)V

    return-object v0
.end method

.method final zzl()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_label/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzaa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzag;Ljava/util/Map;)V

    return-object v0
.end method

.method public final zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return-void
.end method

.method public final zzo(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzag;->zzb:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
