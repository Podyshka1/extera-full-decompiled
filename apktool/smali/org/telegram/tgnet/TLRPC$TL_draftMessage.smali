.class public Lorg/telegram/tgnet/TLRPC$TL_draftMessage;
.super Lorg/telegram/tgnet/TLRPC$DraftMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_draftMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DraftMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 411
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

    .line 412
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v2, v3

    .line 413
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 415
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 417
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 418
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 419
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    .line 421
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 422
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 424
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 425
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 426
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->effect:J

    .line 428
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x69155a15

    .line 434
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 435
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

    .line 436
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->invert_media:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 437
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x100

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 438
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 442
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 443
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 446
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 447
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 449
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 450
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 451
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->effect:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 453
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_7
    return-void
.end method
