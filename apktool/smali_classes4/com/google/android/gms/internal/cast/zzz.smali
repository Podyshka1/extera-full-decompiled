.class public final Lcom/google/android/gms/internal/cast/zzz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:J

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Ljava/lang/Boolean;

.field private zzd:J

.field private final zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzy;->zze(Lcom/google/android/gms/internal/cast/zzy;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzz;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzy;->zzd(Lcom/google/android/gms/internal/cast/zzy;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzz;->zzb:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzy;->zzc(Lcom/google/android/gms/internal/cast/zzy;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzz;->zzc:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzz;->zza:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/cast/zzns;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzns;->zza()Lcom/google/android/gms/internal/cast/zznr;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzz;->zze:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznr;->zzd(I)Lcom/google/android/gms/internal/cast/zznr;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzz;->zza:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzz;->zzd:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznr;->zzc(I)Lcom/google/android/gms/internal/cast/zznr;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzz;->zzb:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznr;->zzb(I)Lcom/google/android/gms/internal/cast/zznr;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzz;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznr;->zza(Z)Lcom/google/android/gms/internal/cast/zznr;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzns;

    return-object v0
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzz;->zzd:J

    return-void
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzz;->zze:I

    return v0
.end method
