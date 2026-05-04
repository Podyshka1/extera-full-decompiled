.class public Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;,
        Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$SubjectResultOptions;
    }
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method synthetic constructor <init>(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;Lcom/google/mlkit/vision/segmentation/subject/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zzc(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zzb(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zzd(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zzf(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zze(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    invoke-static {p1}, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;->zza(Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions$Builder;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    .line 2
    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzf:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzf:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    .line 5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzf:Ljava/util/concurrent/Executor;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 6
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;-><init>()V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzc(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzrz;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzf:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzb:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zza:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzc:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zze:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/segmentation/subject/SubjectSegmenterOptions;->zzd:Z

    return v0
.end method
