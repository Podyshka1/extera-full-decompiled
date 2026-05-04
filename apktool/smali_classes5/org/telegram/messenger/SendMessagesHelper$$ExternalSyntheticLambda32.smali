.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:J

.field public final synthetic f$10:I

.field public final synthetic f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:I

.field public final synthetic f$15:J

.field public final synthetic f$16:Z

.field public final synthetic f$17:J

.field public final synthetic f$18:J

.field public final synthetic f$19:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$2:Z

.field public final synthetic f$20:Landroidx/core/view/inputmethod/InputContentInfoCompat;

.field public final synthetic f$21:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;JZZLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Landroidx/core/view/inputmethod/InputContentInfoCompat;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$0:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$1:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$2:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$3:Z

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$4:Lorg/telegram/messenger/AccountInstance;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$7:Lorg/telegram/messenger/MessageObject;

    iput-boolean p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$8:Z

    iput p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$9:I

    iput p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$10:I

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iput-object p15, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$13:Ljava/lang/String;

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$14:I

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$15:J

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$16:Z

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$17:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$18:J

    move-object/from16 p1, p24

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$19:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 p1, p25

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$20:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move/from16 p1, p26

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$21:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$0:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$1:J

    iget-boolean v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$2:Z

    iget-boolean v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$3:Z

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$4:Lorg/telegram/messenger/AccountInstance;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$7:Lorg/telegram/messenger/MessageObject;

    iget-boolean v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$8:Z

    iget v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$9:I

    iget v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$10:I

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$11:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$12:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$13:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$14:I

    move-wide/from16 v17, v2

    move v3, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$15:J

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$16:Z

    move/from16 v21, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$17:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$18:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$19:Lorg/telegram/messenger/MessageSuggestionParams;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$20:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda32;->f$21:Z

    move-object/from16 v27, v26

    move/from16 v26, v1

    move-object/from16 v1, v16

    move/from16 v16, v3

    move-wide/from16 v28, v24

    move-object/from16 v25, v2

    move-wide/from16 v2, v17

    move-wide/from16 v17, v19

    move/from16 v19, v21

    move-wide/from16 v20, v22

    move-wide/from16 v22, v28

    move-object/from16 v24, v27

    invoke-static/range {v1 .. v26}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$k3B98kyMbdvTNI-PH2YXjXcfegU(Ljava/util/ArrayList;JZZLorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;Landroidx/core/view/inputmethod/InputContentInfoCompat;Z)V

    return-void
.end method
