.class public abstract Lcom/google/android/gms/internal/cast/zzrg;
.super Lcom/google/android/gms/internal/cast/zzsf;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# static fields
.field static final zza:Z

.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/cast/zzrg$zzd;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v1, Lcom/google/android/gms/internal/cast/zzrg$zzk;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzrg;->zza:Z

    .line 3
    const-class v2, Lcom/google/android/gms/internal/cast/zzrg;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzb:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    .line 4
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzrg$zzj;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/cast/zzrg$zzj;-><init>(Lcom/google/android/gms/internal/cast/zzrk;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    move-object v12, v6

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    .line 11
    :goto_2
    :try_start_2
    new-instance v5, Lcom/google/android/gms/internal/cast/zzrg$zze;

    const-class v0, Ljava/lang/Thread;

    const-string v6, "thread"

    .line 5
    invoke-static {v1, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-string v0, "next"

    .line 6
    invoke-static {v1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v0, "waiters"

    .line 7
    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v0, Lcom/google/android/gms/internal/cast/zzrg$zzd;

    const-string v1, "listeners"

    .line 8
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v0, Ljava/lang/Object;

    const-string v1, "value"

    .line 9
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/cast/zzrg$zze;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v3

    move-object v12, v4

    move-object v0, v5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/cast/zzrg$zzg;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/cast/zzrg$zzg;-><init>(Lcom/google/android/gms/internal/cast/zzri;)V

    move-object v6, v0

    move-object v0, v1

    move-object v12, v4

    .line 4
    :goto_4
    sput-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    if-eqz v6, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/cast/zzrg;->zzb:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    .line 10
    const-string v9, "com.google.common.util.concurrent.AbstractFuture"

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "<clinit>"

    const-string v5, "SafeAtomicHelper is broken!"

    .line 11
    const-string v3, "com.google.common.util.concurrent.AbstractFuture"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzd:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzsf;-><init>()V

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/cast/zzrg$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    return-object v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg;->listeners:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/cast/zzrg;)Lcom/google/android/gms/internal/cast/zzrg$zzk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/cast/zzrg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg;->listeners:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    return-void
.end method

.method private static zzo(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final zzp(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzrg;->zzo(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    if-ne v1, p0, :cond_1

    .line 8
    const-string v1, "this future"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_1
    const-string v1, "UNKNOWN, cause=["

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 11
    :catch_2
    const-string v0, "CANCELLED"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 7
    :goto_2
    const-string v2, "FAILURE, cause=["

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zzq(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzfb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 6
    const-string v2, ", info=["

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzp(Ljava/lang/StringBuilder;)V

    :cond_1
    return-void
.end method

.method private static zzs(Lcom/google/android/gms/internal/cast/zzrg;Z)V
    .locals 3

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    sget-object v0, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzb(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Lcom/google/android/gms/internal/cast/zzrg$zzk;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->next:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->zzj()V

    sget-object p1, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzrg$zzd;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    .line 4
    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zza(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Lcom/google/android/gms/internal/cast/zzrg$zzd;

    move-result-object p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzrg$zzd;->next:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    iput-object p0, v0, Lcom/google/android/gms/internal/cast/zzrg$zzd;->next:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    move-object p0, v0

    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg$zzd;->zzb:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzd;->next:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzd;->zzc:Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/zzrg;->zzt(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static zzt(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzu(Lcom/google/android/gms/internal/cast/zzrg$zzk;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->next:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    iget-object v3, p1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->next:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzrg$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final zzv(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzc;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzd:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/cast/zzrg$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzc;->zzb:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzrg$zzb;->zzd:Ljava/lang/Throwable;

    .line 2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1
    throw v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->listeners:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    sget-object v1, Lcom/google/android/gms/internal/cast/zzrg$zzd;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/cast/zzrg$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/cast/zzrg$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/cast/zzrg$zzd;->next:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    sget-object v2, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    .line 4
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zze(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzd;Lcom/google/android/gms/internal/cast/zzrg$zzd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->listeners:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    sget-object v2, Lcom/google/android/gms/internal/cast/zzrg$zzd;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzd;

    if-ne v0, v2, :cond_0

    .line 5
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzrg;->zzt(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/google/android/gms/internal/cast/zzrg;->zza:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/cast/zzrg$zzb;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/cast/zzrg$zzb;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzb;

    goto :goto_1

    .line 3
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/cast/zzrg$zzb;->zzb:Lcom/google/android/gms/internal/cast/zzrg$zzb;

    .line 4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    .line 5
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/cast/zzrg;->zzs(Lcom/google/android/gms/internal/cast/zzrg;Z)V

    return v1

    :cond_3
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    sget-object v3, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/cast/zzrg$zzk;

    .line 4
    invoke-direct {v3}, Lcom/google/android/gms/internal/cast/zzrg$zzk;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    .line 5
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzc(Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    .line 6
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 9
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/cast/zzrg;->zzu(Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 10
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    sget-object v4, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 13
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 15
    iget-object v6, v0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    .line 16
    invoke-static {v6}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    sget-object v15, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/android/gms/internal/cast/zzrg$zzk;

    .line 18
    invoke-direct {v15}, Lcom/google/android/gms/internal/cast/zzrg$zzk;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    .line 19
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzc(Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    .line 20
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzg(Lcom/google/android/gms/internal/cast/zzrg;Lcom/google/android/gms/internal/cast/zzrg$zzk;Lcom/google/android/gms/internal/cast/zzrg$zzk;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 21
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 22
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 23
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 27
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/cast/zzrg;->zzu(Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    goto :goto_3

    .line 24
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/cast/zzrg;->zzu(Lcom/google/android/gms/internal/cast/zzrg$zzk;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 25
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 29
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/cast/zzrg;->waiters:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    sget-object v7, Lcom/google/android/gms/internal/cast/zzrg$zzk;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzk;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_c

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/cast/zzrg;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 28
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 28
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    .line 31
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 32
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzrg;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_14

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 36
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_5
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v8, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzrg;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    .line 15
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrg;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzp(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzq(Ljava/lang/StringBuilder;)V

    .line 6
    :goto_1
    const-string v1, "]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zze()Ljava/lang/String;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remaining delay=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzj()V
    .locals 0

    return-void
.end method

.method protected final zzk(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzrg;->zzd:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzs(Lcom/google/android/gms/internal/cast/zzrg;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected final zzl(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzrg$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzrg$zzc;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/cast/zzrg;->zzc:Lcom/google/android/gms/internal/cast/zzrg$zza;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzrg$zza;->zzf(Lcom/google/android/gms/internal/cast/zzrg;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzrg;->zzs(Lcom/google/android/gms/internal/cast/zzrg;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method protected final zzm()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzrg;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzrg$zzb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/zzrg$zzb;->zzc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
