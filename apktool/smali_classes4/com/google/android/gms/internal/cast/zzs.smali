.class final Lcom/google/android/gms/internal/cast/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzs;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/cast/zzz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzz;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzv;->zzf(Lcom/google/android/gms/internal/cast/zzv;Lcom/google/android/gms/internal/cast/zzz;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;JIJJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzs;->zza:Lcom/google/android/gms/internal/cast/zzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzv;->zzc(Lcom/google/android/gms/internal/cast/zzv;)Lcom/google/android/gms/internal/cast/zzx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cast/zzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzp;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/cast/zzp;->zzf(J)Lcom/google/android/gms/internal/cast/zzp;

    .line 3
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/cast/zzp;->zzh(I)Lcom/google/android/gms/internal/cast/zzp;

    .line 4
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/internal/cast/zzp;->zzg(J)Lcom/google/android/gms/internal/cast/zzp;

    .line 5
    invoke-virtual {v1, p7, p8}, Lcom/google/android/gms/internal/cast/zzp;->zze(J)Lcom/google/android/gms/internal/cast/zzp;

    new-instance p1, Lcom/google/android/gms/internal/cast/zzq;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzq;-><init>(Lcom/google/android/gms/internal/cast/zzp;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzb(Lcom/google/android/gms/internal/cast/zzq;)V

    return-void
.end method
