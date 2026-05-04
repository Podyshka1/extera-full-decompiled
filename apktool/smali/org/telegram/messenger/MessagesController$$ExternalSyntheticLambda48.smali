.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;ZIIZZIJILjava/util/ArrayList;IIIIIIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$1:Lorg/telegram/messenger/Timer$Task;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$2:Z

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$5:Z

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$6:Z

    iput p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$7:I

    iput-wide p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$8:J

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$9:I

    iput-object p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$10:Ljava/util/ArrayList;

    iput p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$11:I

    iput p14, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$12:I

    iput p15, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$13:I

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$14:I

    move/from16 p1, p17

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$15:I

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$16:I

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$17:I

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$18:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$2:Z

    iget v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$3:I

    iget v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$4:I

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$5:Z

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$6:Z

    iget v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$7:I

    iget-wide v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$8:J

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$9:I

    iget-object v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$10:Ljava/util/ArrayList;

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$11:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$12:I

    iget v15, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$13:I

    move-object/from16 v16, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$14:I

    move/from16 v17, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$15:I

    move/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$16:I

    move/from16 v19, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$17:I

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda48;->f$18:I

    move/from16 v21, v20

    move/from16 v20, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    invoke-static/range {v1 .. v20}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$mXeC0iNVCPG3ZwZeiHVm7BAGDYY(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/Timer$Task;ZIIZZIJILjava/util/ArrayList;IIIIIIII)V

    return-void
.end method
