.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer221;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starGiftUnique_layer221"
.end annotation


# static fields
.field public static final constructor:I = 0x569d64c9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 264
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x40

    .line 265
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    .line 266
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    .line 267
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->theme_available:Z

    .line 268
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    .line 269
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_id:J

    .line 270
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    .line 271
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    .line 272
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    .line 273
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 276
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_name:Ljava/lang/String;

    .line 279
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 280
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    .line 282
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    .line 283
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    .line 284
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    .line 285
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 286
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    .line 288
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_amount:Ljava/util/ArrayList;

    .line 291
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 292
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 294
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_amount:J

    .line 296
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_currency:Ljava/lang/String;

    .line 297
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_usd_amount:J

    .line 299
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->theme_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 302
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 303
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->peer_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 305
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->host_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 308
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->offer_min_stars:I

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, 0x569d64c9

    .line 315
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 316
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_amount:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x10

    invoke-static {v0, v3, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x40

    .line 317
    iget-boolean v4, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->require_premium:Z

    invoke-static {v0, v1, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x80

    .line 318
    iget-boolean v4, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    invoke-static {v0, v1, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x200

    .line 319
    iget-boolean v4, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->theme_available:Z

    invoke-static {v0, v1, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    .line 320
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 321
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 322
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 323
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 326
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 329
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 332
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 335
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 336
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 337
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 338
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 341
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_amount:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 344
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 347
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 349
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 350
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->value_usd_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 352
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 353
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->theme_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 355
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->peer_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 358
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 359
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->host_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 361
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 362
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->offer_min_stars:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_b
    return-void
.end method
