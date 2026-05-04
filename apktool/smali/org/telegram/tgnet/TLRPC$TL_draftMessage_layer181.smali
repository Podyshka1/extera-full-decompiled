.class public Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer181;
.super Lorg/telegram/tgnet/TLRPC$TL_draftMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_draftMessage_layer181"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 508
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 509
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v2, v3

    .line 510
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 512
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 514
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 515
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 516
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    .line 518
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 519
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 521
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x3fccf7ef

    .line 525
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 526
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 527
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 528
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 532
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 533
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 536
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 539
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
