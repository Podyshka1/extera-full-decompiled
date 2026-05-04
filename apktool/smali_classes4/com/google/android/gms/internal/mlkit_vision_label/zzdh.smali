.class public final Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzjt;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;Lcom/google/android/gms/internal/mlkit_vision_label/zzdg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;->zze(Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;)Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzb:Ljava/lang/Boolean;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_label/zzjt;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;->zzf(Lcom/google/android/gms/internal/mlkit_vision_label/zzdf;)Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzb:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzb:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

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

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_label/zzke;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_label/zzke;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzdh;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method
