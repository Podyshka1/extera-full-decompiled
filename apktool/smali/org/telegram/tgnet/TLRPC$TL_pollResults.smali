.class public Lorg/telegram/tgnet/TLRPC$TL_pollResults;
.super Lorg/telegram/tgnet/TLRPC$PollResults;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pollResults"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4373
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PollResults;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 4377
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4378
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->min:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4380
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollResults$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollResults$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    .line 4382
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4383
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    .line 4385
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4386
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->recent_voters:Ljava/util/ArrayList;

    .line 4388
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4389
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    .line 4391
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 4392
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x7adf2420

    .line 4397
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4398
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->min:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    .line 4399
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4400
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4401
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 4403
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4404
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4406
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4407
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->recent_voters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 4409
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4410
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4412
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 4413
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method
