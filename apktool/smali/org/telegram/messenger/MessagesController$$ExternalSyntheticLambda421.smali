.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:J

.field public final synthetic f$14:I

.field public final synthetic f$15:Z

.field public final synthetic f$16:I

.field public final synthetic f$17:Z

.field public final synthetic f$18:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JJIIIIIIIIIIJIZIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$2:J

    iput p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$3:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$4:I

    iput p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$5:I

    iput p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$6:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$7:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$8:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$9:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$10:I

    iput p14, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$11:I

    iput p15, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$12:I

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$13:J

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$14:I

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$15:Z

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$16:I

    move/from16 p1, p21

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$17:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$18:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 30

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$1:J

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$2:J

    iget v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$3:I

    iget v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$4:I

    iget v8, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$6:I

    iget v10, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$11:I

    iget v15, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$12:I

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$13:J

    iget v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$14:I

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$15:Z

    iget v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$16:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$17:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda421;->f$18:Z

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move/from16 v25, v22

    move/from16 v22, v1

    move-object/from16 v1, v16

    move-wide/from16 v26, v19

    move/from16 v20, v2

    move/from16 v19, v21

    move/from16 v21, v25

    move-wide/from16 v28, v17

    move/from16 v18, v3

    move-wide/from16 v2, v28

    move-wide/from16 v16, v26

    invoke-static/range {v1 .. v24}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$HKdZxalSRulbAIpH4sTGW_r5bJc(Lorg/telegram/messenger/MessagesController;JJIIIIIIIIIIJIZIZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
