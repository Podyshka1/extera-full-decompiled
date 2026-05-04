.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplies_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_messageReplies;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageReplies_layer131"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10057
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 10061
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10062
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z

    .line 10063
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I

    .line 10064
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies_pts:I

    .line 10065
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10066
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_found$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    .line 10068
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 10069
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    .line 10071
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 10072
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->max_id:I

    .line 10074
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 10075
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4128faac

    .line 10080
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10081
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    .line 10082
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10083
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10084
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies_pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10085
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10086
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 10088
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 10089
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10091
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 10092
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10094
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 10095
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
