.class public final Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ICircle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GoogleCircle"
.end annotation


# instance fields
.field private circle:Lcom/google/android/gms/maps/model/Circle;

.field final synthetic this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Circle;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p2, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Circle;Lorg/telegram/messenger/GoogleMapsProvider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;-><init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;Lcom/google/android/gms/maps/model/Circle;)V

    return-void
.end method


# virtual methods
.method public getRadius()D
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 2

    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 372
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;->-$$Nest$fgetimplToAbsCircleMap(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCenter(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    .locals 6

    .line 366
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    return-void
.end method

.method public setRadius(D)V
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapImpl$GoogleCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

    return-void
.end method
