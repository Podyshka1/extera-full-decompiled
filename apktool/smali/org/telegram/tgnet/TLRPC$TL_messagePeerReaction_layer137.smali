.class public Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;
.super Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messagePeerReaction_layer137"
.end annotation


# instance fields
.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2872
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2878
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    .line 2879
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2880
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    .line 2881
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2882
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6cd7bb06

    .line 2886
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2887
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2888
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v1, :cond_0

    .line 2889
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void

    .line 2891
    :cond_0
    const-string v0, ""

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
