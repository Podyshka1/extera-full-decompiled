.class public interface abstract Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatActivityEnterViewDelegate"
.end annotation


# virtual methods
.method public abstract bottomPanelTranslationYChanged(F)V
.end method

.method public abstract checkCanRemoveRestrictionsByBoosts()Z
.end method

.method public abstract didPressAttachButton()V
.end method

.method public abstract didPressSuggestionButton()V
.end method

.method public abstract getContentViewHeight()I
.end method

.method public abstract getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;
.end method

.method public abstract getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;
.end method

.method public abstract getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
.end method

.method public abstract getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
.end method

.method public abstract hasForwardingMessages()Z
.end method

.method public abstract hasScheduledMessages()Z
.end method

.method public abstract isVideoRecordingPaused()Z
.end method

.method public abstract measureKeyboardHeight()I
.end method

.method public abstract needChangeVideoPreviewState(IF)V
.end method

.method public abstract needSendTyping()V
.end method

.method public abstract needShowMediaBanHint()V
.end method

.method public abstract needStartRecordAudio(I)V
.end method

.method public abstract needStartRecordVideo(IZIIIJJ)V
.end method

.method public abstract onAttachButtonHidden()V
.end method

.method public abstract onAttachButtonShow()V
.end method

.method public abstract onAudioVideoInterfaceUpdated()V
.end method

.method public abstract onContextMenuClose()V
.end method

.method public abstract onContextMenuOpen()V
.end method

.method public abstract onEditTextScroll()V
.end method

.method public abstract onKeyboardRequested()V
.end method

.method public abstract onMessageEditEnd(Z)V
.end method

.method public abstract onMessageSend(Ljava/lang/CharSequence;ZIIJ)V
.end method

.method public abstract onPreAudioVideoRecord()V
.end method

.method public abstract onSendLongClick()V
.end method

.method public abstract onStickersExpandedChange()V
.end method

.method public abstract onStickersTab(Z)V
.end method

.method public abstract onSwitchRecordMode(Z)V
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;ZZ)V
.end method

.method public abstract onTextSelectionChanged(II)V
.end method

.method public abstract onTextSpansChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract onTrendingStickersShowed(Z)V
.end method

.method public abstract onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
.end method

.method public abstract onWindowSizeChanged(I)V
.end method

.method public abstract onceVoiceAvailable()Z
.end method

.method public abstract openScheduledMessages()V
.end method

.method public abstract prepareMessageSending()V
.end method

.method public abstract scrollToSendingMessage()V
.end method

.method public abstract setDefaultSendAs(JJ)Z
.end method

.method public abstract setFrontface(Z)V
.end method

.method public abstract toggleVideoRecordingPause()V
.end method
