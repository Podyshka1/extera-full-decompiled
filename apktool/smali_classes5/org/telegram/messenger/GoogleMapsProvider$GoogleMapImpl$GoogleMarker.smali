.class public final Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GoogleMarker"
.end annotation


# instance fields
.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field final synthetic this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Marker;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;-><init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method


# virtual methods
.method public getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 6

    .line 306
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 307
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 333
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;->-$$Nest$fgetimplToAbsMarkerMap(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    .locals 6

    .line 312
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    return-void
.end method
