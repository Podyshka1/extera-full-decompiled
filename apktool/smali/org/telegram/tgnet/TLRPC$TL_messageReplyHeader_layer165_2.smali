.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader_layer165_2;
.super Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageReplyHeader_layer165_2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28748
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 28752
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 28753
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_scheduled:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v2, v3

    .line 28754
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 28756
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 28758
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 28759
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28761
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 28762
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28764
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 28765
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 28767
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 28768
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 28770
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 28771
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x3d5c1693

    .line 28776
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28777
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_scheduled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 28778
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 28779
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28780
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 28781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28783
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 28784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28786
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 28787
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28789
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 28790
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28792
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 28793
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 28795
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 28796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
