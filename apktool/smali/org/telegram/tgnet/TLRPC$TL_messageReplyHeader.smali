.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
.super Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageReplyHeader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28547
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 28551
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

    .line 28552
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_scheduled:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 28553
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v2, v3

    .line 28554
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 28556
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    .line 28558
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 28559
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28561
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 28562
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28564
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 28565
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 28567
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 28568
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 28570
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 28571
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 28573
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 28574
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    .line 28576
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 28577
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    .line 28579
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 28580
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->todo_item_id:I

    :cond_b
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x6917560b

    .line 28585
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28586
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

    .line 28587
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 28588
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x201

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 28589
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28590
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 28591
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28593
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 28594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28596
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 28597
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28599
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 28600
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28602
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 28603
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28605
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 28606
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 28608
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 28609
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 28611
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 28612
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28614
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 28615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->todo_item_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_b
    return-void
.end method
