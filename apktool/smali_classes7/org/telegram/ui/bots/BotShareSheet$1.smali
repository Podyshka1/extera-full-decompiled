.class Lorg/telegram/ui/bots/BotShareSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotShareSheet;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotShareSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotShareSheet;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$1;->this$0:Lorg/telegram/ui/bots/BotShareSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic canDrawOutboundsContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$canDrawOutboundsContent(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic didClickButton(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didClickButton(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method

.method public synthetic didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didClickImage(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method

.method public synthetic didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didLongPress(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;FF)Z

    move-result p1

    return p1
.end method

.method public synthetic didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public synthetic didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;I)V

    return-void
.end method

.method public synthetic didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;II)V

    return-void
.end method

.method public synthetic forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Z)V

    return-void
.end method

.method public synthetic getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getBaseFragment(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDialogId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getDialogId(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getTopicId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$getTopicId(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needOpenInviteLink(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public synthetic needOpenUserProfile(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needOpenUserProfile(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;J)V

    return-void
.end method

.method public synthetic needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method public synthetic onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate$-CC;->$default$onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method
