.class public interface abstract Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentPreviewViewerDelegate"
.end annotation


# virtual methods
.method public abstract addCaptionToGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
.end method

.method public abstract addToFavoriteSelected(Ljava/lang/String;)V
.end method

.method public abstract can()Z
.end method

.method public abstract canAddCaption(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract canDeleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract canEditSticker()Z
.end method

.method public abstract canSchedule()Z
.end method

.method public abstract canSendSticker()Z
.end method

.method public abstract canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;
.end method

.method public abstract copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract deleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract editSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getQuery(Z)Ljava/lang/String;
.end method

.method public abstract gifAddedOrDeleted()V
.end method

.method public abstract isInScheduleMode()Z
.end method

.method public abstract isPhotoEditor()Z
.end method

.method public abstract isReplacedSticker()Z
.end method

.method public abstract isSettingIntroSticker()Z
.end method

.method public abstract isStickerEditor()Z
.end method

.method public abstract needCopy(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract needMenu()Z
.end method

.method public abstract needOpen()Z
.end method

.method public abstract needRemove()Z
.end method

.method public abstract needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract needSend(I)Z
.end method

.method public abstract newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
.end method

.method public abstract openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
.end method

.method public abstract remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
.end method

.method public abstract removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract resetTouch()V
.end method

.method public abstract sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
.end method

.method public abstract sendSticker(Ljava/lang/String;)V
.end method

.method public abstract sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZII)V
.end method

.method public abstract setAsBadge(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
.end method

.method public abstract setIntroSticker(Ljava/lang/String;)V
.end method

.method public abstract stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V
.end method
