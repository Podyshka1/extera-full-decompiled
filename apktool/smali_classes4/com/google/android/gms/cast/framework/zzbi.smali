.class final Lcom/google/android/gms/cast/framework/zzbi;
.super Lcom/google/android/gms/cast/framework/zzbd;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/Session;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/Session;Lcom/google/android/gms/cast/framework/zzbh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->getSessionRemainingTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->end(Z)V

    return-void
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->onResuming(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->onStarting(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->resume(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->start(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzi(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzbi;->zza:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->zzk(Landroid/os/Bundle;)V

    return-void
.end method
