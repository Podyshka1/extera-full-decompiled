.class public Lorg/telegram/tgnet/TLRPC$TL_messageReactor;
.super Lorg/telegram/tgnet/TLRPC$MessageReactor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageReactor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27716
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageReactor;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 27720
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 27721
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->top:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 27722
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v2, v3

    .line 27723
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->anonymous:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 27725
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27727
    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4ba3a95a    # 2.1451444E7f

    .line 27731
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27732
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->top:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    .line 27733
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->my:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    .line 27734
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->anonymous:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    .line 27735
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27736
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 27737
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 27739
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReactor;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
