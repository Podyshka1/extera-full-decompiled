.class public Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBoundsBuilder;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapStyleOptions;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexUISettings;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexProjection;,
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;
    }
.end annotation


# static fields
.field private static final YANDEX_API_KEY:Ljava/lang/String;

.field private static isKeySet:Z

.field private static isMapsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-string/jumbo v0, "\u2001\u2002\u206a\u200c\u2000\u206e\u200c\u2000\u206e\u200f\u2000\u206e\u200f\u2000\u206a\u200b\u2000\u202f\u206d\u2000\u202f\u206b\u2000\u202f\u206a\u2000\u202f\u200b\u2000\u202f\u206d\u2000\u206a\u200a\u2000\u202f\u206c\u2000\u202f\u206f\u2000\u202f\u200b\u2000\u202f\u206d\u2000\u206a\u200c\u2000\u206d\u206f\u2000\u202f\u206f\u2000\u202f\u200b\u2000\u206a\u200b\u2000\u206e\u200a\u2000\u206e\u200a\u2000\u202f\u206f\u2000\u202f\u200b\u2000\u206e\u200a\u2000\u206e\u200f\u2000\u202f\u206f\u2000\u202f\u206e\u2000\u202f\u206f\u2000\u206a\u200b\u2000\u202f\u202f\u2000\u206e\u200f\u2000\u206e\u200a\u2000\u206e\u200a\u2000\u202f\u206a\u2000\u206a\u200b"

    invoke-static {v0}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->YANDEX_API_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isKeySet:Z

    .line 68
    sput-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isMapsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isKeySet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->YANDEX_API_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/mapkit/MapKitFactory;->setApiKey(Ljava/lang/String;)V

    .line 77
    sput-boolean v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isKeySet:Z

    .line 79
    :cond_0
    sget-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isMapsInitialized:Z

    if-nez v0, :cond_1

    .line 80
    invoke-static {p0}, Lcom/yandex/mapkit/MapKitFactory;->initialize(Landroid/content/Context;)V

    .line 81
    sput-boolean v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isMapsInitialized:Z

    :cond_1
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static terminate()V
    .locals 1

    .line 86
    sget-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isMapsInitialized:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->onTerminate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInstallMapsString()I
    .locals 1

    .line 146
    sget v0, Lorg/telegram/messenger/R$string;->InstallYandexMaps:I

    return v0
.end method

.method public getMapsAppPackageName()Ljava/lang/String;
    .locals 1

    .line 141
    const-string/jumbo v0, "ru.yandex.yandexmaps"

    return-object v0
.end method

.method public initializeMaps(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public isApplicationRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;
    .locals 1

    .line 136
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapStyleOptions;

    sget v0, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapStyleOptions;-><init>(Z)V

    return-object p1
.end method

.method public newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    .line 121
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;

    new-instance v1, Lcom/yandex/mapkit/geometry/Point;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/mapkit/geometry/Point;-><init>(DD)V

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;-><init>(Lcom/yandex/mapkit/geometry/Point;)V

    return-object v0
.end method

.method public newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 1

    .line 131
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;

    check-cast p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;->-$$Nest$fgetboundingBox(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBounds;)Lcom/yandex/mapkit/geometry/BoundingBox;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;-><init>(Lcom/yandex/mapkit/geometry/BoundingBox;I)V

    return-object v0
.end method

.method public newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    .line 126
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;

    new-instance v1, Lcom/yandex/mapkit/geometry/Point;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/mapkit/geometry/Point;-><init>(DD)V

    invoke-direct {v0, v1, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCameraUpdate;-><init>(Lcom/yandex/mapkit/geometry/Point;F)V

    return-object v0
.end method

.method public onCreateCircleOptions()Lorg/telegram/messenger/IMapsProvider$ICircleOptions;
    .locals 1

    .line 111
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexCircleOptions;-><init>()V

    return-object v0
.end method

.method public onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;
    .locals 1

    .line 116
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBoundsBuilder;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexLatLngBoundsBuilder;-><init>()V

    return-object v0
.end method

.method public onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;
    .locals 1

    .line 98
    sget-boolean v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->isMapsInitialized:Z

    if-nez v0, :cond_0

    .line 99
    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;->initialize(Landroid/content/Context;)V

    .line 101
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    .line 106
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;

    invoke-direct {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMarkerOptions;-><init>()V

    return-object v0
.end method

.method public supportsOtherMapTypes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
