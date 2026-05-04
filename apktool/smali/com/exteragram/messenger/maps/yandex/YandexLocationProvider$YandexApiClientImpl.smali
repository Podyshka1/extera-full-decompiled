.class public final Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "YandexApiClientImpl"
.end annotation


# instance fields
.field private final connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

.field private final failedListener:Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;

.field final synthetic this$0:Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$bIEEKpT1xCYcyKmf2EDzldreai8(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->lambda$connect$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o1h4b5xjrzj7eamtVzypWRfy1VE(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->lambda$disconnect$1()V

    return-void
.end method

.method private constructor <init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

    .line 192
    iput-object p3, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->failedListener:Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)V

    return-void
.end method

.method private synthetic lambda$connect$0()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    invoke-virtual {v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->getLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/location/LocationManager;->resume()V

    .line 199
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$disconnect$1()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    invoke-virtual {v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->getLocationManager()Lcom/yandex/mapkit/location/LocationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mapkit/location/LocationManager;->suspend()V

    .line 207
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;->this$0:Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;

    invoke-virtual {v0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;->checkDisposal()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 197
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;)V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 205
    new-instance v0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexApiClientImpl;)V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/AppUtils;->ensureRunningOnUi(Ljava/lang/Runnable;)V

    return-void
.end method
