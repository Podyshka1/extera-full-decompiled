.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:J

.field public final synthetic f$13:I

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:Z

.field public final synthetic f$18:Z

.field public final synthetic f$19:Lorg/telegram/messenger/Timer;

.field public final synthetic f$2:J

.field public final synthetic f$20:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JJIIZIIIIIIJIIIIZZLorg/telegram/messenger/Timer;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$2:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$3:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$4:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$5:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$6:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$7:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$8:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$9:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$10:I

    iput p14, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$11:I

    move-wide p1, p15

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$12:J

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$13:I

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$14:I

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$15:I

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$16:I

    move/from16 p1, p21

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$17:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$18:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$19:Lorg/telegram/messenger/Timer;

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$20:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$1:J

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$2:J

    iget v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$3:I

    iget v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$4:I

    iget-boolean v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$5:Z

    iget v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$11:I

    move-object v15, v1

    move-wide/from16 v16, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$12:J

    iget v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$13:I

    move-wide/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$14:I

    iget v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$15:I

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$16:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$17:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$18:Z

    move/from16 v23, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$19:Lorg/telegram/messenger/Timer;

    move-object/from16 v25, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda35;->f$20:J

    move-wide/from16 v26, v16

    move/from16 v17, v3

    move-wide/from16 v28, v1

    move-object v1, v15

    move-wide/from16 v2, v26

    move-wide/from16 v15, v18

    move/from16 v18, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v19, v24

    move-object/from16 v23, v25

    move-wide/from16 v24, v28

    invoke-static/range {v1 .. v25}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$gwhh5R6rL2CT-fqabFeo25GwlRw(Lorg/telegram/messenger/MessagesController;JJIIZIIIIIIJIIIIZZLorg/telegram/messenger/Timer;J)V

    return-void
.end method
