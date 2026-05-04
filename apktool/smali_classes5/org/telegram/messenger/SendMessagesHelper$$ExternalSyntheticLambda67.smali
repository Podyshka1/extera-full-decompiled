.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Z

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$15:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$16:Ljava/lang/String;

.field public final synthetic f$17:I

.field public final synthetic f$18:J

.field public final synthetic f$19:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$20:J

.field public final synthetic f$21:J

.field public final synthetic f$22:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/HashMap;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/messenger/MessageObject;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$4:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$6:J

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$9:Ljava/lang/String;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$10:Ljava/util/ArrayList;

    iput-boolean p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$11:Z

    iput p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$12:I

    iput p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$13:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$14:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$15:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$16:Ljava/lang/String;

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$17:I

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$18:J

    move/from16 p1, p22

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$19:Z

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$20:J

    move-wide/from16 p1, p25

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$21:J

    move-object/from16 p1, p27

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$2:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$3:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$4:Ljava/util/HashMap;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$5:Ljava/lang/String;

    iget-wide v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$6:J

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$9:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$10:Ljava/util/ArrayList;

    iget-boolean v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$11:Z

    iget v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$12:I

    iget v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$13:I

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$14:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$15:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$16:Ljava/lang/String;

    move-object/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$17:I

    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$18:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$19:Z

    move/from16 v24, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$20:J

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$21:J

    move-wide/from16 v27, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda67;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 v2, v20

    move-wide/from16 v29, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v21

    move-wide/from16 v20, v22

    move/from16 v22, v24

    move-wide/from16 v23, v25

    move-wide/from16 v25, v29

    invoke-static/range {v1 .. v27}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$Fanki_J__8tvbHFyxWmJOGXld3o(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method
