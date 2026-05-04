.class public interface abstract Lorg/telegram/messenger/pip/source/IPipSourceDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract pipCreatePictureInPictureView()Landroid/view/View;
.end method

.method public abstract pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
.end method

.method public abstract pipIsAvailable()Z
.end method

.method public abstract pipRenderBackground(Landroid/graphics/Canvas;)V
.end method

.method public abstract pipRenderForeground(Landroid/graphics/Canvas;)V
.end method

.method public abstract pipShowPrimaryWindowView(Ljava/lang/Runnable;)V
.end method
