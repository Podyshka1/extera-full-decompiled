.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:I

.field public final synthetic f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$14:J

.field public final synthetic f$15:J

.field public final synthetic f$2:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$3:Ljava/util/HashMap;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(JLorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/messenger/AccountInstance;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/String;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$0:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$2:Lorg/telegram/messenger/AccountInstance;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$3:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-boolean p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$7:Z

    iput p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$8:I

    iput p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$9:I

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$10:Ljava/lang/String;

    iput p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$11:I

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$14:J

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$15:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$0:J

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$1:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$2:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$3:Ljava/util/HashMap;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-boolean v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$7:Z

    iget v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$8:I

    iget v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$9:I

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$10:Ljava/lang/String;

    iget v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$11:I

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$12:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$13:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$14:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda99;->f$15:J

    move-wide/from16 v20, v18

    move-wide/from16 v18, v1

    move-wide/from16 v1, v16

    move-wide/from16 v16, v20

    invoke-static/range {v1 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$zRsj53eIdoyWyT3uhyj3X0WYKqY(JLorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/messenger/AccountInstance;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/String;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;JJ)V

    return-void
.end method
