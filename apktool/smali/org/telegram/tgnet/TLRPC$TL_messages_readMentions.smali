.class public Lorg/telegram/tgnet/TLRPC$TL_messages_readMentions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_readMentions"
.end annotation


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58472
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58480
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x36e5bf4d

    .line 58484
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58485
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMentions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58486
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMentions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58487
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMentions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 58488
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMentions;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
