.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$10:I

.field public final synthetic f$11:J

.field public final synthetic f$12:Ljava/util/ArrayList;

.field public final synthetic f$13:J

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:Z

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$19:I

.field public final synthetic f$2:Lorg/telegram/messenger/Timer;

.field public final synthetic f$20:I

.field public final synthetic f$21:I

.field public final synthetic f$22:I

.field public final synthetic f$23:Ljava/util/ArrayList;

.field public final synthetic f$24:Ljava/util/HashMap;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZIZIIIJLjava/util/ArrayList;JIIZIIIIIILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/messenger/Timer$Task;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$2:Lorg/telegram/messenger/Timer;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$4:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$5:Z

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$6:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$7:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$8:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$9:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$10:I

    iput-wide p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$11:J

    iput-object p14, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$12:Ljava/util/ArrayList;

    move-wide p1, p15

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$13:J

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$14:I

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$15:I

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$16:Z

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$17:I

    move/from16 p1, p21

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$18:I

    move/from16 p1, p22

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$19:I

    move/from16 p1, p23

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$20:I

    move/from16 p1, p24

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$21:I

    move/from16 p1, p25

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$22:I

    move-object/from16 p1, p26

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$23:Ljava/util/ArrayList;

    move-object/from16 p1, p27

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$24:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$2:Lorg/telegram/messenger/Timer;

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$4:Z

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$5:Z

    iget v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$6:I

    iget-boolean v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$7:Z

    iget v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$8:I

    iget v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$9:I

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$10:I

    iget-wide v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$11:J

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$12:Ljava/util/ArrayList;

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$13:J

    move-wide/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$14:I

    iget v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$15:I

    move/from16 v19, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$16:Z

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$17:I

    move/from16 v21, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$18:I

    move/from16 v22, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$19:I

    move/from16 v23, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$20:I

    move/from16 v24, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$21:I

    move/from16 v25, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$22:I

    move/from16 v26, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$23:Ljava/util/ArrayList;

    move-object/from16 v27, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda39;->f$24:Ljava/util/HashMap;

    move-object/from16 v28, v27

    move-object/from16 v27, v1

    move-object v1, v15

    move-wide/from16 v29, v17

    move/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v29

    move/from16 v17, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move-object/from16 v26, v28

    invoke-static/range {v1 .. v27}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$hMZiLKAd1H2Yl8RAIUEYl7el4Cc(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZIZIIIJLjava/util/ArrayList;JIIZIIIIIILjava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
