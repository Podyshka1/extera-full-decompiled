.class public final Lcom/google/android/gms/internal/measurement/zzgi;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgj;->zzi()Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgj;->zzh(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zze()Z

    move-result v0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zzg()I

    move-result v0

    return v0
.end method
