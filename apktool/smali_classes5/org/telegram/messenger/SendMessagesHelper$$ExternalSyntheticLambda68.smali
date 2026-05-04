.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:J

.field public final synthetic f$12:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$13:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:Ljava/util/ArrayList;

.field public final synthetic f$16:Z

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$19:I

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$20:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$21:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$22:I

.field public final synthetic f$23:Ljava/lang/String;

.field public final synthetic f$24:J

.field public final synthetic f$25:J

.field public final synthetic f$26:J

.field public final synthetic f$27:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$28:Z

.field public final synthetic f$3:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$4:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public final synthetic f$8:Ljava/util/HashMap;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/util/HashMap;ZLjava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZIIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JJJLorg/telegram/messenger/MessageSuggestionParams;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/messenger/AccountInstance;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$7:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$8:Ljava/util/HashMap;

    iput-boolean p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$9:Z

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$10:Ljava/lang/String;

    iput-wide p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$11:J

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$12:Lorg/telegram/messenger/MessageObject;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$13:Lorg/telegram/messenger/MessageObject;

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$14:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$15:Ljava/util/ArrayList;

    move/from16 p1, p18

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$16:Z

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$17:I

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$18:I

    move/from16 p1, p21

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$19:I

    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$20:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p23

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$21:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move/from16 p1, p24

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$22:I

    move-object/from16 p1, p25

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$23:Ljava/lang/String;

    move-wide/from16 p1, p26

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$24:J

    move-wide/from16 p1, p28

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$25:J

    move-wide/from16 p1, p30

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$26:J

    move-object/from16 p1, p32

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$27:Lorg/telegram/messenger/MessageSuggestionParams;

    move/from16 p1, p33

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$28:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$0:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$5:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$6:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$7:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$8:Ljava/util/HashMap;

    iget-boolean v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$9:Z

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$10:Ljava/lang/String;

    iget-wide v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$11:J

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$12:Lorg/telegram/messenger/MessageObject;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$13:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$14:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$15:Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$16:Z

    move/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$17:I

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$18:I

    move/from16 v21, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$19:I

    move/from16 v22, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$20:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v23, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$21:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v24, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$22:I

    move/from16 v25, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$23:Ljava/lang/String;

    move-object/from16 v27, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$24:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$25:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$26:J

    move-wide/from16 v32, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$27:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-boolean v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda68;->f$28:Z

    move-wide/from16 v34, v32

    move-object/from16 v32, v1

    move/from16 v33, v2

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v2, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    move-wide/from16 v30, v34

    invoke-static/range {v1 .. v33}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$avN3pDG4wlcO-tBl_mUZI9Kmuek(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/util/HashMap;ZLjava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;ZIIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JJJLorg/telegram/messenger/MessageSuggestionParams;Z)V

    return-void
.end method
