.class public Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateShortMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53074
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 53078
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 53079
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 53080
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 53081
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    move v2, v3

    .line 53082
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    .line 53083
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    .line 53084
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:J

    .line 53085
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    .line 53086
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    .line 53087
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    .line 53088
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    .line 53089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 53090
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 53092
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    .line 53093
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:J

    .line 53095
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 53096
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 53098
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 53099
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    .line 53101
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 53102
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Updates;->ttl_period:I

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x313bc7f8

    .line 53107
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53108
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53109
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53110
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53111
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 53112
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53113
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53114
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53116
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 53117
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 53119
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    .line 53120
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53122
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 53123
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 53125
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 53126
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 53128
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 53129
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
