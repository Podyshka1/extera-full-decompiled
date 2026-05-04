.class public interface abstract Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ImageUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageUpdaterDelegate"
.end annotation


# virtual methods
.method public abstract canFinishFragment()Z
.end method

.method public abstract didStartUpload(ZZ)V
.end method

.method public abstract didUploadFailed()V
.end method

.method public abstract didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
.end method

.method public abstract getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
.end method

.method public abstract getInitialSearchString()Ljava/lang/String;
.end method

.method public abstract onUploadProgressChanged(F)V
.end method

.method public abstract supportsBulletin()Z
.end method
