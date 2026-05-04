.class public Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatBannedRights"
.end annotation


# instance fields
.field public change_info:Z

.field public edit_rank:Z

.field public embed_links:Z

.field public flags:I

.field public invite_users:Z

.field public manage_topics:Z

.field public pin_messages:Z

.field public send_audios:Z

.field public send_docs:Z

.field public send_games:Z

.field public send_gifs:Z

.field public send_inline:Z

.field public send_media:Z

.field public send_messages:Z

.field public send_photos:Z

.field public send_plain:Z

.field public send_polls:Z

.field public send_roundvideos:Z

.field public send_stickers:Z

.field public send_videos:Z

.field public send_voices:Z

.field public until_date:I

.field public view_messages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 2

    const v0, -0x60edfbe8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 226
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method public static clone(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 232
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 233
    new-instance p0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p0, v1, v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 239
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 244
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 245
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 246
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 247
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 248
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 249
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 250
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 251
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 252
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 253
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 254
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 255
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 256
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    .line 257
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_d

    :cond_d
    move v1, v2

    .line 258
    :goto_d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_e

    :cond_e
    move v1, v2

    .line 259
    :goto_e
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_f

    :cond_f
    move v1, v2

    .line 260
    :goto_f
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_10

    :cond_10
    move v1, v2

    .line 261
    :goto_10
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_11

    :cond_11
    move v1, v2

    .line 262
    :goto_11
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_12

    :cond_12
    move v1, v2

    .line 263
    :goto_12
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move v2, v3

    .line 264
    :cond_13
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    const/high16 v1, 0x4000000

    .line 265
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 266
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v0, :cond_14

    .line 267
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 268
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 269
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 270
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 271
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 272
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 274
    :cond_14
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, -0x60edfbe8

    .line 278
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 279
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isAndroidTestEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 281
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v3, :cond_1

    .line 286
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    goto :goto_0

    .line 288
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 290
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v4, :cond_2

    .line 291
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    goto :goto_1

    .line 293
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 295
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    or-int/2addr v1, v2

    goto :goto_2

    :cond_3
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    and-int/lit8 v1, v1, -0x2

    :goto_2
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 296
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_4
    and-int/lit8 v1, v1, -0x3

    :goto_3
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 297
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x4

    goto :goto_4

    :cond_5
    and-int/lit8 v1, v1, -0x5

    :goto_4
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 298
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v2, :cond_6

    or-int/lit8 v1, v1, 0x8

    goto :goto_5

    :cond_6
    and-int/lit8 v1, v1, -0x9

    :goto_5
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 299
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x10

    goto :goto_6

    :cond_7
    and-int/lit8 v1, v1, -0x11

    :goto_6
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 300
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v2, :cond_8

    or-int/lit8 v1, v1, 0x20

    goto :goto_7

    :cond_8
    and-int/lit8 v1, v1, -0x21

    :goto_7
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 301
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v2, :cond_9

    or-int/lit8 v1, v1, 0x40

    goto :goto_8

    :cond_9
    and-int/lit8 v1, v1, -0x41

    :goto_8
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 302
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v2, :cond_a

    or-int/lit16 v1, v1, 0x80

    goto :goto_9

    :cond_a
    and-int/lit16 v1, v1, -0x81

    :goto_9
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 303
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v2, :cond_b

    or-int/lit16 v1, v1, 0x100

    goto :goto_a

    :cond_b
    and-int/lit16 v1, v1, -0x101

    :goto_a
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 304
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v2, :cond_c

    or-int/lit16 v1, v1, 0x400

    goto :goto_b

    :cond_c
    and-int/lit16 v1, v1, -0x401

    :goto_b
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 305
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v2, :cond_d

    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_c

    :cond_d
    const v2, -0x8001

    and-int/2addr v1, v2

    :goto_c
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 306
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v2, :cond_e

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    goto :goto_d

    :cond_e
    const v2, -0x20001

    and-int/2addr v1, v2

    :goto_d
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 307
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v2, :cond_f

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    goto :goto_e

    :cond_f
    const v2, -0x40001

    and-int/2addr v1, v2

    :goto_e
    iput v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    if-eqz v0, :cond_10

    const/high16 v0, 0x80000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_10
    const v0, -0x80001

    and-int/2addr v0, v1

    .line 308
    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 309
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_11
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 310
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_12
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 311
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_12

    :cond_13
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 312
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_14

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_13

    :cond_14
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 313
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_15

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_14

    :cond_15
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    if-eqz v3, :cond_16

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_15

    :cond_16
    const v1, -0x2000001

    and-int/2addr v0, v1

    .line 314
    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    const/high16 v1, 0x4000000

    .line 315
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->flags:I

    .line 316
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 317
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
