.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer188;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsTransaction_layer188"
.end annotation


# static fields
.field public static final constructor:I = -0x118add2b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3342
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3346
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3347
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3348
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 3349
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 3350
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 3351
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    move v2, v3

    .line 3352
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    .line 3353
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    .line 3354
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3355
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3356
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3357
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 3358
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3360
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 3361
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3363
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 3364
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3366
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 3367
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    .line 3368
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    .line 3370
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 3371
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    .line 3373
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 3374
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    .line 3376
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 3377
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    .line 3379
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 3380
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    .line 3382
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 3383
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    :cond_e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x118add2b

    .line 3388
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3389
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3390
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3391
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3392
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3393
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x800

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x801

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3394
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x1000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x1001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3395
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3396
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3397
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3398
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3399
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3400
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 3401
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3403
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 3404
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3406
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 3407
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3409
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 3410
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3411
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3413
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 3414
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 3416
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 3417
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3419
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 3420
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3422
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 3423
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3425
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 3426
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_e
    return-void
.end method
