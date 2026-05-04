.class public Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift_layer202;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_savedStarGift_layer202"
.end annotation


# static fields
.field public static final constructor:I = 0x6056dba5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5318
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 5323
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

    .line 5324
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5325
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 5326
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 5327
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v2, v3

    .line 5328
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 5330
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5332
    :cond_5
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    .line 5333
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 5334
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 5335
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 5337
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 5338
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    .line 5340
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    .line 5341
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    .line 5343
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 5344
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    .line 5346
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 5347
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    .line 5349
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 5350
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    .line 5352
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    .line 5353
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x6056dba5

    .line 5359
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5360
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

    .line 5361
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5362
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x201

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5363
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5364
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 5365
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5366
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 5367
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5369
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5370
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5371
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 5372
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5374
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 5375
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5377
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    .line 5378
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5380
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 5381
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5383
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 5384
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5386
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 5387
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5389
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    .line 5390
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_c
    return-void
.end method
