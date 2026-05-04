.class public final Lcom/google/android/gms/internal/cast/zzj;
.super Lcom/google/android/gms/cast/framework/SessionTransferCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransferFailed(II)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "onTransferFailed with type = %d and reason = %d"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zzf(Lcom/google/android/gms/internal/cast/zzl;II)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xe8

    .line 4
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 5
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/cast/zzk;->zzi(Lcom/google/android/gms/internal/cast/zzk;Z)V

    return-void
.end method

.method public final onTransferred(ILcom/google/android/gms/cast/SessionState;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "onTransferred with type = %d"

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzg(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xe7

    .line 4
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/cast/zzk;->zzi(Lcom/google/android/gms/internal/cast/zzk;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzg(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/internal/cast/zzl;)V

    return-void
.end method

.method public final onTransferring(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "onTransferring with type = %d"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cast/zzk;->zzi(Lcom/google/android/gms/internal/cast/zzk;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzg(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object v0

    const/16 v1, 0xe6

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    return-void
.end method
