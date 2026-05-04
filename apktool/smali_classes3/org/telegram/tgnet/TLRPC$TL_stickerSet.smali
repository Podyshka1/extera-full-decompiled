.class public Lorg/telegram/tgnet/TLRPC$TL_stickerSet;
.super Lorg/telegram/tgnet/TLRPC$StickerSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stickerSet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46135
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$StickerSet;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 12

    .line 46139
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 46140
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 46141
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 46142
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 46143
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 46144
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->text_color:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 46145
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 46146
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 46148
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed_date:I

    .line 46150
    :cond_7
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 46151
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    .line 46152
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 46153
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    .line 46154
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 46155
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_9

    if-nez p2, :cond_8

    goto :goto_8

    .line 46158
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "wrong Vector magic, got %x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46162
    :cond_9
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    :goto_7
    if-ge v2, v0, :cond_b

    .line 46164
    iget-wide v7, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v10

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v9, p1

    move v11, p2

    invoke-static/range {v3 .. v11}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_8
    return-void

    .line 46168
    :cond_a
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object p1, v9

    move p2, v11

    goto :goto_7

    :cond_b
    move-object v9, p1

    move v11, p2

    .line 46171
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_c

    .line 46172
    invoke-interface {v9, v11}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_dc_id:I

    .line 46174
    :cond_c
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_d

    .line 46175
    invoke-interface {v9, v11}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    .line 46177
    :cond_d
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_e

    .line 46178
    invoke-interface {v9, v11}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    .line 46180
    :cond_e
    invoke-interface {v9, v11}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    .line 46181
    invoke-interface {v9, v11}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2dd14edc

    .line 46185
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46186
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46187
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46188
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46189
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46190
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->text_color:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x201

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46191
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x400

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x401

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46192
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x801

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 46193
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46194
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 46195
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46197
    :cond_7
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 46198
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 46199
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46200
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46201
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 46202
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 46204
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 46205
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46207
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 46208
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46210
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 46211
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 46213
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46214
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
