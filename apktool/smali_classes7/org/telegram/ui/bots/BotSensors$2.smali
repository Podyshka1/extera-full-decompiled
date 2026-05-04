.class Lorg/telegram/ui/bots/BotSensors$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private captured:[F

.field private lastTime:J

.field final synthetic this$0:Lorg/telegram/ui/bots/BotSensors;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotSensors;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 298
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/bots/BotSensors$2;->captured:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetgyroscopeListenerPostponed(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetgyroscopeListenerPostponed(Lorg/telegram/ui/bots/BotSensors;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fputgyroscopeListenerPostponed(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetpaused(Lorg/telegram/ui/bots/BotSensors;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetwebView(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->captured:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 309
    aget v2, v0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 310
    aget v2, v0, v1

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 312
    iget-wide v2, p0, Lorg/telegram/ui/bots/BotSensors$2;->lastTime:J

    sub-long/2addr v0, v2

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetgyroscopeDesiredRefreshRate(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    new-instance v2, Lorg/telegram/ui/bots/BotSensors$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotSensors$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotSensors$2;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fputgyroscopeListenerPostponed(Lorg/telegram/ui/bots/BotSensors;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetgyroscopeDesiredRefreshRate(Lorg/telegram/ui/bots/BotSensors;)J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 317
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotSensors$2;->post()V

    :cond_3
    :goto_0
    return-void
.end method

.method public post()V
    .locals 8

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetwebView(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->lastTime:J

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->captured:[F

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 326
    const-string v5, "x"

    aget v6, v0, v3

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 327
    const-string v5, "y"

    aget v6, v0, v2

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 328
    const-string v5, "z"

    aget v0, v0, v1

    float-to-double v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->this$0:Lorg/telegram/ui/bots/BotSensors;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotSensors;->-$$Nest$fgetwebView(Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window.Telegram.WebView.receiveEvent(\'gyroscope_changed\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ");"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotSensors$2;->captured:[F

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 336
    aput v4, v0, v2

    .line 337
    aput v4, v0, v1

    return-void
.end method
