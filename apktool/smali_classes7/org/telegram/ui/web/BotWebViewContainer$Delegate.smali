.class public interface abstract Lorg/telegram/ui/web/BotWebViewContainer$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/BotWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getBotSensors()Lorg/telegram/ui/bots/BotSensors;
.end method

.method public abstract isClipboardAvailable()Z
.end method

.method public abstract onCloseRequested(Ljava/lang/Runnable;)V
.end method

.method public abstract onCloseToTabs()V
.end method

.method public abstract onEmojiStatusGranted(Z)V
.end method

.method public abstract onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract onFullscreenRequested(ZZ)Ljava/lang/String;
.end method

.method public abstract onInstantClose()V
.end method

.method public abstract onLocationGranted(Z)V
.end method

.method public abstract onOpenBackFromTabs()V
.end method

.method public abstract onOrientationLockChanged(Z)V
.end method

.method public abstract onSendWebViewData(Ljava/lang/String;)V
.end method

.method public abstract onSetBackButtonVisible(Z)V
.end method

.method public abstract onSetSettingsButtonVisible(Z)V
.end method

.method public abstract onSetupMainButton(ZZLjava/lang/String;JIIZZ)V
.end method

.method public abstract onSetupSecondaryButton(ZZLjava/lang/String;JIIZZLjava/lang/String;)V
.end method

.method public abstract onSharedTo(Ljava/util/ArrayList;)V
.end method

.method public abstract onWebAppBackgroundChanged(ZI)V
.end method

.method public abstract onWebAppExpand()V
.end method

.method public abstract onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
.end method

.method public abstract onWebAppReady()V
.end method

.method public abstract onWebAppSetActionBarColor(IIZ)V
.end method

.method public abstract onWebAppSetBackgroundColor(I)V
.end method

.method public abstract onWebAppSetNavigationBarColor(I)V
.end method

.method public abstract onWebAppSetupClosingBehavior(Z)V
.end method

.method public abstract onWebAppSwipingBehavior(Z)V
.end method

.method public abstract onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
.end method
