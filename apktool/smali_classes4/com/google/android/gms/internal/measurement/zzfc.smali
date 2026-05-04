.class public final Lcom/google/android/gms/internal/measurement/zzfc;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfd;->zzk()Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzd()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfd;->zze(I)Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzfm;)Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfd;->zzi(ILcom/google/android/gms/internal/measurement/zzfn;)V

    return-object p0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd;->zzg()I

    move-result v0

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzff;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfd;->zzh(I)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(ILcom/google/android/gms/internal/measurement/zzfe;)Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfd;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzff;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfd;->zzj(ILcom/google/android/gms/internal/measurement/zzff;)V

    return-object p0
.end method
