.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:I

.field public final synthetic f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$18:J

.field public final synthetic f$19:J

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$20:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field public final synthetic f$8:Ljava/util/HashMap;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_document;[Landroid/graphics/Bitmap;[Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;ZIILorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;Ljava/lang/String;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;JJLorg/telegram/messenger/AccountInstance;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$1:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$4:J

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$7:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$8:Ljava/util/HashMap;

    iput-boolean p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$9:Z

    iput p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$10:I

    iput p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$11:I

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$12:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$13:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$14:Ljava/lang/String;

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$15:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$18:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$19:J

    move-object/from16 p1, p24

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$20:Lorg/telegram/messenger/AccountInstance;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$1:[Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$2:[Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$3:Ljava/lang/String;

    iget-wide v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$4:J

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$7:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$8:Ljava/util/HashMap;

    iget-boolean v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$9:Z

    iget v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$10:I

    iget v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$11:I

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$12:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$13:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$14:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$15:I

    move/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$16:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$17:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$18:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$19:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda23;->f$20:Lorg/telegram/messenger/AccountInstance;

    move-object/from16 v2, v20

    move-wide/from16 v26, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-wide/from16 v20, v22

    move-wide/from16 v22, v26

    invoke-static/range {v1 .. v24}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$FH7RAmGC4OK5xqbpC0L0P7RmOmA(Lorg/telegram/tgnet/TLRPC$TL_document;[Landroid/graphics/Bitmap;[Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;ZIILorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;Ljava/lang/String;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;JJLorg/telegram/messenger/AccountInstance;)V

    return-void
.end method
