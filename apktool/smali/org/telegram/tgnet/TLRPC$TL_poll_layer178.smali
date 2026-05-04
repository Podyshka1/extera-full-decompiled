.class public Lorg/telegram/tgnet/TLRPC$TL_poll_layer178;
.super Lorg/telegram/tgnet/TLRPC$TL_poll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_poll_layer178"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37647
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 37651
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->id:J

    .line 37652
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 37653
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 37654
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 37655
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v2, v3

    .line 37656
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    .line 37657
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 37658
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 37659
    new-instance v0, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    .line 37660
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 37661
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->close_period:I

    .line 37663
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 37664
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->close_date:I

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x791e7e9f

    .line 37669
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37670
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 37671
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37672
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37673
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37674
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37675
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37676
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37677
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 37678
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 37679
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->close_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37681
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 37682
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->close_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_6
    return-void
.end method
