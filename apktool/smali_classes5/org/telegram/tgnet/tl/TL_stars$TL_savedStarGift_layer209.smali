.class public Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift_layer209;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_savedStarGift_layer209"
.end annotation


# static fields
.field public static final constructor:I = -0x2025fb67


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5229
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 5234
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5235
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5236
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 5237
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 5238
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v2, v3

    .line 5239
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 5241
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5243
    :cond_5
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    .line 5244
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 5245
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 5246
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 5248
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 5249
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    .line 5251
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    .line 5252
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    .line 5254
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 5255
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    .line 5257
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 5258
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    .line 5260
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 5261
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    .line 5263
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    .line 5264
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    .line 5266
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 5267
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_transfer_at:I

    .line 5269
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 5270
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_resell_at:I

    :cond_e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2025fb67

    .line 5276
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5277
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5278
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5279
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x201

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5280
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5281
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5282
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5283
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 5284
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5286
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5287
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5288
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 5289
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5291
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 5292
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5294
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    .line 5295
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5297
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 5298
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5300
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 5301
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5303
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 5304
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5306
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    .line 5307
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5309
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 5310
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_transfer_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5312
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 5313
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_resell_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_e
    return-void
.end method
