.class public Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;,
        Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;,
        Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;
    }
.end annotation


# instance fields
.field private locationListeners:Ljava/util/HashMap;

.field private locationManager:Lcom/yandex/mapkit/location/LocationManager;


# direct methods
.method public static synthetic $r8$lambda$LMY6zmp-xrQTnEKn3SK6QEQVw1k(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->lambda$requestLocationUpdates$1(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TaHliI6TGoci67_RNr9JFOnr1BY(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->lambda$removeLocationUpdates$2(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hODmgpDLjebqTfgawq1JNMKU_vU(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->lambda$checkLocationSettings$3(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iu7fyOo_fC4W8Q81UidfZf0dpk0(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->lambda$getLastLocation$0(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xXJbsbpxahU0u8YeJaUWfABRc5s(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->lambda$checkDisposal$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smconvertYandexLocationToAndroid(Lcom/yandex/mapkit/location/Location;)Landroid/location/Location;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->convertYandexLocationToAndroid(Lcom/yandex/mapkit/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertYandexLocationToAndroid(Lcom/yandex/mapkit/location/Location;)Landroid/location/Location;
    .locals 3

    .line 40
    new-instance v0, Landroid/location/Location;

    const-string v1, "YandexProvider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getPosition()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 42
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getPosition()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 43
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAbsoluteTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 47
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getSpeed()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getSpeed()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getHeading()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getHeading()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/mapkit/location/Location;->getAbsoluteTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    return-object v0
.end method

.method private synthetic lambda$checkDisposal$4()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationManager:Lcom/yandex/mapkit/location/LocationManager;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lcom/yandex/mapkit/location/LocationManager;->suspend()V

    .line 129
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->onStop()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationManager:Lcom/yandex/mapkit/location/LocationManager;

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkLocationSettings$3(Landroidx/core/util/Consumer;)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->checkServices()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getLastLocation$0(Landroidx/core/util/Consumer;)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->getLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda5;-><init>(Landroidx/core/util/Consumer;)V

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;-><init>(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/location/LocationManager;->requestSingleUpdate(Lcom/yandex/mapkit/location/LocationListener;)V

    return-void
.end method

.method private synthetic lambda$removeLocationUpdates$2(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mapkit/location/LocationListener;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->getLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yandex/mapkit/location/LocationManager;->unsubscribe(Lcom/yandex/mapkit/location/LocationListener;)V

    return-void
.end method

.method private synthetic lambda$requestLocationUpdates$1(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 5

    .line 90
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;-><init>(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->getLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object v1

    new-instance v2, Lcom/yandex/mapkit/location/SubscriptionSettings;

    sget-object v3, Lcom/yandex/mapkit/location/UseInBackground;->ALLOW:Lcom/yandex/mapkit/location/UseInBackground;

    sget-object v4, Lcom/yandex/mapkit/location/Purpose;->PEDESTRIAN_NAVIGATION:Lcom/yandex/mapkit/location/Purpose;

    invoke-direct {v2, v3, v4}, Lcom/yandex/mapkit/location/SubscriptionSettings;-><init>(Lcom/yandex/mapkit/location/UseInBackground;Lcom/yandex/mapkit/location/Purpose;)V

    invoke-interface {v1, v2, v0}, Lcom/yandex/mapkit/location/LocationManager;->subscribeForLocationUpdates(Lcom/yandex/mapkit/location/SubscriptionSettings;Lcom/yandex/mapkit/location/LocationListener;)V

    .line 92
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkDisposal()V
    .locals 1

    .line 126
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;)V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkLocationSettings(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 110
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Landroidx/core/util/Consumer;)V

    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkServices()Z
    .locals 1

    .line 122
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastLocation(Landroidx/core/util/Consumer;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Landroidx/core/util/Consumer;)V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocationManager()Lcom/yandex/mapkit/location/LocationManager;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationManager:Lcom/yandex/mapkit/location/LocationManager;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->resetLocationManagerToDefault()V

    .line 70
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->createLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationManager:Lcom/yandex/mapkit/location/LocationManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationManager:Lcom/yandex/mapkit/location/LocationManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->initialize(Landroid/content/Context;)V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->locationListeners:Ljava/util/HashMap;

    return-void
.end method

.method public onCreateLocationRequest()Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;
    .locals 1

    .line 77
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;-><init>()V

    return-object v0
.end method

.method public onCreateLocationServicesAPI(Landroid/content/Context;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;
    .locals 1

    .line 117
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider-IA;)V

    return-object p1
.end method

.method public removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 0

    .line 89
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method
