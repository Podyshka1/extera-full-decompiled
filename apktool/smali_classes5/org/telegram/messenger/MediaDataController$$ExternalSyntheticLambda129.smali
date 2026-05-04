.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$10:I

.field public final synthetic f$11:J

.field public final synthetic f$12:J

.field public final synthetic f$13:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$14:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_messages_search;ZLjava/lang/String;ZIZJJIIJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$4:Z

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$5:I

    iput-boolean p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$6:Z

    iput-wide p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$7:J

    iput-wide p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$8:J

    iput p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$9:I

    iput p13, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$10:I

    iput-wide p14, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$11:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$12:J

    move-object/from16 p1, p18

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$13:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 p1, p19

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$14:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$2:Z

    iget-object v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$3:Ljava/lang/String;

    iget-boolean v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$4:Z

    iget v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$5:I

    iget-boolean v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$6:Z

    iget-wide v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$7:J

    iget-wide v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$8:J

    iget v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$9:I

    iget v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$10:I

    iget-wide v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$11:J

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$12:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$13:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda129;->f$14:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-wide/from16 v22, v18

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v16, v22

    invoke-static/range {v1 .. v21}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$JbfNsXoqYI7rROY3jL6_lYZM3AI(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_messages_search;ZLjava/lang/String;ZIZJJIIJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
