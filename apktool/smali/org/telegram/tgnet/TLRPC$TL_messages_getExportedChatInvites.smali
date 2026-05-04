.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getExportedChatInvites"
.end annotation


# instance fields
.field public admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public flags:I

.field public limit:I

.field public offset_date:I

.field public offset_link:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public revoked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59604
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59616
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5d4a5c0a

    .line 59620
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59621
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->revoked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    .line 59622
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59623
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59624
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59625
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 59626
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59628
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 59629
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_link:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59631
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
