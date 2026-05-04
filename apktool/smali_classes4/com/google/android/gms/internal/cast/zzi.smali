.class public final Lcom/google/android/gms/internal/cast/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    return-void
.end method

.method public final synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public final bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    return-void
.end method

.method public final bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "onSessionResumed with wasSuspended = %b"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zzb(Lcom/google/android/gms/internal/cast/zzl;Z)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xe3

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzp(Lcom/google/android/gms/internal/cast/zzk;)V

    return-void
.end method

.method public final bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "onSessionResuming with sessionId = %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zza(Lcom/google/android/gms/internal/cast/zzk;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzn(Lcom/google/android/gms/internal/cast/zzk;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzc(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xe2

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    return-void
.end method

.method public final bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzk;->zzm(Lcom/google/android/gms/internal/cast/zzk;I)V

    return-void
.end method

.method public final bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "onSessionStarted with sessionId = %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object v0

    .line 5
    iput-object p2, v0, Lcom/google/android/gms/internal/cast/zzl;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzm;->zza(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xde

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzp(Lcom/google/android/gms/internal/cast/zzk;)V

    return-void
.end method

.method public final bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSessionStarting"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Start a session while there\'s already an active session. Create a new one."

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzl(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzm;->zzd(Lcom/google/android/gms/internal/cast/zzl;)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object v0

    const/16 v1, 0xdd

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    return-void
.end method

.method public final bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zze()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "onSessionSuspended with reason = %d"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzk;->zzh(Lcom/google/android/gms/internal/cast/zzk;Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzk(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzd(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzm;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzc(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzl;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzm;->zze(Lcom/google/android/gms/internal/cast/zzl;I)Lcom/google/android/gms/internal/cast/zzno;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzg;

    move-result-object p2

    const/16 v0, 0xe1

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzo(Lcom/google/android/gms/internal/cast/zzk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->zza:Lcom/google/android/gms/internal/cast/zzk;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zzj(Lcom/google/android/gms/internal/cast/zzk;)V

    return-void
.end method
