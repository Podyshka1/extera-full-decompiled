.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$15:I

.field public final synthetic f$16:Ljava/lang/String;

.field public final synthetic f$17:J

.field public final synthetic f$18:Z

.field public final synthetic f$19:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public final synthetic f$20:J

.field public final synthetic f$21:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

.field public final synthetic f$5:Ljava/util/HashMap;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:J

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JZJJLorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$5:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$6:Ljava/lang/String;

    iput-wide p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$7:J

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$9:Lorg/telegram/messenger/MessageObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$10:Z

    iput p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$11:I

    iput p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$12:I

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$15:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$16:Ljava/lang/String;

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$17:J

    move/from16 p1, p21

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$18:Z

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$19:J

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$20:J

    move-object/from16 p1, p26

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$21:Lorg/telegram/messenger/MessageSuggestionParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$2:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-boolean v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$3:Z

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$4:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$5:Ljava/util/HashMap;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$6:Ljava/lang/String;

    iget-wide v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$7:J

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$9:Lorg/telegram/messenger/MessageObject;

    iget-boolean v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$10:Z

    iget v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$11:I

    iget v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$12:I

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$15:I

    move/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$16:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$17:J

    move-wide/from16 v21, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$18:Z

    move/from16 v23, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$19:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$20:J

    move-wide/from16 v26, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda108;->f$21:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 v2, v19

    move-wide/from16 v28, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v20

    move-wide/from16 v19, v21

    move/from16 v21, v23

    move-wide/from16 v22, v24

    move-wide/from16 v24, v28

    invoke-static/range {v1 .. v26}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$z6iRjBqWMn-M2EuLntGed_2pG5o(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method
