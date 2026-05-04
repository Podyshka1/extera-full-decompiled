.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzb:Ljava/lang/Boolean; = null

.field private static zzc:Ljava/lang/String; = null

.field private static zzd:Z = false

.field private static zze:I = -0x1

.field private static zzf:Ljava/lang/Boolean;

.field private static final zzg:Ljava/lang/ThreadLocal;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzk:Lcom/google/android/gms/dynamite/zzp;

.field private static zzl:Lcom/google/android/gms/dynamite/zzq;


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ModuleDescriptor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module descriptor id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local module descriptor class for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_17

    .line 2
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/dynamite/zzm;

    new-instance v7, Lcom/google/android/gms/dynamite/zzm;

    invoke-direct {v7, v5}, Lcom/google/android/gms/dynamite/zzm;-><init>(Lcom/google/android/gms/dynamite/zzo;)V

    .line 4
    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 7
    invoke-interface {v2, v1, v3, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v8

    const-string v14, "DynamiteModule"

    .line 8
    iget v15, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v16, 0x0

    :try_start_1
    iget v12, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "Considering local module "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and remote module "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v5, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v5, :cond_14

    const/4 v12, -0x1

    if-ne v5, v12, :cond_0

    iget v5, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v5, :cond_14

    move v5, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :goto_0
    const/4 v13, 0x1

    if-ne v5, v13, :cond_1

    iget v14, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v14, :cond_14

    :cond_1
    if-ne v5, v12, :cond_2

    .line 64
    invoke-static {v4, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :cond_2
    if-ne v5, v13, :cond_13

    .line 11
    :try_start_2
    iget v14, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-class v15, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v15
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 13
    sget-object v19, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 14
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v19, :cond_e

    .line 16
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/4 v13, 0x2

    if-eqz v15, :cond_8

    const-string v15, "DynamiteModule"

    new-instance v12, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected remote version of "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", version >= "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v12, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzq;

    .line 34
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v12, :cond_7

    .line 36
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzm;

    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    if-eqz v5, :cond_6

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    .line 39
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-class v15, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v15
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v20, v0

    :try_start_8
    sget v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    if-lt v0, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 40
    :goto_1
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v13, :cond_4

    .line 42
    :try_start_9
    const-string v0, "DynamiteModule"

    const-string v13, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 43
    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 45
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 46
    invoke-virtual {v12, v0, v3, v14, v5}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 53
    :cond_4
    const-string v0, "DynamiteModule"

    const-string v13, "Dynamite loader version < 2, falling back to loadModule2"

    .line 47
    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 49
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 50
    invoke-virtual {v12, v0, v3, v14, v5}, Lcom/google/android/gms/dynamite/zzq;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 51
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 52
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 53
    invoke-direct {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    :goto_3
    move-object v0, v5

    goto/16 :goto_a

    .line 51
    :cond_5
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to get module context"

    move-object/from16 v12, v18

    .line 52
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_2
    move-exception v0

    .line 41
    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    .line 36
    :cond_6
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "No result cursor"

    const/4 v12, 0x0

    .line 37
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    .line 34
    :cond_7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "DynamiteLoaderV2 was not cached."

    const/4 v12, 0x0

    .line 35
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_3
    move-exception v0

    .line 34
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    .line 50
    :cond_8
    const-string v5, "DynamiteModule"

    new-instance v12, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Selected remote version of "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", version >= "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/dynamite/zzp;->zze()I

    move-result v12

    const/4 v15, 0x3

    if-lt v12, v15, :cond_a

    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzm;

    if-eqz v0, :cond_9

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v12

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 25
    invoke-virtual {v5, v12, v3, v14, v0}, Lcom/google/android/gms/dynamite/zzp;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_4

    .line 21
    :cond_9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "No cached result cursor holder"

    const/4 v12, 0x0

    .line 22
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    :cond_a
    if-ne v12, v13, :cond_b

    .line 32
    const-string v0, "DynamiteModule"

    const-string v12, "IDynamite loader version = 2"

    .line 26
    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {v5, v0, v3, v14}, Lcom/google/android/gms/dynamite/zzp;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v0, "DynamiteModule"

    const-string v12, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 28
    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {v5, v0, v3, v14}, Lcom/google/android/gms/dynamite/zzp;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 30
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 31
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 32
    check-cast v0, Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 30
    :cond_c
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to load remote module."

    const/4 v12, 0x0

    .line 31
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    .line 18
    :cond_d
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to create IDynamiteLoader."

    const/4 v12, 0x0

    .line 19
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    .line 14
    :cond_e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to determine which loading route to use."

    const/4 v12, 0x0

    .line 15
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 12
    :cond_f
    :try_start_e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Remote loading disabled"

    const/4 v12, 0x0

    .line 13
    invoke-direct {v0, v5, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    .line 14
    :goto_5
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 54
    :goto_6
    :try_start_10
    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v12, "Failed to load remote module."

    const/4 v13, 0x0

    .line 55
    invoke-direct {v5, v12, v0, v13}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw v5

    :catch_2
    move-exception v0

    goto :goto_9

    .line 56
    :goto_7
    throw v0

    .line 63
    :goto_8
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v12, "Failed to load remote module."

    const/4 v13, 0x0

    .line 57
    invoke-direct {v5, v12, v0, v13}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw v5
    :try_end_10
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 10
    :goto_9
    :try_start_11
    const-string v5, "DynamiteModule"

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to load remote module: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v5, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v5, :cond_12

    new-instance v8, Lcom/google/android/gms/dynamite/zzn;

    const/4 v12, 0x0

    invoke-direct {v8, v5, v12}, Lcom/google/android/gms/dynamite/zzn;-><init>(II)V

    .line 60
    invoke-interface {v2, v1, v3, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v1

    .line 61
    iget v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 63
    invoke-static {v4, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_a
    cmp-long v1, v10, v16

    if-nez v1, :cond_10

    .line 64
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_b

    .line 68
    :cond_10
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 66
    invoke-virtual {v1, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :goto_b
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_11

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    .line 41
    :cond_12
    :try_start_12
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    const/4 v12, 0x0

    .line 62
    invoke-direct {v1, v2, v0, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw v1

    .line 69
    :cond_13
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionPolicy returned invalid code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0

    .line 70
    :cond_14
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 69
    iget v1, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v2, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No acceptable module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found. Local version is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_5
    move-exception v0

    const-wide/16 v16, 0x0

    :goto_c
    cmp-long v1, v10, v16

    if-nez v1, :cond_15

    .line 29
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_d

    .line 62
    :cond_15
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 66
    invoke-virtual {v1, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :goto_d
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_16

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    throw v0

    .line 1
    :cond_17
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string/jumbo v1, "null application Context"

    const/4 v12, 0x0

    .line 2
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 10

    .line 1
    :try_start_0
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_9

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "sClassLoader"

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v5, v6, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    if-eqz v5, :cond_1

    .line 7
    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v3

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_10

    :cond_2
    :try_start_7
    sget-boolean v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    if-nez v5, :cond_8

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    .line 12
    :try_start_8
    invoke-static {p0, p1, p2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v6

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eqz v7, :cond_5

    goto :goto_0

    .line 24
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_6

    .line 16
    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule$$ExternalSyntheticApiModelOutline1;->m()V

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;

    move-result-object v7

    goto :goto_0

    .line 18
    :cond_6
    new-instance v7, Lcom/google/android/gms/dynamite/zzc;

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 19
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/dynamite/zzc;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_8
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 24
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v6

    .line 14
    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return v6

    .line 22
    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 11
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_3
    monitor-exit v4

    goto :goto_6

    :goto_4
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    .line 26
    :goto_5
    :try_start_f
    const-string v4, "DynamiteModule"

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load module via V2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_6
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 26
    :cond_9
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 27
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v0, :cond_a

    .line 47
    :try_start_11
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_11
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    return p0

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move-object p1, v0

    .line 23
    :try_start_12
    const-string p2, "DynamiteModule"

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 28
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-nez v4, :cond_b

    goto/16 :goto_e

    .line 29
    :cond_b
    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/dynamite/zzp;->zze()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzm;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto/16 :goto_e

    :catch_6
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c

    .line 31
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v6, p1

    move v7, p2

    .line 32
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/dynamite/zzp;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz p1, :cond_10

    .line 34
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_8

    .line 37
    :cond_d
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_e

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v0, :cond_e

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object p2, v0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object p2, v0

    goto :goto_a

    :cond_e
    move-object v2, p1

    :goto_7
    if-eqz v2, :cond_f

    .line 36
    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_f
    move v3, p2

    goto :goto_e

    .line 34
    :cond_10
    :goto_8
    :try_start_16
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz p1, :cond_13

    .line 36
    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_e

    :goto_9
    move-object v2, p1

    goto :goto_f

    :goto_a
    move-object v2, p1

    goto :goto_d

    :cond_11
    move-object v6, p1

    move v7, p2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_12

    :try_start_18
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version = 2, no high precision latency measurement."

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 42
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/android/gms/dynamite/zzp;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3

    goto :goto_e

    :cond_12
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v4, p1, v6, v7}, Lcom/google/android/gms/dynamite/zzp;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_e

    :goto_b
    move-object p2, p1

    goto :goto_f

    :goto_c
    move-object p2, p1

    .line 48
    :goto_d
    :try_start_19
    const-string p1, "DynamiteModule"

    .line 45
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v2, :cond_13

    .line 36
    :try_start_1a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_e
    return v3

    :catchall_4
    move-exception v0

    move-object p1, v0

    goto :goto_b

    :goto_f
    if-eqz v2, :cond_14

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_14
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 26
    :goto_10
    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 49
    :goto_11
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 50
    throw p1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 12

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "api_force_staging"

    const-string v4, "api"

    const/4 v5, 0x1

    if-eq v5, p2, :cond_0

    move-object v0, v4

    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    .line 2
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 3
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "com.google.android.gms.chimera"

    .line 4
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo p2, "requestStartUptime"

    .line 7
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x2

    const/4 p1, 0x0

    if-nez v6, :cond_1

    :goto_0
    move-object v3, v1

    goto/16 :goto_7

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p2, :cond_2

    .line 24
    :catch_0
    :try_start_2
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e

    .line 11
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 12
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    new-instance v3, Landroid/database/MatrixCursor;

    .line 13
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v4, p1

    :goto_1
    if-ge v4, v0, :cond_a

    .line 14
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 15
    new-array v7, v2, [Ljava/lang/Object;

    move v8, p1

    :goto_2
    if-ge v8, v2, :cond_8

    .line 16
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    if-eqz v9, :cond_7

    if-eq v9, v5, :cond_6

    if-eq v9, p0, :cond_5

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 17
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 26
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Unknown column type"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 19
    :cond_5
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 20
    :cond_6
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    .line 21
    :cond_7
    aput-object v1, v7, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 25
    :cond_9
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Cursor read incomplete (ContentProvider dead?)"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :cond_a
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    :try_start_5
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_6

    .line 10
    :goto_4
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_7
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 24
    :goto_6
    :try_start_8
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 27
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    if-eqz v3, :cond_12

    .line 28
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 31
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_e

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 32
    :try_start_a
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    const-string/jumbo p0, "loaderVersion"

    .line 33
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_b

    .line 34
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    sput p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_b
    :goto_8
    const-string p0, "disableStandaloneDynamiteLoader2"

    .line 35
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_d

    .line 36
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_9

    :cond_c
    move v5, p1

    :goto_9
    sput-boolean v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    move p1, v5

    .line 37
    :cond_d
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 38
    :try_start_b
    invoke-static {v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz p0, :cond_e

    move-object v3, v1

    goto :goto_b

    .line 37
    :goto_a
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw p0

    :cond_e
    :goto_b
    if-eqz p3, :cond_10

    if-nez p1, :cond_f

    goto :goto_d

    :cond_f
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "forcing fallback to container DynamiteLoader impl"

    .line 40
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :goto_c
    move-object v1, v3

    goto :goto_10

    :cond_10
    :goto_d
    if-eqz v3, :cond_11

    .line 39
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    return p2

    .line 28
    :cond_12
    :try_start_e
    const-string p0, "DynamiteModule"

    const-string p1, "Failed to retrieve remote module version."

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to connect to dynamite module ContentResolver."

    .line 30
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzo;)V

    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_e
    move-object v3, v1

    .line 24
    :goto_f
    :try_start_f
    instance-of p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p1, :cond_13

    .line 42
    throw p0

    .line 26
    :cond_13
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "V2 version check failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_10
    if-eqz v1, :cond_14

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_14
    throw p0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DynamiteModule"

    const-string v1, "Selected local version of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static zzd(Ljava/lang/ClassLoader;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lcom/google/android/gms/dynamite/zzq;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_0
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzq;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :goto_1
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    .line 4
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw v1
.end method

.method private static zze(Landroid/database/Cursor;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzm;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzm;->zza:Landroid/database/Cursor;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    const-string v1, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v4

    if-eq v2, v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x10000000

    :goto_0
    const-string v5, "com.google.android.gms.chimera"

    .line 4
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    const v5, 0x989680

    .line 6
    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "com.google.android.gms"

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v3, v2

    .line 5
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 9
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_4

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_4

    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    :cond_4
    if-nez v3, :cond_5

    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzp;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x3

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 9
    :cond_1
    const-string v2, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/dynamite/zzp;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Lcom/google/android/gms/dynamite/zzp;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/google/android/gms/dynamite/zzp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/dynamite/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-eqz v2, :cond_3

    .line 5
    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 9
    :goto_1
    const-string v2, "DynamiteModule"

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzo;)V

    throw v1
.end method
