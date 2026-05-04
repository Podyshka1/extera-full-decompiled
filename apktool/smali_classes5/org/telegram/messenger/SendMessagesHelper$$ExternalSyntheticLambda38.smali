.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$10:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$11:Ljava/util/ArrayList;

.field public final synthetic f$12:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$13:Z

.field public final synthetic f$14:I

.field public final synthetic f$15:Landroidx/core/view/inputmethod/InputContentInfoCompat;

.field public final synthetic f$16:Ljava/lang/String;

.field public final synthetic f$17:I

.field public final synthetic f$18:J

.field public final synthetic f$19:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$20:J

.field public final synthetic f$21:J

.field public final synthetic f$22:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$23:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;


# direct methods
.method public synthetic constructor <init>(JLjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/AccountInstance;ILjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$0:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$1:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$3:Lorg/telegram/messenger/AccountInstance;

    iput p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$4:I

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$5:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$6:Ljava/lang/String;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$8:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$9:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$10:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$11:Ljava/util/ArrayList;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$12:Lorg/telegram/messenger/MessageObject;

    iput-boolean p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$13:Z

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$14:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$15:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$16:Ljava/lang/String;

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$17:I

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$18:J

    move/from16 p1, p22

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$19:Z

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$20:J

    move-wide/from16 p1, p25

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$21:J

    move-object/from16 p1, p27

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 p1, p28

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$23:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$0:J

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$1:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$2:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$3:Lorg/telegram/messenger/AccountInstance;

    iget v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$4:I

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$5:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$6:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$9:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$10:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$11:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$12:Lorg/telegram/messenger/MessageObject;

    iget-boolean v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$13:Z

    move-wide/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$14:I

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$15:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$16:Ljava/lang/String;

    move-object/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$17:I

    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$18:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$19:Z

    move/from16 v24, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$20:J

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$21:J

    move-wide/from16 v27, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda38;->f$23:Ljava/util/ArrayList;

    move-wide/from16 v29, v27

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-wide/from16 v1, v16

    move/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v17, v20

    move/from16 v19, v21

    move-wide/from16 v20, v22

    move/from16 v22, v24

    move-wide/from16 v23, v25

    move-wide/from16 v25, v29

    invoke-static/range {v1 .. v28}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$OTB8OXqpaSzvR8g_yN5Hu4UnqXg(JLjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/AccountInstance;ILjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Ljava/util/ArrayList;)V

    return-void
.end method
