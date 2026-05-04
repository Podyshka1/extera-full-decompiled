.class public final Lcom/google/android/gms/internal/play_billing/zzck;
.super Lcom/google/android/gms/internal/play_billing/zzch;
.source "SourceFile"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzck;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzch;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzch;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzco;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzco;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v0

    return-object v0
.end method
