.class public Lcom/google/android/gms/cast/framework/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/cast/framework/zzay;

.field private final zzc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "SessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/zzay;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must be called from the main thread."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    new-instance v1, Lcom/google/android/gms/cast/framework/zzbj;

    .line 6
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/cast/framework/zzbj;-><init>(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzay;->zzi(Lcom/google/android/gms/cast/framework/zzba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v0, Lcom/google/android/gms/cast/framework/zzay;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addSessionManagerListener"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Unable to call %s on %s."

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "SessionManagerListener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endCurrentSession(Z)V
    .locals 6

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-string v3, "End session for %s"

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzc:Landroid/content/Context;

    .line 2
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    .line 3
    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/cast/framework/zzay;->zzj(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v2, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v3, Lcom/google/android/gms/cast/framework/zzay;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "endCurrentSession"

    aput-object v5, v4, v0

    aput-object v3, v4, v1

    const-string v0, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v2, p1, v0, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentSession()Lcom/google/android/gms/cast/framework/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/cast/framework/CastSession;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSession()Lcom/google/android/gms/cast/framework/Session;
    .locals 6

    .line 1
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzay;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/Session;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzay;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getWrappedCurrentSession"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzay;->zzg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzay;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getWrappedThis"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionManager;->zzb:Lcom/google/android/gms/cast/framework/zzay;

    new-instance v1, Lcom/google/android/gms/cast/framework/zzab;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zzab;-><init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzay;->zzh(Lcom/google/android/gms/cast/framework/zzao;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/cast/framework/SessionManager;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v1, Lcom/google/android/gms/cast/framework/zzay;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "addCastStateListener"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
