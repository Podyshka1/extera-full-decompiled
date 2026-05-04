.class public final Lcom/google/android/gms/maps/Projection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/maps/internal/IProjectionDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/internal/IProjectionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/Projection;->zza:Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    return-void
.end method


# virtual methods
.method public toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/Projection;->zza:Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IProjectionDelegate;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
