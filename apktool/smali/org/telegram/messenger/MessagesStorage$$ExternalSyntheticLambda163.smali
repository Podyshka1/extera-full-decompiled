.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:J

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$15:Z

.field public final synthetic f$2:Lorg/telegram/messenger/Timer;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;JJIIIIIIIJIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$1:Lorg/telegram/messenger/Timer$Task;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$2:Lorg/telegram/messenger/Timer;

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$3:J

    iput-wide p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$4:J

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$5:I

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$6:I

    iput p10, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$7:I

    iput p11, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$8:I

    iput p12, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$9:I

    iput p13, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$10:I

    iput p14, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$11:I

    move-wide p1, p15

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$12:J

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$13:I

    move/from16 p1, p18

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$14:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$15:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$2:Lorg/telegram/messenger/Timer;

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$3:J

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$4:J

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$11:I

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$12:J

    move-wide/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$13:I

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$14:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda163;->f$15:Z

    move/from16 v20, v19

    move/from16 v19, v1

    move-object v1, v15

    move-wide/from16 v21, v17

    move/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v21

    move/from16 v17, v20

    invoke-static/range {v1 .. v19}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$27A7kD_BxHgkVYZGFnDWeOU3YAI(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/messenger/Timer;JJIIIIIIIJIZZ)V

    return-void
.end method
