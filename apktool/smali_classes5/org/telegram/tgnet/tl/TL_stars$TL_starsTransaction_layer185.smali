.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer185;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsTransaction_layer185"
.end annotation


# static fields
.field public static final constructor:I = 0x2db5418f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3514
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3518
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

    .line 3519
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3520
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 3521
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    move v2, v3

    .line 3522
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    .line 3523
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    .line 3524
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3525
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 3526
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 3527
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 3528
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 3530
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 3531
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 3533
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 3534
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3536
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 3537
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    .line 3538
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    .line 3540
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 3541
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    .line 3543
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 3544
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    .line 3546
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 3547
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2db5418f

    .line 3552
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3553
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

    .line 3554
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3555
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3556
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 3557
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3558
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3559
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3560
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3561
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3562
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3563
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3565
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 3566
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3568
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 3569
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3571
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 3572
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3573
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3575
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 3576
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 3578
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 3579
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3581
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 3582
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method
