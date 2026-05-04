.class final Lcom/google/android/gms/internal/measurement/zznq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zznm;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzoi;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzls;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzb:Lcom/google/android/gms/internal/measurement/zzoi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzd:Lcom/google/android/gms/internal/measurement/zzls;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznm;

    return-void
.end method

.method static zzg(Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznm;)Lcom/google/android/gms/internal/measurement/zznq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznq;-><init>(Lcom/google/android/gms/internal/measurement/zzoi;Lcom/google/android/gms/internal/measurement/zzls;Lcom/google/android/gms/internal/measurement/zznm;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zza:Lcom/google/android/gms/internal/measurement/zznm;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzmf;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzch()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznm;->zzcC()Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznl;->zzbf()Lcom/google/android/gms/internal/measurement/zznm;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzc:Z

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzc:Z

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzb:Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznz;->zzD(Lcom/google/android/gms/internal/measurement/zzoi;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzd:Lcom/google/android/gms/internal/measurement/zzls;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznz;->zzC(Lcom/google/android/gms/internal/measurement/zzls;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoj;->zzh()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzc:Z

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzkw;)V
    .locals 0

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzb()Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    .line 3
    :goto_0
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzb:Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoi;->zzb(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->zzd:Lcom/google/android/gms/internal/measurement/zzls;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzls;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method
