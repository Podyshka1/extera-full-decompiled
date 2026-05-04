.class public Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_deleteSavedHistory"
.end annotation


# instance fields
.field public flags:I

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56034
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56045
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x4dc5085f    # 4.1320752E8f

    .line 56049
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56050
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    .line 56051
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56052
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 56053
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56055
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 56058
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->min_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56060
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 56061
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteSavedHistory;->max_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
