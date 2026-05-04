.class public Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YandexLatLngBounds"
.end annotation


# instance fields
.field private final boundingBox:Lcom/yandex/mapkit/geometry/BoundingBox;


# direct methods
.method static bridge synthetic -$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;)Lcom/yandex/mapkit/geometry/BoundingBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;->boundingBox:Lcom/yandex/mapkit/geometry/BoundingBox;

    return-object p0
.end method

.method public constructor <init>(Lcom/yandex/mapkit/geometry/BoundingBox;)V
    .locals 0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;->boundingBox:Lcom/yandex/mapkit/geometry/BoundingBox;

    return-void
.end method


# virtual methods
.method public getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 8

    .line 699
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;->boundingBox:Lcom/yandex/mapkit/geometry/BoundingBox;

    invoke-virtual {v0}, Lcom/yandex/mapkit/geometry/BoundingBox;->getNorthEast()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;->boundingBox:Lcom/yandex/mapkit/geometry/BoundingBox;

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/BoundingBox;->getSouthWest()Lcom/yandex/mapkit/geometry/Point;

    move-result-object v1

    .line 701
    invoke-virtual {v0}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 702
    invoke-virtual {v0}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v0

    add-double/2addr v6, v0

    div-double/2addr v6, v4

    .line 703
    new-instance v0, Lcom/yandex/mapkit/geometry/Point;

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/yandex/mapkit/geometry/Point;-><init>(DD)V

    .line 704
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {v0}, Lcom/yandex/mapkit/geometry/Point;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/yandex/mapkit/geometry/Point;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v1
.end method
