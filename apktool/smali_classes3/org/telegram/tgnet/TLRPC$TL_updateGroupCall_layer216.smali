.class public Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall_layer216;
.super Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateGroupCall_layer216"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33688
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 33692
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->flags:I

    const/4 v1, 0x4

    .line 33693
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->live_story:Z

    .line 33694
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33695
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    .line 33696
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v0, v0

    .line 33697
    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 33699
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x6829bcbf

    .line 33703
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33704
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->flags:I

    const/4 v1, 0x4

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->live_story:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->flags:I

    .line 33705
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33706
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33707
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    neg-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 33709
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
