.class public final Lcom/google/android/gms/internal/play_billing/zzkb;
.super Lcom/google/android/gms/internal/play_billing/zzhg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzin;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzkc;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzB()Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhk;)V

    return-void
.end method


# virtual methods
.method public final zzm(Lcom/google/android/gms/internal/play_billing/zzlv;)Lcom/google/android/gms/internal/play_billing/zzkb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzlx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzD(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzlx;)V

    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/play_billing/zzkb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzE(Lcom/google/android/gms/internal/play_billing/zzkd;I)V

    return-object p0
.end method
