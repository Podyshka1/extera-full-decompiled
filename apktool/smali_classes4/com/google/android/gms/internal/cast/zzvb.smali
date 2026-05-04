.class final Lcom/google/android/gms/internal/cast/zzvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzvi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zzux;

.field private final zzb:Lcom/google/android/gms/internal/cast/zzvz;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/cast/zztf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/cast/zztf;->zzc(Lcom/google/android/gms/internal/cast/zzux;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzvb;->zza:Lcom/google/android/gms/internal/cast/zzux;

    return-void
.end method

.method static zzi(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)Lcom/google/android/gms/internal/cast/zzvb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzvb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvb;-><init>(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzvz;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zza:Lcom/google/android/gms/internal/cast/zzux;

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zztp;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzx()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzux;->zzC()Lcom/google/android/gms/internal/cast/zzuw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzuw;->zzs()Lcom/google/android/gms/internal/cast/zzux;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvk;->zzo(Lcom/google/android/gms/internal/cast/zzvz;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzc:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzb:Lcom/google/android/gms/internal/cast/zzvz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzvz;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvb;->zzd:Lcom/google/android/gms/internal/cast/zztf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zztj;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
