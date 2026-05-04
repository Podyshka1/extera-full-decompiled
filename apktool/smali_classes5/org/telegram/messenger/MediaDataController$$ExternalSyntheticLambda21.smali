.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:I

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Z

.field public final synthetic f$12:J

.field public final synthetic f$13:J

.field public final synthetic f$14:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$15:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;IZLorg/telegram/tgnet/TLObject;JJLorg/telegram/tgnet/TLRPC$TL_messages_search;IIILjava/util/ArrayList;ZJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-wide p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$4:J

    iput-wide p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$5:J

    iput-object p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$7:I

    iput p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$8:I

    iput p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$9:I

    iput-object p13, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$10:Ljava/util/ArrayList;

    iput-boolean p14, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$11:Z

    move-wide p1, p15

    iput-wide p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$12:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$13:J

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$14:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 p1, p20

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$15:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$1:I

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$2:Z

    iget-object v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-wide v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$4:J

    iget-wide v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$5:J

    iget-object v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$6:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$7:I

    iget v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$8:I

    iget v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$9:I

    iget-object v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$10:Ljava/util/ArrayList;

    iget-boolean v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$11:Z

    move-object v15, v1

    move/from16 v16, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$12:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$13:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$14:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda21;->f$15:Lorg/telegram/tgnet/TLRPC$Chat;

    move-wide/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v1, v15

    move/from16 v2, v16

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    invoke-static/range {v1 .. v20}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$tout0jy_lhWMWvSBHkoZmnuBG2E(Lorg/telegram/messenger/MediaDataController;IZLorg/telegram/tgnet/TLObject;JJLorg/telegram/tgnet/TLRPC$TL_messages_search;IIILjava/util/ArrayList;ZJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
