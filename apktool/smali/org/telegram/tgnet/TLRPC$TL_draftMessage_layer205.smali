.class public Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer205;
.super Lorg/telegram/tgnet/TLRPC$DraftMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_draftMessage_layer205"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DraftMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 463
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

    .line 464
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v2, v3

    .line 465
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 467
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 469
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 470
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 471
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    .line 473
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 474
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 476
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 477
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 478
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->effect:J

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2d65321f

    .line 483
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 484
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

    .line 485
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 486
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 487
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 490
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 491
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 494
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 497
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 498
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 499
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->effect:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_5
    return-void
.end method
