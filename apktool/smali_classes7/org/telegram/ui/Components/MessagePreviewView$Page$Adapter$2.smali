.class Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic canDrawOutboundsContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$canDrawOutboundsContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public canPerformActions()Z
    .locals 3

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic canPerformReply()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$canPerformReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public synthetic didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z

    move-result p1

    return p1
.end method

.method public synthetic didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    return-void
.end method

.method public synthetic didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z

    move-result p1

    return p1
.end method

.method public synthetic didPressAboutRevenueSharingAds()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAboutRevenueSharingAds(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z

    move-result p1

    return p1
.end method

.method public synthetic didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public synthetic didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V

    return-void
.end method

.method public synthetic didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public synthetic didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V

    return-void
.end method

.method public synthetic didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    return-void
.end method

.method public synthetic didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method

.method public synthetic didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    return-void
.end method

.method public synthetic didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void
.end method

.method public synthetic didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V

    return-void
.end method

.method public synthetic didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void
.end method

.method public synthetic didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell;FFZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FFZ)V

    return-void
.end method

.method public synthetic didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void
.end method

.method public synthetic didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public synthetic didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V

    return-void
.end method

.method public synthetic didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didPressSummarize(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressSummarize(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public synthetic didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public synthetic didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z

    move-result p1

    return p1
.end method

.method public didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V
    .locals 2

    .line 1600
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v0, p3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p3, p3, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-ne p3, p2, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 1607
    :cond_1
    instance-of p3, p2, Landroid/text/style/URLSpan;

    if-nez p3, :cond_2

    goto :goto_0

    .line 1610
    :cond_2
    move-object p3, p2

    check-cast p3, Landroid/text/style/URLSpan;

    invoke-virtual {p3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p3

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-object p2, v1, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    const/4 p2, 0x0

    .line 1613
    iput-object p2, v1, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1615
    iget-object p2, v0, Lorg/telegram/ui/Components/MessagePreviewView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    .line 1616
    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V

    .line 1618
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateLinkHighlight(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V

    return-void
.end method

.method public synthetic didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;J)V

    return-void
.end method

.method public synthetic didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V

    return-void
.end method

.method public synthetic didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method public synthetic didStartVideoStream(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didStartVideoStream(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public synthetic doNotShowLoadingReply(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$doNotShowLoadingReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public synthetic forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public synthetic forceUpdateNoAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$forceUpdateNoAnimation(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    return-void
.end method

.method public synthetic getAdminRank(J)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getAdminRank(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPinchToZoomHelper()Lorg/telegram/ui/PinchToZoomHelper;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getPinchToZoomHelper(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;
    .locals 2

    .line 1623
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1626
    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSelectionHelper()Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
    .locals 1

    .line 1585
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    return-object v0
.end method

.method public hasSelectedMessages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic invalidateBlur()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$invalidateBlur(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic isAdmin(J)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isAdmin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Z

    move-result p1

    return p1
.end method

.method public synthetic isLandscape()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isLandscape(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isOwner(J)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isOwner(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Z

    move-result p1

    return p1
.end method

.method public isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z
    .locals 3

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter$2;->this$2:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p2, p1, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1634
    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public synthetic isReplyOrSelf()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$isReplyOrSelf(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic keyboardIsOpened()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$keyboardIsOpened(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needOpenWebView(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needOpenWebView(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic needPlayMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needPlayMessage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic needReloadPolls()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needReloadPolls(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic needShowPremiumBulletin(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$needShowPremiumBulletin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;I)V

    return-void
.end method

.method public synthetic onAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$onAccessibilityAction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public synthetic onDiceFinished()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$onDiceFinished(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method

.method public synthetic setShouldNotRepeatSticker(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$setShouldNotRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public synthetic shouldDrawAvatarOnlineStatus(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldDrawAvatarOnlineStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result p1

    return p1
.end method

.method public synthetic shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic shouldRepeatSticker(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$shouldRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public synthetic videoTimerReached()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$videoTimerReached(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    return-void
.end method
