.class public Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YandexMapImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexCircle;
    }
.end annotation


# instance fields
.field private final cameraListener:Lcom/yandex/mapkit/map/CameraListener;

.field private final circles:Ljava/util/HashMap;

.field private locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

.field private final mapObjects:Lcom/yandex/mapkit/map/MapObjectCollection;

.field private mapView:Lcom/yandex/mapkit/mapview/MapView;

.field private markerClickListener:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

.field private final markers:Ljava/util/HashMap;

.field private moving:Z

.field private onCameraIdleListener:Ljava/lang/Runnable;

.field private onCameraMoveListener:Ljava/lang/Runnable;

.field private onCameraMoveStartedListener:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

.field private final styleUpdater:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;

.field private userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;


# direct methods
.method public static synthetic $r8$lambda$CWXSQ-3qx2XHU1ntuCfmpWjfh-c(Ljava/lang/Runnable;Lcom/yandex/mapkit/map/MapLoadStatistics;)V
    .locals 0

    .line 366
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$HEFBRhUUZGjponxt4riLaZ6dWVo(Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    invoke-interface {p0}, Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;->onFinish()V

    return-void

    .line 280
    :cond_0
    invoke-interface {p0}, Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;->onCancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$Heckx95mZn5Wsn9DrE9DuykQWFA(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/MapObject;Lcom/yandex/mapkit/geometry/Point;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->lambda$new$0(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/MapObject;Lcom/yandex/mapkit/geometry/Point;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v9qaA1xgymCYcREiGYSz90AH7Zw(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/CameraPosition;Lcom/yandex/mapkit/map/CameraUpdateReason;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->lambda$new$1(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/CameraPosition;Lcom/yandex/mapkit/map/CameraUpdateReason;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcircles(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->circles:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapView(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)Lcom/yandex/mapkit/mapview/MapView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmarkers(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markers:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/yandex/mapkit/mapview/MapView;)V
    .locals 4

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->circles:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markers:Ljava/util/HashMap;

    .line 179
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    .line 180
    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/Map;->getMapObjects()Lcom/yandex/mapkit/map/RootMapObjectCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapObjects:Lcom/yandex/mapkit/map/MapObjectCollection;

    .line 182
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)V

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->styleUpdater:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;

    .line 184
    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    const/4 v0, 0x1

    .line 185
    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setScrollGesturesEnabled(Z)V

    .line 186
    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setRotateGesturesEnabled(Z)V

    .line 187
    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setZoomGesturesEnabled(Z)V

    .line 188
    invoke-interface {p1}, Lcom/yandex/mapkit/map/Map;->getLogo()Lcom/yandex/mapkit/logo/Logo;

    move-result-object v0

    new-instance v1, Lcom/yandex/mapkit/logo/Alignment;

    sget-object v2, Lcom/yandex/mapkit/logo/HorizontalAlignment;->LEFT:Lcom/yandex/mapkit/logo/HorizontalAlignment;

    sget-object v3, Lcom/yandex/mapkit/logo/VerticalAlignment;->BOTTOM:Lcom/yandex/mapkit/logo/VerticalAlignment;

    invoke-direct {v1, v2, v3}, Lcom/yandex/mapkit/logo/Alignment;-><init>(Lcom/yandex/mapkit/logo/HorizontalAlignment;Lcom/yandex/mapkit/logo/VerticalAlignment;)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/logo/Logo;->setAlignment(Lcom/yandex/mapkit/logo/Alignment;)V

    .line 189
    invoke-interface {p1}, Lcom/yandex/mapkit/map/Map;->getMapObjects()Lcom/yandex/mapkit/map/RootMapObjectCollection;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/Map;)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/MapObject;->addTapListener(Lcom/yandex/mapkit/map/MapObjectTapListener;)V

    .line 191
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)V

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->cameraListener:Lcom/yandex/mapkit/map/CameraListener;

    .line 212
    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->addCameraListener(Lcom/yandex/mapkit/map/CameraListener;)V

    return-void
.end method

.method private interceptObjectTap(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/MapObject;Lcom/yandex/mapkit/geometry/Point;)Z
    .locals 1

    .line 226
    instance-of p1, p2, Lcom/yandex/mapkit/map/PlacemarkMapObject;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    check-cast p2, Lcom/yandex/mapkit/map/PlacemarkMapObject;

    .line 229
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;

    if-nez p1, :cond_0

    .line 231
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;

    invoke-direct {p1, p0, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/PlacemarkMapObject;)V

    .line 232
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    iget-object p2, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markerClickListener:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    if-nez p2, :cond_1

    return p3

    .line 237
    :cond_1
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;->onClick(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z

    move-result p1

    return p1

    :cond_2
    return p3
.end method

.method private synthetic lambda$new$0(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/MapObject;Lcom/yandex/mapkit/geometry/Point;)Z
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->interceptObjectTap(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/MapObject;Lcom/yandex/mapkit/geometry/Point;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$1(Lcom/yandex/mapkit/map/Map;Lcom/yandex/mapkit/map/CameraPosition;Lcom/yandex/mapkit/map/CameraUpdateReason;Z)V
    .locals 0

    .line 192
    iget-boolean p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->moving:Z

    if-nez p1, :cond_2

    if-nez p4, :cond_2

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->moving:Z

    .line 194
    iget-object p2, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveStartedListener:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    if-eqz p2, :cond_2

    .line 195
    sget-object p2, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$1;->$SwitchMap$com$yandex$mapkit$map$CameraUpdateReason:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p1

    .line 199
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveStartedListener:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;->onCameraMoveStarted(I)V

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_3
    iget-boolean p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->moving:Z

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->moving:Z

    .line 207
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraIdleListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 208
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method


# virtual methods
.method public addCircle(Lorg/telegram/messenger/IMapsProvider$ICircleOptions;)Lorg/telegram/messenger/IMapsProvider$ICircle;
    .locals 5

    .line 420
    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;

    .line 421
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapObjects:Lcom/yandex/mapkit/map/MapObjectCollection;

    new-instance v1, Lcom/yandex/mapkit/geometry/Circle;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;->-$$Nest$fgetcenter(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v2

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;->-$$Nest$fgetradius(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/yandex/mapkit/geometry/Circle;-><init>(Lcom/yandex/mapkit/geometry/Point;F)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/MapObjectCollection;->addCircle(Lcom/yandex/mapkit/geometry/Circle;)Lcom/yandex/mapkit/map/CircleMapObject;

    move-result-object v0

    .line 424
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;->-$$Nest$fgetstrokeColor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/CircleMapObject;->setStrokeColor(I)V

    .line 425
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;->-$$Nest$fgetstrokeWidth(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/CircleMapObject;->setStrokeWidth(F)V

    .line 426
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;->-$$Nest$fgetfillColor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/CircleMapObject;->setFillColor(I)V

    .line 428
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexCircle;

    invoke-direct {p1, p0, v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexCircle;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/CircleMapObject;)V

    .line 429
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->circles:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 5

    .line 402
    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;

    .line 403
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapObjects:Lcom/yandex/mapkit/map/MapObjectCollection;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgetposition(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/MapObjectCollection;->addPlacemark(Lcom/yandex/mapkit/geometry/Point;)Lcom/yandex/mapkit/map/PlacemarkMapObject;

    move-result-object v0

    .line 404
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgeticon(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgeticon(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/runtime/image/ImageProvider;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/yandex/runtime/image/ImageProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setIcon(Lcom/yandex/runtime/image/ImageProvider;)V

    .line 408
    :cond_0
    new-instance v1, Lcom/yandex/mapkit/map/IconStyle;

    invoke-direct {v1}, Lcom/yandex/mapkit/map/IconStyle;-><init>()V

    .line 409
    new-instance v2, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgetanchorU(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)F

    move-result v3

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgetanchorV(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/yandex/mapkit/map/IconStyle;->setAnchor(Landroid/graphics/PointF;)Lcom/yandex/mapkit/map/IconStyle;

    .line 410
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;->-$$Nest$fgetflat(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/mapkit/map/IconStyle;->setFlat(Ljava/lang/Boolean;)Lcom/yandex/mapkit/map/IconStyle;

    .line 411
    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setIconStyle(Lcom/yandex/mapkit/map/IconStyle;)V

    .line 413
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;

    invoke-direct {p1, p0, v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/PlacemarkMapObject;)V

    .line 414
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    .locals 2

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, p1, v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    return-void
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
    .locals 6

    .line 267
    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;

    .line 269
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetpoint(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/BoundingBox;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 271
    invoke-interface {p3}, Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;->onCancel()V

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    move-object p3, v0

    .line 284
    :goto_0
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetpoint(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    new-instance v2, Lcom/yandex/mapkit/map/CameraPosition;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetpoint(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v3

    .line 288
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetzoom(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetzoom(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mapkit/map/CameraPosition;->getZoom()F

    move-result p1

    :goto_1
    iget-object v4, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    .line 289
    invoke-virtual {v4}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mapkit/map/CameraPosition;->getAzimuth()F

    move-result v4

    iget-object v5, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    .line 290
    invoke-virtual {v5}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v5

    invoke-interface {v5}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mapkit/map/CameraPosition;->getTilt()F

    move-result v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/yandex/mapkit/map/CameraPosition;-><init>(Lcom/yandex/mapkit/geometry/Point;FFF)V

    new-instance p1, Lcom/yandex/mapkit/Animation;

    sget-object v3, Lcom/yandex/mapkit/Animation$Type;->SMOOTH:Lcom/yandex/mapkit/Animation$Type;

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-direct {p1, v3, p2}, Lcom/yandex/mapkit/Animation;-><init>(Lcom/yandex/mapkit/Animation$Type;F)V

    .line 285
    invoke-interface {v0, v2, p1, p3}, Lcom/yandex/mapkit/map/Map;->move(Lcom/yandex/mapkit/map/CameraPosition;Lcom/yandex/mapkit/Animation;Lcom/yandex/mapkit/map/Map$CameraCallback;)V

    return-void

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    .line 297
    invoke-virtual {v2}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/BoundingBox;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mapkit/geometry/Geometry;->fromBoundingBox(Lcom/yandex/mapkit/geometry/BoundingBox;)Lcom/yandex/mapkit/geometry/Geometry;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/yandex/mapkit/map/Map;->cameraPosition(Lcom/yandex/mapkit/geometry/Geometry;)Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object p1

    new-instance v2, Lcom/yandex/mapkit/Animation;

    sget-object v3, Lcom/yandex/mapkit/Animation$Type;->SMOOTH:Lcom/yandex/mapkit/Animation$Type;

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-direct {v2, v3, p2}, Lcom/yandex/mapkit/Animation;-><init>(Lcom/yandex/mapkit/Animation$Type;F)V

    .line 296
    invoke-interface {v0, p1, v2, p3}, Lcom/yandex/mapkit/map/Map;->move(Lcom/yandex/mapkit/map/CameraPosition;Lcom/yandex/mapkit/Animation;Lcom/yandex/mapkit/map/Map$CameraCallback;)V

    return-void
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 262
    invoke-virtual {p0, p1, v0, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    return-void
.end method

.method public getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object v0

    .line 361
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    new-instance v2, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {v0}, Lcom/yandex/mapkit/map/CameraPosition;->getTarget()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/yandex/mapkit/map/CameraPosition;->getTarget()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-virtual {v0}, Lcom/yandex/mapkit/map/CameraPosition;->getZoom()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/IMapsProvider$CameraPosition;-><init>(Lorg/telegram/messenger/IMapsProvider$LatLng;F)V

    return-object v1
.end method

.method public getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;
    .locals 2

    .line 376
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;-><init>(IIII)V

    return-object v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/Map;->getCameraBounds()Lcom/yandex/mapkit/map/CameraBounds;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/CameraBounds;->getMaxZoom()F

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/Map;->getCameraBounds()Lcom/yandex/mapkit/map/CameraBounds;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/CameraBounds;->getMinZoom()F

    move-result v0

    return v0
.end method

.method public getProjection()Lorg/telegram/messenger/IMapsProvider$IProjection;
    .locals 2

    .line 371
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexProjection;

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexProjection;-><init>(Lcom/yandex/mapkit/mapview/MapView;)V

    return-object v0
.end method

.method public getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;
    .locals 2

    .line 345
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexUISettings;

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexUISettings;-><init>(Lcom/yandex/mapkit/mapview/MapView;)V

    return-object v0
.end method

.method public moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    .locals 5

    .line 306
    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;

    .line 307
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetpoint(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    new-instance v1, Lcom/yandex/mapkit/map/CameraPosition;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetpoint(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/Point;

    move-result-object v2

    .line 309
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetzoom(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetzoom(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mapkit/map/CameraPosition;->getZoom()F

    move-result p1

    :goto_0
    iget-object v3, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v3}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v3

    invoke-interface {v3}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mapkit/map/CameraPosition;->getAzimuth()F

    move-result v3

    iget-object v4, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v4}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/mapkit/map/Map;->getCameraPosition()Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mapkit/map/CameraPosition;->getTilt()F

    move-result v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/yandex/mapkit/map/CameraPosition;-><init>(Lcom/yandex/mapkit/geometry/Point;FFF)V

    .line 308
    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/Map;->move(Lcom/yandex/mapkit/map/CameraPosition;)V

    return-void

    .line 311
    :cond_1
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;->-$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;)Lcom/yandex/mapkit/geometry/BoundingBox;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mapkit/geometry/Geometry;->fromBoundingBox(Lcom/yandex/mapkit/geometry/BoundingBox;)Lcom/yandex/mapkit/geometry/Geometry;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/yandex/mapkit/map/Map;->cameraPosition(Lcom/yandex/mapkit/geometry/Geometry;)Lcom/yandex/mapkit/map/CameraPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/Map;->move(Lcom/yandex/mapkit/map/CameraPosition;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraIdleListener:Ljava/lang/Runnable;

    .line 217
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveStartedListener:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    .line 218
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveListener:Ljava/lang/Runnable;

    .line 219
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markerClickListener:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    .line 220
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    .line 222
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    return-void
.end method

.method public setLogoPadding(II)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/map/Map;->getLogo()Lcom/yandex/mapkit/logo/Logo;

    move-result-object v0

    new-instance v1, Lcom/yandex/mapkit/logo/Padding;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mapkit/logo/Padding;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/logo/Logo;->setPadding(Lcom/yandex/mapkit/logo/Padding;)V

    return-void
.end method

.method public setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V
    .locals 1

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setNightModeEnabled(Z)V

    return-void

    .line 396
    :cond_0
    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapStyleOptions;

    .line 397
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapStyleOptions;->isNightMode()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/Map;->setNightModeEnabled(Z)V

    return-void
.end method

.method public setMapType(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    sget-object v0, Lcom/yandex/mapkit/map/MapType;->HYBRID:Lcom/yandex/mapkit/map/MapType;

    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setMapType(Lcom/yandex/mapkit/map/MapType;)V

    return-void

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    sget-object v0, Lcom/yandex/mapkit/map/MapType;->SATELLITE:Lcom/yandex/mapkit/map/MapType;

    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setMapType(Lcom/yandex/mapkit/map/MapType;)V

    return-void

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object p1

    sget-object v0, Lcom/yandex/mapkit/map/MapType;->MAP:Lcom/yandex/mapkit/map/MapType;

    invoke-interface {p1, v0}, Lcom/yandex/mapkit/map/Map;->setMapType(Lcom/yandex/mapkit/map/MapType;)V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 329
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v1}, Lcom/yandex/mapkit/mapview/MapView;->getMapWindow()Lcom/yandex/mapkit/map/MapWindow;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/MapKit;->createUserLocationLayer(Lcom/yandex/mapkit/map/MapWindow;)Lcom/yandex/mapkit/user_location/UserLocationLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;

    const/4 v1, 0x0

    .line 330
    invoke-interface {v0, v1}, Lcom/yandex/mapkit/user_location/UserLocationLayer;->setAutoZoomEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/user_location/UserLocationLayer;->setHeadingModeActive(Z)V

    .line 332
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->styleUpdater:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$LocationListener;

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/user_location/UserLocationLayer;->setObjectListener(Lcom/yandex/mapkit/user_location/UserLocationObjectListener;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->userLocationLayer:Lcom/yandex/mapkit/user_location/UserLocationLayer;

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0, p1}, Lcom/yandex/mapkit/user_location/UserLocationLayer;->setVisible(Z)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V

    :cond_2
    return-void
.end method

.method public setOnCameraIdleListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraIdleListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCameraMoveListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCameraMoveStartedListener(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onCameraMoveStartedListener:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    return-void
.end method

.method public setOnMapLoadedCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->getMap()Lcom/yandex/mapkit/map/Map;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/Map;->setMapLoadedListener(Lcom/yandex/mapkit/map/MapLoadedListener;)V

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->markerClickListener:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    return-void
.end method

.method public setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V
    .locals 2

    .line 435
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    .line 436
    instance-of v1, v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    .line 443
    :cond_1
    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$$ExternalSyntheticLambda5;-><init>(Landroidx/core/util/Consumer;)V

    iput-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    const/4 p1, 0x0

    .line 444
    invoke-virtual {v0, p1, v1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->requestLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    :cond_2
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 381
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
