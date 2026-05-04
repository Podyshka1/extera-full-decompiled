.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;
.super Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsTransaction"
.end annotation


# static fields
.field public static final constructor:I = 0x13659eb0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2598
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 7

    .line 2602
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

    .line 2603
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2604
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2605
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2606
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 2607
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 2608
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    const v1, 0x8000

    and-int v4, v0, v1

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    .line 2609
    :goto_6
    iput-boolean v4, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v2

    .line 2610
    :goto_7
    iput-boolean v4, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    const/high16 v4, 0x80000

    and-int v5, v0, v4

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_8

    :cond_8
    move v5, v2

    .line 2611
    :goto_8
    iput-boolean v5, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    const/high16 v5, 0x100000

    and-int v6, v0, v5

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_9

    :cond_9
    move v6, v2

    .line 2612
    :goto_9
    iput-boolean v6, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    const/high16 v6, 0x200000

    and-int/2addr v6, v0

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_a

    :cond_a
    move v6, v2

    .line 2613
    :goto_a
    iput-boolean v6, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->business_transfer:Z

    const/high16 v6, 0x400000

    and-int/2addr v6, v0

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_b

    :cond_b
    move v6, v2

    .line 2614
    :goto_b
    iput-boolean v6, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    const/high16 v6, 0x1000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_c

    :cond_c
    move v6, v2

    .line 2615
    :goto_c
    iput-boolean v6, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->posts_search:Z

    const/high16 v6, 0x2000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_d

    move v6, v3

    goto :goto_d

    :cond_d
    move v6, v2

    .line 2616
    :goto_d
    iput-boolean v6, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_prepaid_upgrade:Z

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_e

    move v2, v3

    .line 2617
    :cond_e
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_drop_original_details:Z

    const/high16 v2, 0x8000000

    .line 2618
    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->phonegroup_message:Z

    .line 2619
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_auction_bid:Z

    .line 2620
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v2, 0x20000000

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->offer:Z

    .line 2621
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    .line 2622
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 2623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    .line 2624
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    .line 2625
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    .line 2626
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    .line 2628
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 2629
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    .line 2631
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 2632
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 2634
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    .line 2635
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    .line 2636
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    .line 2638
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    .line 2639
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    .line 2641
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_14

    .line 2642
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    .line 2644
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_15

    .line 2645
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    .line 2647
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_16

    .line 2648
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    .line 2650
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_17

    .line 2651
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    .line 2653
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_18

    .line 2654
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2656
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 2657
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    .line 2659
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 2660
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    .line 2662
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 2663
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2664
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 2666
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1c

    .line 2667
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_messages:I

    .line 2669
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_1d

    .line 2670
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    .line 2672
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2673
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->ads_proceeds_from_date:I

    .line 2674
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->ads_proceeds_to_date:I

    :cond_1e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 6

    const v0, 0x13659eb0

    .line 2679
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2680
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

    .line 2681
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2682
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2683
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2684
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x800

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x801

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2685
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x1000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x1001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2686
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    const v2, 0x8000

    if-eqz v1, :cond_6

    or-int/2addr v0, v2

    goto :goto_6

    :cond_6
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2687
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2688
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    const/high16 v3, 0x80000

    if-eqz v1, :cond_8

    or-int/2addr v0, v3

    goto :goto_8

    :cond_8
    const v1, -0x80001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2689
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    const/high16 v4, 0x100000

    if-eqz v1, :cond_9

    or-int/2addr v0, v4

    goto :goto_9

    :cond_9
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2690
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->business_transfer:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_a

    :cond_a
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2691
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_b

    :cond_b
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2692
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->posts_search:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_c
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2693
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_prepaid_upgrade:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_d
    const v1, -0x2000001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2694
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_drop_original_details:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_e
    const v1, -0x4000001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x8000000

    .line 2695
    iget-boolean v5, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->phonegroup_message:Z

    invoke-static {v0, v1, v5}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x10000000

    .line 2696
    iget-boolean v5, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_auction_bid:Z

    invoke-static {v0, v1, v5}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x20000000

    .line 2697
    iget-boolean v5, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->offer:Z

    invoke-static {v0, v1, v5}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    .line 2698
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2699
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2701
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2702
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2703
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 2704
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2706
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 2707
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2709
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 2710
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2712
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    .line 2713
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2714
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2716
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    .line 2717
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->bot_payload:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 2719
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_14

    .line 2720
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2722
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_15

    .line 2723
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2725
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_16

    .line 2726
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2728
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_17

    .line 2729
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2731
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_18

    .line 2732
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2734
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_19

    .line 2735
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2737
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 2738
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2740
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 2741
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2742
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2744
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1c

    .line 2745
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_messages:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2747
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1d

    .line 2748
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2750
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2751
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->ads_proceeds_from_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2752
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->ads_proceeds_to_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1e
    return-void
.end method
