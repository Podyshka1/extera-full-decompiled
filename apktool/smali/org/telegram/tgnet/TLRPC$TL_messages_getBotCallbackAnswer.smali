.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getBotCallbackAnswer"
.end annotation


# instance fields
.field public data:[B

.field public flags:I

.field public game:Z

.field public msg_id:I

.field public password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57908
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57919
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x6cbd35f9

    .line 57923
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57924
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 57925
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57926
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57927
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57928
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 57929
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 57931
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 57932
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    return-void
.end method
