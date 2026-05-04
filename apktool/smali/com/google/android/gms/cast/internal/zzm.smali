.class final Lcom/google/android/gms/cast/internal/zzm;
.super Lcom/google/android/gms/cast/internal/zzae;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzm;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzae;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzm;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
