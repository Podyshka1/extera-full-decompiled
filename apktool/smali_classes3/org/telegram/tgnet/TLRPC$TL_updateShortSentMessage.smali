.class public Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateShortSentMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53134
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 53138
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53139
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    .line 53140
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    .line 53141
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    .line 53142
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    .line 53143
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    .line 53144
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 53145
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 53147
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 53148
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    .line 53150
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 53151
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Updates;->ttl_period:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6fea1eff

    .line 53156
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53157
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53158
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53159
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53160
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53161
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53163
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 53164
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 53166
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 53167
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 53169
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 53170
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Updates;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    return-void
.end method
