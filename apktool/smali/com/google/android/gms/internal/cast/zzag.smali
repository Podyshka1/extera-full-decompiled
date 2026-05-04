.class public abstract Lcom/google/android/gms/internal/cast/zzag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastDynamiteModule"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzag;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzam;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzaj;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzag;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 3
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzak;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzam;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzaj;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzag;)Lcom/google/android/gms/cast/framework/zzam;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzag;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzak;->zzg(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzag;)Lcom/google/android/gms/cast/framework/zzam;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzag;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p2, Lcom/google/android/gms/internal/cast/zzak;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string/jumbo v1, "newCastSessionImpl"

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const/4 v1, 0x1

    aput-object p2, p3, v1

    const-string p2, "Unable to call %s on %s."

    .line 4
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzc(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzat;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzag;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 3
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzak;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzat;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzag;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p2, Lcom/google/android/gms/internal/cast/zzak;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "newReconnectionServiceImpl"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "Unable to call %s on %s."

    .line 5
    invoke-virtual {p1, p0, p2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzbe;)Lcom/google/android/gms/cast/framework/zzaw;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzag;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzak;->zzi(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzbe;)Lcom/google/android/gms/cast/framework/zzaw;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/android/gms/internal/cast/zzag;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p2, Lcom/google/android/gms/internal/cast/zzak;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string/jumbo v0, "newSessionImpl"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p2, p3, v0

    const-string p2, "Unable to call %s on %s."

    .line 4
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zze(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;
    .locals 13

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzag;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzak;->zze()I

    move-result p0

    const v0, 0xdedfaa0

    if-lt p0, v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    const/16 v11, 0x14d

    const/16 v12, 0x2710

    const/4 v7, 0x0

    const-wide/32 v8, 0x200000

    const/4 v10, 0x5

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 5
    invoke-interface/range {v1 .. v12}, Lcom/google/android/gms/internal/cast/zzak;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    const/16 v10, 0x14d

    const/16 v11, 0x2710

    const/4 v6, 0x0

    const-wide/32 v7, 0x200000

    const/4 v9, 0x5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 7
    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/cast/zzak;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/google/android/gms/internal/cast/zzag;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class p2, Lcom/google/android/gms/internal/cast/zzak;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "newFetchBitmapTaskImpl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "Unable to call %s on %s."

    .line 9
    invoke-virtual {p1, p0, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzak;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    .line 4
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzak;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/cast/zzak;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzaj;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/android/gms/cast/framework/ModuleUnavailableException;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/ModuleUnavailableException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
