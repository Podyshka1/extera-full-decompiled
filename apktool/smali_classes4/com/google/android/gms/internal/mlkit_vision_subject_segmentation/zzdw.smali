.class public final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznj;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;->zze(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzb:Ljava/lang/Boolean;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zznj;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;->zzf(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzb:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzb:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzoa;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzdw;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method
