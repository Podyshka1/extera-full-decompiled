.class public Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mapkit/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertedLocationListener"
.end annotation


# instance fields
.field private final listener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;->listener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    return-void
.end method


# virtual methods
.method public onLocationStatusUpdated(Lcom/yandex/mapkit/location/LocationStatus;)V
    .locals 0

    return-void
.end method

.method public onLocationUpdated(Lcom/yandex/mapkit/location/Location;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$ConvertedLocationListener;->listener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    invoke-static {p1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->-$$Nest$smconvertYandexLocationToAndroid(Lcom/yandex/mapkit/location/Location;)Landroid/location/Location;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
