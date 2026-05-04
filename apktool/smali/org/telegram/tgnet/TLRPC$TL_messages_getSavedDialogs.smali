.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getSavedDialogs"
.end annotation


# instance fields
.field public exclude_pinned:Z

.field public flags:I

.field public hash:J

.field public limit:I

.field public offset_date:I

.field public offset_id:I

.field public offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_SavedDialogs;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SavedDialogs;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1e91fc99

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->exclude_pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
