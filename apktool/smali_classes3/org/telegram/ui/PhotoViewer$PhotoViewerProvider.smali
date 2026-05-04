.class public interface abstract Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoViewerProvider"
.end annotation


# virtual methods
.method public abstract allowCaption()Z
.end method

.method public abstract allowSendingSubmenu()Z
.end method

.method public abstract canCaptureMorePhotos()Z
.end method

.method public abstract canEdit(I)Z
.end method

.method public abstract canLoadMoreAvatars()Z
.end method

.method public abstract canMoveCaptionAbove()Z
.end method

.method public abstract canReplace(I)Z
.end method

.method public abstract canScrollAway()Z
.end method

.method public abstract cancelButtonPressed()Z
.end method

.method public abstract closeKeyboard()Z
.end method

.method public abstract deleteImageAtIndex(I)V
.end method

.method public abstract forceAllInGroup()Z
.end method

.method public abstract getDeleteMessageString()Ljava/lang/String;
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
.end method

.method public abstract getPhotoIndex(I)I
.end method

.method public abstract getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
.end method

.method public abstract getSelectedCount()I
.end method

.method public abstract getSelectedPhotos()Ljava/util/HashMap;
.end method

.method public abstract getSelectedPhotosOrder()Ljava/util/ArrayList;
.end method

.method public abstract getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
.end method

.method public abstract getTotalImageCount()I
.end method

.method public abstract isCaptionAbove()Z
.end method

.method public abstract isEditingMessage()Z
.end method

.method public abstract isEditingMessageResend()Z
.end method

.method public abstract isEditingSticker()Z
.end method

.method public abstract isPhotoChecked(I)Z
.end method

.method public abstract loadMore()Z
.end method

.method public abstract moveCaptionAbove(Z)V
.end method

.method public abstract needAddMorePhotos()V
.end method

.method public abstract onApplyCaption(Ljava/lang/CharSequence;)V
.end method

.method public abstract onClose()V
.end method

.method public abstract onDeletePhoto(I)Z
.end method

.method public abstract onEditModeChanged(Z)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onPreClose()V
.end method

.method public abstract onPreOpen()V
.end method

.method public abstract onReleasePlayerBeforeClose(I)V
.end method

.method public abstract openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract replaceButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
.end method

.method public abstract scaleToFill()Z
.end method

.method public abstract sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
.end method

.method public abstract setPhotoChecked(ILorg/telegram/messenger/VideoEditedInfo;)I
.end method

.method public abstract setPhotoUnchecked(Ljava/lang/Object;)I
.end method

.method public abstract spoilerPressed()V
.end method

.method public abstract updatePhotoAtIndex(I)V
.end method

.method public abstract willHidePhotoViewer()V
.end method

.method public abstract willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
.end method
