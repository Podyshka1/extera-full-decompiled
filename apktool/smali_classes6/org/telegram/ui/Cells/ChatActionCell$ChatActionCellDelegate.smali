.class public interface abstract Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatActionCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatActionCellDelegate"
.end annotation


# virtual methods
.method public abstract canDrawOutboundsContent()Z
.end method

.method public abstract didClickButton(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end method

.method public abstract didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end method

.method public abstract didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z
.end method

.method public abstract didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V
.end method

.method public abstract didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V
.end method

.method public abstract didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
.end method

.method public abstract didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
.end method

.method public abstract didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell;II)V
.end method

.method public abstract forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V
.end method

.method public abstract getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getTopicId()J
.end method

.method public abstract needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
.end method

.method public abstract needOpenUserProfile(J)V
.end method

.method public abstract needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
.end method

.method public abstract onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end method
