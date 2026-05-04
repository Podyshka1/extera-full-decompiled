.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:J

.field public final synthetic f$14:I

.field public final synthetic f$15:Z

.field public final synthetic f$16:I

.field public final synthetic f$17:Z

.field public final synthetic f$18:Z

.field public final synthetic f$19:Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;IIIIIJJIIIIIJIZIZZLorg/telegram/tgnet/TLRPC$TL_messages_getReplies;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$2:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$4:I

    iput p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$5:I

    iput-wide p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$6:J

    iput-wide p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$7:J

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$8:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$9:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$10:I

    iput p14, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$11:I

    iput p15, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$12:I

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$13:J

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$14:I

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$15:Z

    move/from16 p1, p20

    iput p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$16:I

    move/from16 p1, p21

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$17:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$18:Z

    move-object/from16 p1, p23

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$19:Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 29

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$1:I

    iget v3, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$2:I

    iget v4, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$3:I

    iget v5, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$4:I

    iget v6, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$5:I

    iget-wide v7, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$6:J

    iget-wide v9, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$7:J

    iget v11, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$10:I

    iget v14, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$11:I

    iget v15, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$12:I

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$13:J

    move-wide/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$14:I

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$15:Z

    move/from16 v20, v1

    iget v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$16:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$17:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$18:Z

    move/from16 v23, v1

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda423;->f$19:Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move/from16 v26, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-wide/from16 v27, v18

    move/from16 v19, v2

    move/from16 v2, v17

    move-wide/from16 v16, v27

    move/from16 v18, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v26

    invoke-static/range {v1 .. v25}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$DSeOMt-rSNZumvt0vIrSj9-1tlE(Lorg/telegram/messenger/MessagesController;IIIIIJJIIIIIJIZIZZLorg/telegram/tgnet/TLRPC$TL_messages_getReplies;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
