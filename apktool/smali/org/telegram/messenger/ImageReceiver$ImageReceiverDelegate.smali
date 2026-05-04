.class public interface abstract Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageReceiverDelegate"
.end annotation


# virtual methods
.method public abstract didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
.end method

.method public abstract didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
.end method
