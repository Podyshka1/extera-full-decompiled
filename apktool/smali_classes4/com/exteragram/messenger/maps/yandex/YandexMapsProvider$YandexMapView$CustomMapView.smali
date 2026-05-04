.class Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;
.super Lcom/yandex/mapkit/mapview/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMapView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;


# direct methods
.method public static synthetic $r8$lambda$t-ERCIB4msIyYXyFRBMfEqRop-Q(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yQ2YZfYrgJqExPVpNYQKpwq6v9c(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->lambda$dispatchTouchEvent$0(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;Landroid/content/Context;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    .line 883
    invoke-direct {p0, p2}, Lcom/yandex/mapkit/mapview/MapView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$001(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 881
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 881
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 889
    invoke-static {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->access$101(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 897
    invoke-static {p0, p1}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->access$001(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetdispatchTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetdispatchTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;)V

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p1

    return p1

    .line 891
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetinterceptTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {v0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetinterceptTouchInterceptor(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;)V

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p1

    return p1

    .line 899
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 904
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 905
    iget-object p2, p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetonLayoutListener(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 906
    iget-object p2, p1, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView$CustomMapView;->this$1:Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;

    invoke-static {p2}, Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;->-$$Nest$fgetonLayoutListener(Lcom/exteragram/messenger/maps/yandex/YandexMapsProvider$YandexMapView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
