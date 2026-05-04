.class public interface abstract Lorg/telegram/messenger/voip/VoIPService$StateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onAudioSettingsChanged()V
.end method

.method public abstract onCameraFirstFrameAvailable()V
.end method

.method public abstract onCameraSwitch(Z)V
.end method

.method public abstract onMediaStateUpdated(II)V
.end method

.method public abstract onScreenOnChange(Z)V
.end method

.method public abstract onSignalBarsCountChanged(I)V
.end method

.method public abstract onStateChanged(I)V
.end method

.method public abstract onVideoAvailableChange(Z)V
.end method
