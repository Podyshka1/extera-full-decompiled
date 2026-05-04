.class public Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMapView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YandexMapView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;
    }
.end annotation


# instance fields
.field private dispatchTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private interceptTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

.field private mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

.field private mapView:Lcom/yandex/mapkit/mapview/MapView;

.field private onLayoutListener:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;


# direct methods
.method public static synthetic $r8$lambda$0eZYrohGIn8dxG75QpetpCG-7mU(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->lambda$getMapAsync$0(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdispatchTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->dispatchTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterceptTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->interceptTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonLayoutListener(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->onLayoutListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;Landroid/content/Context;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    new-instance p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;

    invoke-direct {p1, p0, p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    return-void
.end method

.method private findGlSurfaceView(Landroid/view/View;)V
    .locals 2

    .line 870
    instance-of v0, p1, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 871
    move-object v0, p1

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 874
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 875
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 876
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->findGlSurfaceView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$getMapAsync$0(Landroidx/core/util/Consumer;)V
    .locals 2

    .line 801
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;-><init>(Lcom/yandex/mapkit/mapview/MapView;)V

    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    .line 802
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->findGlSurfaceView(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getGlSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getMapAsync(Landroidx/core/util/Consumer;)V
    .locals 1

    .line 800
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;Landroidx/core/util/Consumer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 817
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mapkit/MapKit;->onStart()V

    .line 818
    iget-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {p1}, Lcom/yandex/mapkit/mapview/MapView;->onStart()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    invoke-virtual {v0}, Lcom/yandex/mapkit/mapview/MapView;->onStop()V

    .line 824
    invoke-static {}, Lcom/yandex/mapkit/MapKitFactory;->getInstance()Lcom/yandex/mapkit/MapKit;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/MapKit;->onStop()V

    const/4 v0, 0x0

    .line 826
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->dispatchTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    .line 827
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->interceptTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    .line 828
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->onLayoutListener:Ljava/lang/Runnable;

    .line 830
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V

    .line 831
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v1

    .line 832
    instance-of v2, v1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    .line 833
    invoke-virtual {v1}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->checkDisposal()V

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    invoke-virtual {v1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;->onDestroy()V

    .line 837
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapImpl:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapImpl;

    .line 839
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 840
    iput-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->mapView:Lcom/yandex/mapkit/mapview/MapView;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setOnDispatchTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->dispatchTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    return-void
.end method

.method public setOnInterceptTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->interceptTouchInterceptor:Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    return-void
.end method

.method public setOnLayoutListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->onLayoutListener:Ljava/lang/Runnable;

    return-void
.end method
