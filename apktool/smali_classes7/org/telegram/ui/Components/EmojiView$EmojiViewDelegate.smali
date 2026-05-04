.class public interface abstract Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmojiViewDelegate"
.end annotation


# virtual methods
.method public abstract canAddCaptionToGif(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract canSchedule()Z
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getProgressToSearchOpened()F
.end method

.method public abstract getThreadId()I
.end method

.method public abstract invalidateEnterView()V
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract isInScheduleMode()Z
.end method

.method public abstract isSearchOpened()Z
.end method

.method public abstract isUserSelf()Z
.end method

.method public abstract onAnimatedEmojiUnlockClick()V
.end method

.method public abstract onBackspace()Z
.end method

.method public abstract onClearEmojiRecent()V
.end method

.method public abstract onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
.end method

.method public abstract onEmojiSelected(Ljava/lang/String;)V
.end method

.method public abstract onEmojiSettingsClick(Ljava/util/ArrayList;)V
.end method

.method public abstract onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
.end method

.method public abstract onGifSelectedForAddCaption(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZII)V
.end method

.method public abstract onSearchOpenClose(I)V
.end method

.method public abstract onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
.end method

.method public abstract onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZII)V
.end method

.method public abstract onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickersGroupClick(J)V
.end method

.method public abstract onStickersSettingsClick()V
.end method

.method public abstract onTabOpened(I)V
.end method

.method public abstract showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
.end method
