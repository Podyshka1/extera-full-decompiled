.class final Lcom/google/android/gms/internal/cast/zzbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzbn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbn;Lcom/google/android/gms/internal/cast/zzbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzbn;->zzc()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "onSessionEnded with error = %d"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzg(Lcom/google/android/gms/internal/cast/zzbn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zza(Lcom/google/android/gms/internal/cast/zzbn;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzh(Lcom/google/android/gms/internal/cast/zzbn;)V

    return-void
.end method

.method public final bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzbn;->zzc()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbn;->zza(Lcom/google/android/gms/internal/cast/zzbn;)I

    move-result p2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "onSessionStarted with transferType = %d"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzb(Lcom/google/android/gms/internal/cast/zzbn;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->zzg()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zza(Lcom/google/android/gms/internal/cast/zzbn;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzi(Lcom/google/android/gms/internal/cast/zzbn;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbm;->zza:Lcom/google/android/gms/internal/cast/zzbn;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbn;->zzh(Lcom/google/android/gms/internal/cast/zzbn;)V

    return-void
.end method

.method public final bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method

.method public final bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    return-void
.end method
