.class public final Lcom/google/android/gms/cast/framework/zzac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/cast/framework/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "DiscoveryManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/zzac;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/framework/zzaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzac;->zzb:Lcom/google/android/gms/cast/framework/zzaq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzac;->zzb:Lcom/google/android/gms/cast/framework/zzaq;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzaq;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/zzac;->zza:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/zzaq;

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
