.class public final Lcom/google/android/gms/internal/measurement/zzgk;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->zzw()Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzgj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzg(I)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzgi;)Lcom/google/android/gms/internal/measurement/zzgk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzt(ILcom/google/android/gms/internal/measurement/zzgj;)V

    return-object p0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzgk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzu()V

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zzgk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzv()V

    return-object p0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzk()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
