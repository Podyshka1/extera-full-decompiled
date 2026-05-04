.class Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatActivityTextSelectionHelper"
.end annotation


# instance fields
.field chatActivity:Lorg/telegram/ui/ChatActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3605
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected canCopy()Z
    .locals 6

    .line 3660
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    const-wide/32 v4, 0x77628

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 3663
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    .line 3664
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->isPeerNoForwards(J)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_3

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3665
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected canShowQuote()Z
    .locals 6

    .line 3639
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    const-wide/32 v4, 0x77628

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 3642
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3643
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isPeerNoForwards()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_3

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3644
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3646
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isFactCheck:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_7

    .line 3647
    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v3, :cond_5

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3649
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 3652
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    .line 3653
    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 3654
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public getParentBottomPadding()I
    .locals 1

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    return v0
.end method

.method public getParentTopPadding()I
    .locals 1

    .line 3616
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 3631
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 3632
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 3626
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3674
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p4, :cond_f

    .line 3675
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    add-int/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3676
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_1

    .line 3677
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 3678
    iget-boolean v0, p4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v0, :cond_1

    .line 3679
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    :cond_1
    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 3685
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 3686
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$2000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 3687
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    .line 3690
    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 3691
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    .line 3697
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getVoiceTranscription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 3701
    :cond_5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le p3, v4, :cond_6

    .line 3702
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_6
    if-le p2, p3, :cond_7

    move p2, p3

    .line 3707
    :cond_7
    invoke-interface {v3, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 3708
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3710
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3712
    new-instance v3, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-direct {v3}, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;-><init>()V

    .line 3713
    new-instance v4, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-direct {v4, v1, v1, v3}, Lorg/telegram/ui/Components/QuoteSpan;-><init>(ZZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V

    iput-object v4, v3, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    .line 3714
    iput v0, v4, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    .line 3715
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    .line 3716
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {p3, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3717
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p3, v3, v0, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3719
    const-string p2, "\n"

    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3720
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 3722
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3725
    :cond_8
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3727
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 3728
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 3729
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void

    .line 3732
    :cond_9
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p2

    .line 3733
    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_a

    goto/16 :goto_1

    .line 3736
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_0

    .line 3752
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 3753
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    .line 3755
    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReplyQuote(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 3756
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_f

    .line 3757
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void

    .line 3737
    :cond_d
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 3738
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingMessageObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 3739
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforbidForwardingWithDismiss(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3740
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p4, p2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p4, :cond_e

    move v0, v1

    :cond_e
    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isPeerNoForwards()Z

    move-result p4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    invoke-direct {p3, v0, p4, v2}, Lorg/telegram/messenger/MessagePreviewParams;-><init>(ZZZ)V

    iput-object p3, p2, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    .line 3741
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p2, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagePreviewParams;->updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 3742
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3743
    const-string p2, "onlySelect"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3744
    const-string p2, "dialogsType"

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3745
    const-string p2, "quote"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3746
    const-string p2, "messagesCount"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3747
    const-string p2, "canSelectTopics"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3748
    new-instance p2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3749
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 3750
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_f
    :goto_1
    return-void
.end method

.method public setChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 3608
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->cancelAllAnimators()V

    .line 3609
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 v0, 0x0

    .line 3610
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    .line 3611
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method
