.class Lorg/telegram/ui/Stories/PeerStoriesView$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/MentionsContainerView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$r5IF4-jpaZ2_p5krM2IpskTR_Tk(Lorg/telegram/ui/Stories/PeerStoriesView$22;Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$22;->lambda$sendBotInlineResult$1(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vY6yKBhDWZfaoJJyEiM2JPsie2Y(Lorg/telegram/ui/Stories/PeerStoriesView$22;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$22;->lambda$onStickerSelected$0(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 3606
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStickerSelected$0(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 24

    move-object/from16 v0, p0

    .line 3610
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v21

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v23

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v2 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIIZLjava/lang/Object;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;)V

    .line 3611
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addStickerToRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 3612
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3613
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mafterMessageSend(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    return-void
.end method

.method private synthetic lambda$sendBotInlineResult$1(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 3635
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getContextBotId()J

    move-result-wide v1

    .line 3636
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3637
    const-string v5, "id"

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "query_id"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "bot"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getContextBotName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "bot_name"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3641
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryViewer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetAccountInstance(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v15, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide v11, v1

    move-object v2, v7

    const/4 v7, 0x0

    move-object v1, v5

    move-wide/from16 v22, v8

    move-object v9, v6

    move-wide/from16 v5, v22

    const/4 v8, 0x0

    move-object v13, v9

    move-object v9, v10

    const/4 v10, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-wide/from16 v19, v11

    move-object/from16 v21, v18

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-static/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZIILjava/lang/String;IJ)V

    .line 3642
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v13, v21

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3643
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mafterMessageSend(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 3644
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    move-wide/from16 v11, v19

    invoke-virtual {v1, v11, v12}, Lorg/telegram/messenger/MediaDataController;->increaseInlineRating(J)V

    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 1

    .line 3629
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addEmojiToRecent(Ljava/lang/String;)V

    return-void
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 3624
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 3609
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$22$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$22$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$22;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;Z)V
    .locals 1

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method public sendBotInlineResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V
    .locals 4

    .line 3634
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$22$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$22$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$22;Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
