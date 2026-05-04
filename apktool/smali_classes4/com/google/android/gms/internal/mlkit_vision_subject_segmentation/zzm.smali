.class final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;
.super Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbd;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbd;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;->zzk(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzw;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method final zza()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzo;

    return-object v0
.end method
