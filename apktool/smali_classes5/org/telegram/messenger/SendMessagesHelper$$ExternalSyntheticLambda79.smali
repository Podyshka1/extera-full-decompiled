.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:J

.field public final synthetic f$10:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:I

.field public final synthetic f$13:J

.field public final synthetic f$14:Z

.field public final synthetic f$15:J

.field public final synthetic f$2:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$6:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;JLorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;IJZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$0:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$2:Lorg/telegram/messenger/AccountInstance;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$3:Ljava/lang/CharSequence;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$5:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$6:Lorg/telegram/messenger/MessageObject;

    iput-boolean p9, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$7:Z

    iput p10, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$8:I

    iput p11, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$9:I

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$10:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p13, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$11:Ljava/lang/String;

    iput p14, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$12:I

    move-wide p1, p15

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$13:J

    move/from16 p1, p17

    iput-boolean p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$14:Z

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$15:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$0:Ljava/util/ArrayList;

    iget-wide v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$1:J

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$2:Lorg/telegram/messenger/AccountInstance;

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$3:Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$5:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$6:Lorg/telegram/messenger/MessageObject;

    iget-boolean v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$7:Z

    iget v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$8:I

    iget v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$9:I

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$10:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$11:Ljava/lang/String;

    iget v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$12:I

    move-object v15, v1

    move-wide/from16 v16, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$13:J

    iget-boolean v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$14:Z

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda79;->f$15:J

    move-wide/from16 v20, v16

    move/from16 v17, v3

    move-wide/from16 v22, v1

    move-object v1, v15

    move-wide/from16 v2, v20

    move-wide/from16 v15, v18

    move-wide/from16 v18, v22

    invoke-static/range {v1 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$fHqUHPclS63bzXF0laObB1J-Kps(Ljava/util/ArrayList;JLorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZIILorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;IJZJ)V

    return-void
.end method
