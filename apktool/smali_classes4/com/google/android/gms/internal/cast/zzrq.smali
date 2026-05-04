.class public abstract Lcom/google/android/gms/internal/cast/zzrq;
.super Lcom/google/android/gms/internal/cast/zzro;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzro;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzrq;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract zzc()Lcom/google/common/util/concurrent/ListenableFuture;
.end method
