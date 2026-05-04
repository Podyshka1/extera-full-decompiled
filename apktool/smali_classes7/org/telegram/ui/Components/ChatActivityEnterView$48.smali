.class Lorg/telegram/ui/Components/ChatActivityEnterView$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createBotCommandsMenuContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$3SxhMW6cg8zKmx9hRAQzNvGu29E(Lorg/telegram/ui/Components/ChatActivityEnterView$48;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->lambda$onItemClick$1(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2ToHCR6lG-Zcb6GEvA94FVZFe4(Lorg/telegram/ui/Components/ChatActivityEnterView$48;Ljava/lang/String;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->lambda$onItemClick$0(Ljava/lang/String;ZII)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 5379
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/lang/String;ZII)V
    .locals 17

    move-object/from16 v0, p0

    .line 5389
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 5390
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;

    .line 5391
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I

    .line 5392
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J

    .line 5393
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 5394
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 5395
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismiss()V

    .line 5396
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 17

    move-object/from16 v0, p0

    .line 5403
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 5404
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;

    .line 5405
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I

    .line 5406
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J

    .line 5407
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 5408
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    .line 5409
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->suggestionParams:Lorg/telegram/messenger/MessageSuggestionParams;

    .line 5410
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 5411
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 5412
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismiss()V

    .line 5413
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 5382
    instance-of p2, p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    if-eqz p2, :cond_3

    .line 5383
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    invoke-virtual {p2}, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;->getCommand()Ljava/lang/String;

    move-result-object p2

    .line 5384
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5388
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$48$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$48$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$48;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p1, v0, v1, v2, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 5399
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->checkSlowMode(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5402
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$48$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$48$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$48;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    :cond_3
    :goto_0
    return-void
.end method
