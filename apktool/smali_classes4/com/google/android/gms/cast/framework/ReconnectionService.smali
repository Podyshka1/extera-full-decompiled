.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private zzb:Lcom/google/android/gms/cast/framework/zzat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ReconnectionService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzb:Lcom/google/android/gms/cast/framework/zzat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzat;->zzf(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzat;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onBind"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    .line 3
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionManager;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzc()Lcom/google/android/gms/cast/framework/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/zzac;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 4
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzag;->zzc(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzb:Lcom/google/android/gms/cast/framework/zzat;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzat;->zzg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzat;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onCreate"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzb:Lcom/google/android/gms/cast/framework/zzat;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzat;->zzh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzat;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onDestroy"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "Unable to call %s on %s."

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzb:Lcom/google/android/gms/cast/framework/zzat;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/zzat;->zze(Landroid/content/Intent;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/cast/framework/ReconnectionService;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p3, Lcom/google/android/gms/cast/framework/zzat;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "onStartCommand"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const-string p3, "Unable to call %s on %s."

    .line 3
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method
