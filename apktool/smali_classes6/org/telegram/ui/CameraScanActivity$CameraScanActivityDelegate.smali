.class public interface abstract Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CameraScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraScanActivityDelegate"
.end annotation


# virtual methods
.method public abstract didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
.end method

.method public abstract didFindQr(Ljava/lang/String;)V
.end method

.method public abstract getSubtitleText()Ljava/lang/String;
.end method

.method public abstract onDismiss()V
.end method

.method public abstract processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
.end method
