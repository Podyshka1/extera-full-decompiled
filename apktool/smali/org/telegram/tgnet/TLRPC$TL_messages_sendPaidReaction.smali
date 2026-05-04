.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendPaidReaction"
.end annotation


# instance fields
.field public count:I

.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public privacy:Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;

.field public random_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59063
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59074
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x58bbcb50

    .line 59078
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59079
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59080
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59081
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59082
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59083
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 59084
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59085
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendPaidReaction;->privacy:Lorg/telegram/tgnet/tl/TL_stars$PaidReactionPrivacy;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
