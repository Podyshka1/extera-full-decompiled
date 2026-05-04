.class public final Lcom/google/android/gms/internal/cast/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:I

.field final zzb:J

.field private zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzaa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/google/android/gms/internal/cast/zzaa;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzab;->zza:I

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzab;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/cast/zzny;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzny;->zza()Lcom/google/android/gms/internal/cast/zznx;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzab;->zzb:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzab;->zzc:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznx;->zza(I)Lcom/google/android/gms/internal/cast/zznx;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzab;->zza:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v4

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zznx;->zzb(I)Lcom/google/android/gms/internal/cast/zznx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzny;

    return-object v0
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzab;->zzc:J

    return-void
.end method
