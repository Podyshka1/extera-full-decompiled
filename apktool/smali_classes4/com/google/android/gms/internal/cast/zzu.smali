.class public final Lcom/google/android/gms/internal/cast/zzu;
.super Lcom/google/android/gms/cast/framework/SessionTransferCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransferFailed(II)V
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzy;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzy;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/cast/zzy;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzv;->zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzaf;->zze()Z

    move-result p2

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzy;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/cast/zzy;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzz;

    .line 3
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    return-void
.end method

.method public final onTransferred(ILcom/google/android/gms/cast/SessionState;)V
    .locals 0

    return-void
.end method

.method public final onTransferring(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzy;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzv;->zzd(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzaf;->zze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/cast/zzy;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzz;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzu;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzv;->zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cast/zzaa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(I)V

    new-instance p1, Lcom/google/android/gms/internal/cast/zzab;

    .line 5
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzab;-><init>(Lcom/google/android/gms/internal/cast/zzaa;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzd(Lcom/google/android/gms/internal/cast/zzab;)V

    return-void
.end method
