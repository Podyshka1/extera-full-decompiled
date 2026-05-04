.class public Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories_layer162;
.super Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerStories_layer162"
.end annotation


# static fields
.field public static final constructor:I = -0x79ee5e00


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 188
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->flags:I

    .line 189
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    .line 190
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 191
    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 192
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    .line 195
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x79ee5e00

    .line 199
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 200
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 201
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 202
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
