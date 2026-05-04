.class public Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YandexMarker"
.end annotation


# instance fields
.field private final placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

.field final synthetic this$0:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;


# direct methods
.method public constructor <init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;Lcom/yandex/mapkit/map/PlacemarkMapObject;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    return-void
.end method


# virtual methods
.method public getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 5

    .line 547
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->getGeometry()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v3}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->getGeometry()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v0}, Lcom/yandex/mapkit/map/MapObject;->getUserData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v0}, Lcom/yandex/mapkit/map/MapObject;->getParent()Lcom/yandex/mapkit/map/BaseMapObjectCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/BaseMapObjectCollection;->remove(Lcom/yandex/mapkit/map/MapObject;)V

    .line 573
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    invoke-static {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->-$$Nest$fgetmarkers(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yandex/runtime/image/ImageProvider;->fromResource(Landroid/content/Context;I)Lcom/yandex/runtime/image/ImageProvider;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setIcon(Lcom/yandex/runtime/image/ImageProvider;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-static {p1}, Lcom/yandex/runtime/image/ImageProvider;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/yandex/runtime/image/ImageProvider;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setIcon(Lcom/yandex/runtime/image/ImageProvider;)V

    return-void
.end method

.method public setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    new-instance v1, Lcom/yandex/mapkit/geometry/Point;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/mapkit/geometry/Point;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setGeometry(Lcom/yandex/mapkit/geometry/Point;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/PlacemarkMapObject;->setDirection(F)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl$YandexMarker;->placemark:Lcom/yandex/mapkit/map/PlacemarkMapObject;

    invoke-interface {v0, p1}, Lcom/yandex/mapkit/map/MapObject;->setUserData(Ljava/lang/Object;)V

    return-void
.end method
