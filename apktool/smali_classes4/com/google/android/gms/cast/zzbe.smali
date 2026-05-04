.class public final synthetic Lcom/google/android/gms/cast/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/zzbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbe;->zza:Lcom/google/android/gms/cast/zzbt;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzag;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->zza:Lcom/google/android/gms/cast/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/cast/zzbt;->zza:Lcom/google/android/gms/cast/zzbs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzag;->zzj(Lcom/google/android/gms/cast/internal/zzai;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzag;->zze()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
