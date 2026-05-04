.class Lorg/telegram/ui/web/BotWebViewContainer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1438
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 1439
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    .line 1441
    aget-object p3, p3, v1

    check-cast p3, [I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_1

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1446
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$mopenQrScanActivity(Lorg/telegram/ui/web/BotWebViewContainer;)V

    return-void

    .line 1449
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "scan_qr_popup_closed"

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
