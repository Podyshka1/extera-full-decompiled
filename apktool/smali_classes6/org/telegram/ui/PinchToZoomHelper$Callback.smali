.class public interface abstract Lorg/telegram/ui/PinchToZoomHelper$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PinchToZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getCurrentTextureView()Landroid/view/TextureView;
.end method

.method public abstract onZoomFinished(Lorg/telegram/messenger/MessageObject;)V
.end method

.method public abstract onZoomStarted(Lorg/telegram/messenger/MessageObject;)V
.end method
