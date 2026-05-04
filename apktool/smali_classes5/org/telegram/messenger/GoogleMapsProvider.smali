.class public Lorg/telegram/messenger/GoogleMapsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBoundsBuilder;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapStyleOptions;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleMarkerOptions;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleCircleOptions;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleUISettings;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleProjection;,
        Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstallMapsString()I
    .locals 1

    .line 84
    sget v0, Lorg/telegram/messenger/R$string;->InstallGoogleMaps:I

    return v0
.end method

.method public getMapsAppPackageName()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "com.google.android.apps.maps"

    return-object v0
.end method

.method public initializeMaps(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    return-void
.end method

.method public isApplicationRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;
    .locals 1

    .line 74
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapStyleOptions;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapStyleOptions;-><init>(Lcom/google/android/gms/maps/model/MapStyleOptions;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    .line 54
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;-><init>(Lcom/google/android/gms/maps/CameraUpdate;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 1

    .line 64
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;

    check-cast p1, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;

    invoke-static {p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;->-$$Nest$fgetbounds(Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;-><init>(Lcom/google/android/gms/maps/CameraUpdate;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    .line 59
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCameraUpdate;-><init>(Lcom/google/android/gms/maps/CameraUpdate;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public onCreateCircleOptions()Lorg/telegram/messenger/IMapsProvider$ICircleOptions;
    .locals 2

    .line 104
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCircleOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleCircleOptions;-><init>(Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;
    .locals 2

    .line 69
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBoundsBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleLatLngBoundsBuilder;-><init>(Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;
    .locals 2

    .line 49
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 2

    .line 99
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMarkerOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMarkerOptions;-><init>(Lorg/telegram/messenger/GoogleMapsProvider-IA;)V

    return-object v0
.end method

.method public supportsOtherMapTypes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
