.class public final synthetic Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ICallableMethod;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->$r8$lambda$KxdPSHHi4P36JuTFyEeLefcE18Y(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
