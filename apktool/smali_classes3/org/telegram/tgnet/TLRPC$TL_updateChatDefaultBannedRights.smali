.class public Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateChatDefaultBannedRights"
.end annotation


# instance fields
.field public default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 34834
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34835
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 34836
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->version:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x54c01850

    .line 34840
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34841
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34842
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34843
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatDefaultBannedRights;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
