.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;

.field public final synthetic f$10:I

.field public final synthetic f$11:Ljava/lang/Object;

.field public final synthetic f$12:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$15:Ljava/lang/String;

.field public final synthetic f$16:I

.field public final synthetic f$17:J

.field public final synthetic f$18:J

.field public final synthetic f$19:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$20:Ljava/lang/CharSequence;

.field public final synthetic f$21:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$4:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$5:J

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$1:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iput-wide p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$5:J

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-boolean p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$8:Z

    iput p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$9:I

    iput p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$10:I

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$11:Ljava/lang/Object;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$12:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$15:Ljava/lang/String;

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$16:I

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$17:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$18:J

    move-object/from16 p1, p23

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$19:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 p1, p24

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$20:Ljava/lang/CharSequence;

    move/from16 p1, p25

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$21:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$1:[Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$2:[Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$4:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$5:J

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-boolean v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$8:Z

    iget v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$9:I

    iget v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$10:I

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$11:Ljava/lang/Object;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$12:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$13:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$14:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$15:Ljava/lang/String;

    move-object/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$16:I

    move/from16 v20, v1

    move-object/from16 v19, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$17:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$18:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$19:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$20:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda24;->f$21:Z

    move-object/from16 v26, v25

    move/from16 v25, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v20

    move-wide/from16 v27, v23

    move-object/from16 v24, v2

    move-object/from16 v2, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v27

    move-object/from16 v23, v26

    invoke-static/range {v1 .. v25}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$6mFgSn3aWfPNQ9Z55OaI_0V9izw(Lorg/telegram/messenger/SendMessagesHelper;[Landroid/graphics/Bitmap;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/lang/CharSequence;Z)V

    return-void
.end method
