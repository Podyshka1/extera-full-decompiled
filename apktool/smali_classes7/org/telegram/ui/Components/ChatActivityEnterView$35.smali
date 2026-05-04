.class Lorg/telegram/ui/Components/ChatActivityEnterView$35;
.super Lorg/telegram/ui/Components/SenderSelectPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createSenderSelectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$310FRfHAD6khVZa5ZuY1TQSVZUs(Lorg/telegram/ui/Components/ChatActivityEnterView$35;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->lambda$dismiss$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 4298
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Components/SenderSelectPopup;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$dismiss$0()V
    .locals 3

    .line 4311
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsenderSelectPopupWindow(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4312
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendAsButton(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 4301
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsenderSelectPopupWindow(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SenderSelectPopup;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4302
    invoke-super {p0}, Lorg/telegram/ui/Components/SenderSelectPopup;->dismiss()V

    return-void

    .line 4306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsenderSelectPopupWindow(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/SenderSelectPopup;)V

    .line 4308
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideSendAsPeer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4309
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputignoreSendAsButtonUpdates(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 4310
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$35$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;)V

    const-wide/16 v2, 0x258

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4317
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->runningCustomSprings:Z

    if-nez v0, :cond_2

    .line 4318
    new-array v0, v1, [Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SenderSelectPopup;->startDismissAnimation([Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 4319
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->senderSelectView:Lorg/telegram/ui/Components/SenderSelectView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/SenderSelectView;->setProgress(FZZ)V

    return-void

    .line 4321
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4322
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    .line 4324
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4325
    invoke-super {p0}, Lorg/telegram/ui/Components/SenderSelectPopup;->dismiss()V

    return-void
.end method
