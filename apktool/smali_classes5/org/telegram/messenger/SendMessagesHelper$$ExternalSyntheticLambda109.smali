.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:J

.field public final synthetic f$11:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$12:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$13:Z

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$18:Ljava/lang/String;

.field public final synthetic f$19:I

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$20:J

.field public final synthetic f$21:Z

.field public final synthetic f$22:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public final synthetic f$23:J

.field public final synthetic f$24:J

.field public final synthetic f$25:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$3:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$4:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/util/HashMap;

.field public final synthetic f$8:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZLorg/telegram/tgnet/TLRPC$PhotoSize;JJLorg/telegram/messenger/MessageSuggestionParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$3:Lorg/telegram/messenger/AccountInstance;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$7:Ljava/util/HashMap;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$8:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$9:Ljava/lang/String;

    iput-wide p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$10:J

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$11:Lorg/telegram/messenger/MessageObject;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$12:Lorg/telegram/messenger/MessageObject;

    iput-boolean p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$13:Z

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$14:I

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$15:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 p1, p20

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$18:Ljava/lang/String;

    move/from16 p1, p21

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$19:I

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$20:J

    move/from16 p1, p24

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$21:Z

    move-object/from16 p1, p25

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$22:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-wide/from16 p1, p26

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$23:J

    move-wide/from16 p1, p28

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$24:J

    move-object/from16 p1, p30

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$25:Lorg/telegram/messenger/MessageSuggestionParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$0:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$3:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$6:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$7:Ljava/util/HashMap;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$8:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$9:Ljava/lang/String;

    iget-wide v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$10:J

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$11:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$12:Lorg/telegram/messenger/MessageObject;

    iget-boolean v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$13:Z

    move-object/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$14:I

    move/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$15:I

    move/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$18:Ljava/lang/String;

    move-object/from16 v21, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$19:I

    move/from16 v23, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$20:J

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$21:Z

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$22:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move/from16 v26, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$23:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$24:J

    move-wide/from16 v30, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda109;->f$25:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 v2, v22

    move-wide/from16 v32, v30

    move-object/from16 v30, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v23

    move-wide/from16 v22, v24

    move/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-wide/from16 v28, v32

    invoke-static/range {v1 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$o0vDpIbvnG8H320QweOJqToMCPQ(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZLorg/telegram/tgnet/TLRPC$PhotoSize;JJLorg/telegram/messenger/MessageSuggestionParams;)V

    return-void
.end method
