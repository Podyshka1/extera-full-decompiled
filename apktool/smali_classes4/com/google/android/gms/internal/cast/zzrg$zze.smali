.class final Lcom/google/android/gms/internal/cast/zzrg$zze;
.super Lcom/google/android/gms/internal/cast/zzrg$zza;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg$zza;-><init>(Lcom/google/android/gms/internal/cast/zzrf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Lcom/google/android/gms/internal/cast/zzrg$zzd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzrg$zzd;

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Lcom/google/android/gms/internal/cast/zzrg$zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;

    return-object p1
.end method

.method final zzc(Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/cast/zzrg$zzk;Ljava/lang/Thread;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzrh;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzrh;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzrh;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
