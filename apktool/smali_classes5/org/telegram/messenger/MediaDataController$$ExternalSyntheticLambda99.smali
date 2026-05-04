.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$10:Z

.field public final synthetic f$11:J

.field public final synthetic f$12:J

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$14:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JJLorg/telegram/tgnet/TLRPC$TL_messages_search;IIILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$4:I

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$5:I

    iput p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$6:I

    iput-object p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$7:Ljava/util/ArrayList;

    iput-object p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$8:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-boolean p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$9:Z

    iput-boolean p13, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$10:Z

    iput-wide p14, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$11:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$12:J

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$13:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$14:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$1:J

    iget-wide v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$2:J

    iget-object v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$4:I

    iget v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$5:I

    iget v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$6:I

    iget-object v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$7:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$8:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-boolean v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$9:Z

    iget-boolean v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$10:Z

    iget-wide v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$11:J

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$12:J

    iget-object v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$13:Lorg/telegram/tgnet/TLRPC$User;

    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda99;->f$14:Lorg/telegram/tgnet/TLRPC$Chat;

    move-wide/from16 v21, v17

    move-object/from16 v18, v3

    move-wide/from16 v2, v21

    move-wide/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-wide/from16 v16, v21

    invoke-static/range {v1 .. v19}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$hlj-BoR_G7QilVq3hinOx5E-Tto(Lorg/telegram/messenger/MediaDataController;JJLorg/telegram/tgnet/TLRPC$TL_messages_search;IIILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$messages_Messages;ZZJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
