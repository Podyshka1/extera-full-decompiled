.class public final Lcom/google/android/gms/internal/cast/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zzg;

.field private final zzb:Lcom/google/android/gms/internal/cast/zzaf;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/cast/zzx;

.field private final zze:Lcom/google/android/gms/internal/cast/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzaf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzv;->zzb:Lcom/google/android/gms/internal/cast/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzs;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/cast/zzs;-><init>(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zze:Lcom/google/android/gms/internal/cast/zzs;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zze:Lcom/google/android/gms/internal/cast/zzs;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzg()Lcom/google/android/gms/internal/cast/zzx;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzb:Lcom/google/android/gms/internal/cast/zzaf;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/cast/zzv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzh()V

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzz;->zzc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzh()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzz;->zzc()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzv;->zzg()Lcom/google/android/gms/internal/cast/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzc(Lcom/google/android/gms/internal/cast/zzz;)V

    return-void
.end method

.method private final zzg()Lcom/google/android/gms/internal/cast/zzx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    return-object v0
.end method

.method private final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->zzd:Lcom/google/android/gms/internal/cast/zzx;

    :cond_0
    return-void
.end method
