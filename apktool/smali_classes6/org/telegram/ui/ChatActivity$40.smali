.class Lorg/telegram/ui/ChatActivity$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 8083
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bottomPanelTranslationYChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$bottomPanelTranslationYChanged(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;F)V

    return-void
.end method

.method public synthetic checkCanRemoveRestrictionsByBoosts()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$checkCanRemoveRestrictionsByBoosts(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public didPressAttachButton()V
    .locals 0

    return-void
.end method

.method public synthetic didPressSuggestionButton()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$didPressSuggestionButton(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic getContentViewHeight()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getContentViewHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getDefaultSendAs(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyQuote(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyToStory(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getSendAsPeers(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasForwardingMessages()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasForwardingMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic hasScheduledMessages()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public isVideoRecordingPaused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic measureKeyboardHeight()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$measureKeyboardHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 0

    return-void
.end method

.method public needSendTyping()V
    .locals 0

    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 0

    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 0

    return-void
.end method

.method public needStartRecordVideo(IZIIIJJ)V
    .locals 0

    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 0

    return-void
.end method

.method public onAttachButtonShow()V
    .locals 0

    return-void
.end method

.method public onAudioVideoInterfaceUpdated()V
    .locals 0

    return-void
.end method

.method public synthetic onContextMenuClose()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuClose(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onContextMenuOpen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuOpen(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onEditTextScroll()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onEditTextScroll(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onKeyboardRequested()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onKeyboardRequested(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 0

    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;ZIIJ)V
    .locals 0

    return-void
.end method

.method public onPreAudioVideoRecord()V
    .locals 0

    return-void
.end method

.method public onSendLongClick()V
    .locals 0

    return-void
.end method

.method public onStickersExpandedChange()V
    .locals 0

    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;ZZ)V
    .locals 0

    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTextSpansChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public synthetic onTrendingStickersShowed(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onTrendingStickersShowed(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;Z)V

    return-void
.end method

.method public onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 0

    return-void
.end method

.method public synthetic onceVoiceAvailable()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onceVoiceAvailable(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic openScheduledMessages()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$openScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic prepareMessageSending()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$prepareMessageSending(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic scrollToSendingMessage()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$scrollToSendingMessage(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic setDefaultSendAs(JJ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$setDefaultSendAs(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;JJ)Z

    move-result p1

    return p1
.end method

.method public setFrontface(Z)V
    .locals 0

    return-void
.end method

.method public toggleVideoRecordingPause()V
    .locals 0

    return-void
.end method
