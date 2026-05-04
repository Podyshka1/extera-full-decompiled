.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDialogs"
.end annotation


# instance fields
.field public exclude_pinned:Z

.field public flags:I

.field public folder_id:I

.field public hash:J

.field public limit:I

.field public offset_date:I

.field public offset_id:I

.field public offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55712
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55725
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5f0b34b1

    .line 55729
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55730
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    .line 55731
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55732
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 55733
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55735
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55736
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55737
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55738
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55739
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
