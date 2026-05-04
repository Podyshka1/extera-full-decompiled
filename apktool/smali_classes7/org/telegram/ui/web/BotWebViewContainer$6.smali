.class Lorg/telegram/ui/web/BotWebViewContainer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer;->openQrScanActivity()V
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

    .line 3052
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindMrzInfo(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public didFindQr(Ljava/lang/String;)V
    .locals 4

    .line 3056
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputlastClickMs(Lorg/telegram/ui/web/BotWebViewContainer;J)V

    .line 3057
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    const-string v1, "qr_text_received"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3059
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getSubtitleText()Ljava/lang/String;
    .locals 1

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetlastQrText(Lorg/telegram/ui/web/BotWebViewContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 3

    .line 3070
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    const-string v1, "scan_qr_popup_closed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$6;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputhasQRPending(Lorg/telegram/ui/web/BotWebViewContainer;Z)V

    return-void
.end method

.method public synthetic processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$processQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
