.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Landroid/graphics/Bitmap;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$10:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$11:Z

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$17:Ljava/lang/String;

.field public final synthetic f$18:I

.field public final synthetic f$19:J

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$20:Z

.field public final synthetic f$21:J

.field public final synthetic f$22:J

.field public final synthetic f$23:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$24:Z

.field public final synthetic f$3:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public final synthetic f$5:Ljava/util/HashMap;

.field public final synthetic f$6:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:J

.field public final synthetic f$9:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>([Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIIZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$0:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$3:Lorg/telegram/messenger/AccountInstance;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$4:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$5:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$6:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$7:Ljava/lang/String;

    iput-wide p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$8:J

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$9:Lorg/telegram/messenger/MessageObject;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$10:Lorg/telegram/messenger/MessageObject;

    iput-boolean p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$11:Z

    iput p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$12:I

    iput p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$13:I

    move/from16 p1, p16

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$14:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$17:Ljava/lang/String;

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$18:I

    move-wide/from16 p1, p21

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$19:J

    move/from16 p1, p23

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$20:Z

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$21:J

    move-wide/from16 p1, p26

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$22:J

    move-object/from16 p1, p28

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$23:Lorg/telegram/messenger/MessageSuggestionParams;

    move/from16 p1, p29

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$24:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$0:[Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$1:[Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$3:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$4:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$5:Ljava/util/HashMap;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$6:Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$7:Ljava/lang/String;

    iget-wide v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$8:J

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$9:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$10:Lorg/telegram/messenger/MessageObject;

    iget-boolean v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$11:Z

    iget v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$12:I

    iget v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$13:I

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$14:Z

    move/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$17:Ljava/lang/String;

    move-object/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$18:I

    move/from16 v22, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$19:J

    move-wide/from16 v23, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$20:Z

    move/from16 v25, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$21:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$22:J

    move-wide/from16 v28, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$23:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-boolean v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda110;->f$24:Z

    move-wide/from16 v30, v28

    move-object/from16 v28, v1

    move/from16 v29, v2

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v2, v21

    move/from16 v20, v22

    move-wide/from16 v21, v23

    move/from16 v23, v25

    move-wide/from16 v24, v26

    move-wide/from16 v26, v30

    invoke-static/range {v1 .. v29}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$5sAn567e1Erv9hzI8Qtazv3hdcY([Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIIZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Z)V

    return-void
.end method
