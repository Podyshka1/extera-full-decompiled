.class public abstract synthetic Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getBotSensors(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Lorg/telegram/ui/bots/BotSensors;
    .locals 0

    .line 3383
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$isClipboardAvailable(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Z
    .locals 0

    .line 3371
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onCloseToTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    const/4 v0, 0x0

    .line 3279
    invoke-interface {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$onEmojiStatusGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 3315
    return-void
.end method

.method public static $default$onEmojiStatusSet(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 3316
    return-void
.end method

.method public static $default$onFullscreenRequested(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZZ)Ljava/lang/String;
    .locals 0

    .line 3379
    const-string p0, "UNSUPPORTED"

    return-object p0
.end method

.method public static $default$onInstantClose(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    const/4 v0, 0x0

    .line 3278
    invoke-interface {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$onLocationGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 3314
    return-void
.end method

.method public static $default$onOpenBackFromTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 3280
    return-void
.end method

.method public static $default$onOrientationLockChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V
    .locals 0

    .line 3283
    return-void
.end method

.method public static $default$onSendWebViewData(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 3299
    return-void
.end method

.method public static $default$onSharedTo(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/util/ArrayList;)V
    .locals 0

    .line 3281
    return-void
.end method

.method public static $default$onWebAppBackgroundChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZI)V
    .locals 0

    .line 3312
    return-void
.end method

.method public static $default$onWebAppReady(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    .line 3364
    return-void
.end method

.method public static $default$onWebAppSetNavigationBarColor(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;I)V
    .locals 0

    .line 3310
    return-void
.end method
