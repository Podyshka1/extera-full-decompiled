.class public Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_deleteHistory"
.end annotation


# instance fields
.field public flags:I

.field public just_clear:Z

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public revoke:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56003
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56015
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4f706dd6

    .line 56019
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56020
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    .line 56021
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->revoke:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    .line 56022
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56023
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56024
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56025
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 56026
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->min_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56028
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 56029
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
