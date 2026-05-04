.class public Lorg/telegram/tgnet/TLRPC$TL_poll_layer111;
.super Lorg/telegram/tgnet/TLRPC$TL_poll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_poll_layer111"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37721
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 37725
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->id:J

    .line 37726
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

    .line 37727
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->closed:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 37728
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 37729
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v2, v3

    .line 37730
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    .line 37731
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 37732
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 37733
    new-instance v0, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2aad62fa

    .line 37737
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37738
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 37739
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

    .line 37740
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37741
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37742
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->flags:I

    .line 37743
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37744
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37745
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
