.class Lorg/telegram/ui/ChatActivity$64;
.super Lorg/telegram/ui/Components/MessagePreviewView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openForwardingPreview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$KRW14PLd432xhKue0HOLqZNROAA(Lorg/telegram/ui/ChatActivity$64;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$64;->lambda$onDismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$yDVb6vG-PJkSq2eWqjy5JpdEEDI(Lorg/telegram/ui/ChatActivity$64;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$64;->lambda$onFullDismiss$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V
    .locals 0

    .line 11046
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p10}, Lorg/telegram/ui/Components/MessagePreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V

    return-void
.end method

.method private synthetic lambda$onDismiss$1()V
    .locals 1

    .line 11140
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 11141
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFullDismiss$0()V
    .locals 2

    .line 11092
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 11093
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->freezeEmojiView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected didSendPressed()V
    .locals 1

    .line 11228
    invoke-super {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->didSendPressed()V

    const/4 v0, 0x1

    .line 11229
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11230
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method protected onDismiss(Z)V
    .locals 4

    .line 11108
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v0, :cond_0

    .line 11109
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->isForwardNoQuote()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->setForwardParams(Z)V

    .line 11111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v2, 0x1

    .line 11112
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckShowBlur(Lorg/telegram/ui/ChatActivity;Z)V

    .line 11113
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 11114
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11115
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 11117
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez v2, :cond_2

    .line 11118
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 11120
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11121
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iput-boolean v3, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    .line 11122
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    .line 11123
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->end:I

    .line 11124
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->-$$Nest$mupdate(Lorg/telegram/ui/ChatActivity$ReplyQuote;)Z

    .line 11125
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfieldPanelShown(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 11126
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReplyQuote(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    goto :goto_0

    .line 11129
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11130
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_4

    .line 11131
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->getSelectedMessages(Ljava/util/ArrayList;)V

    .line 11133
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    .line 11136
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforbidForwardingWithDismiss(Lorg/telegram/ui/ChatActivity;Z)V

    .line 11138
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetkeyboardWasVisible(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 11139
    new-instance p1, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 11144
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputkeyboardWasVisible(Lorg/telegram/ui/ChatActivity;Z)V

    .line 11147
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onFullDismiss(Z)V
    .locals 2

    .line 11087
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 11088
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->attach(Lorg/telegram/ui/Components/MessagePreviewView;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 11091
    new-instance p1, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$64$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    const-wide/16 v0, 0xf

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method protected onQuoteSelectedPart()V
    .locals 2

    .line 11101
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 11102
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    return-void
.end method

.method protected removeForward()V
    .locals 5

    .line 11079
    invoke-super {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    const/4 v0, 0x1

    .line 11080
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11081
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagePreviewParams;->updateForward(Ljava/util/ArrayList;J)V

    .line 11082
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected removeLink()V
    .locals 9

    const/4 v0, 0x1

    .line 11050
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11051
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 11052
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 11053
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setWebPage(Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 11055
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v2, :cond_2

    .line 11056
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-ne v0, v4, :cond_1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagePreviewParams;->updateLink(ILorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;)V

    .line 11058
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected removeQuote()V
    .locals 2

    const/4 v0, 0x1

    .line 11063
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11064
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 11065
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method protected removeReply()V
    .locals 7

    const/4 v0, 0x1

    .line 11070
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11071
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingMessageObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 11072
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputreplyingQuote(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 11073
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagePreviewParams;->updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 11074
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->fallbackFieldPanel()V

    return-void
.end method

.method protected selectAnotherChat(Z)V
    .locals 10

    const/4 v0, 0x0

    .line 11182
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11183
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 11185
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputignoreDraft(Lorg/telegram/ui/ChatActivity;Z)V

    .line 11189
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    .line 11190
    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_6

    .line 11191
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v7, v7, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v7, v7, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 11192
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isTodo()Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v3

    goto :goto_1

    .line 11194
    :cond_1
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    .line 11196
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_1

    .line 11198
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v2

    .line 11201
    :cond_4
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v5, v0

    move v6, v5

    .line 11204
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11205
    const-string v4, "onlySelect"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11206
    const-string v4, "dialogsType"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    xor-int/lit8 v3, p1, 0x1

    .line 11207
    const-string v4, "quote"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_7

    .line 11208
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez p1, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v0

    .line 11209
    :goto_2
    const-string v3, "reply_to"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_8

    .line 11211
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromPeer()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-eqz p1, :cond_8

    .line 11212
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-eqz v7, :cond_8

    if-lez p1, :cond_8

    .line 11213
    const-string p1, "reply_to_author"

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11216
    :cond_8
    const-string p1, "hasPoll"

    invoke-virtual {v1, p1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11217
    const-string p1, "hasInvoice"

    invoke-virtual {v1, p1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11218
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    const-string p1, "messagesCount"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11219
    const-string p1, "canSelectTopics"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11220
    new-instance p1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 11221
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 11222
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_a
    return-void
.end method

.method protected viewInChat()V
    .locals 12

    .line 11152
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v1, :cond_6

    .line 11153
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 11154
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    .line 11155
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingQuote(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->text:Ljava/lang/String;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11156
    :goto_1
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 11157
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    .line 11158
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long v6, v3, v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    .line 11170
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    if-eqz v5, :cond_2

    .line 11172
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v5, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    .line 11173
    iput-boolean v1, v3, Lorg/telegram/ui/ChatActivity;->showNoQuoteAlert:Z

    :cond_2
    move v3, v1

    .line 11175
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void

    .line 11159
    :cond_4
    :goto_3
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 11161
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v0, :cond_5

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v1, :cond_5

    .line 11162
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5

    .line 11163
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_5
    const/4 v0, -0x1

    goto :goto_4

    .line 11166
    :goto_5
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-wide v10, v3

    move v4, v2

    move-wide v2, v10

    .line 11167
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/LaunchActivity;->openMessage(JILjava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;IILjava/lang/Integer;)V

    :cond_6
    return-void
.end method
