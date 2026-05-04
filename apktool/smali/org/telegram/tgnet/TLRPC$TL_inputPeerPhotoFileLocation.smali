.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;
.super Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPeerPhotoFileLocation"
.end annotation


# instance fields
.field public big:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public photo_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21811
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 21819
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21820
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    .line 21821
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 21822
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x37257e99

    .line 21826
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21827
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 21828
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 21829
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 21830
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
