.class public final Lcom/google/android/gms/internal/cast/zzad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:J

.field zzb:J

.field private zzc:J

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzac;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzac;->zza(Lcom/google/android/gms/internal/cast/zzac;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzad;->zze:I

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzad;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzad;->zzb:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzad;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/cast/zznw;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zznw;->zza()Lcom/google/android/gms/internal/cast/zznv;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzad;->zze:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznv;->zzd(I)Lcom/google/android/gms/internal/cast/zznv;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzad;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznv;->zza(I)Lcom/google/android/gms/internal/cast/zznv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzad;->zza:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzad;->zzc:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznv;->zzb(I)Lcom/google/android/gms/internal/cast/zznv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzad;->zzb:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzad;->zzc:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zznv;->zzc(I)Lcom/google/android/gms/internal/cast/zznv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zznw;

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzad;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzad;->zzb:J

    return-void
.end method

.method public final zzc(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzad;->zzc:J

    return-void
.end method
