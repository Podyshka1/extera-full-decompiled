.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:I

.field public final synthetic f$15:J

.field public final synthetic f$16:J

.field public final synthetic f$17:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$18:Ljava/lang/CharSequence;

.field public final synthetic f$19:Z

.field public final synthetic f$2:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    iput-wide p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$3:J

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-boolean p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$6:Z

    iput p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$7:I

    iput p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$8:I

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$9:Ljava/lang/Object;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$13:Ljava/lang/String;

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$14:I

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$15:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$16:J

    move-object/from16 p1, p21

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$17:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$18:Ljava/lang/CharSequence;

    move/from16 p1, p23

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$19:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$3:J

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-boolean v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$6:Z

    iget v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$7:I

    iget v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$8:I

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$9:Ljava/lang/Object;

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$10:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$13:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$14:I

    move/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$15:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$16:J

    move-wide/from16 v21, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$17:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$18:Ljava/lang/CharSequence;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda10;->f$19:Z

    move-object/from16 v24, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move-wide/from16 v25, v21

    move-object/from16 v22, v2

    move-object/from16 v2, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v25

    move-object/from16 v21, v24

    invoke-static/range {v1 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$lzmFILAxHei3N_WAdLbouNCwz_8(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/lang/CharSequence;Z)V

    return-void
.end method
