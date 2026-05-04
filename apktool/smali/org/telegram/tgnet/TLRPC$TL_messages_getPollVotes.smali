.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getPollVotes"
.end annotation


# instance fields
.field public flags:I

.field public id:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public option:[B

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59385
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59396
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4791c7f2

    .line 59400
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59401
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59402
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59403
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59404
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59405
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 59407
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59408
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59410
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
