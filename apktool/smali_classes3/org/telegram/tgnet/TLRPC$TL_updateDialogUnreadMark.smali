.class public Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateDialogUnreadMark"
.end annotation


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public unread:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33980
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 33989
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 33990
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->unread:Z

    .line 33991
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DialogPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DialogPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

    .line 33992
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 33993
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x49a70dc2

    .line 33998
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33999
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->unread:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    .line 34000
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34001
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34002
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 34003
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogUnreadMark;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
