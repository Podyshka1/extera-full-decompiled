.class public Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;
.super Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_savedStarGift"
.end annotation


# static fields
.field public static final constructor:I = 0x41df43fc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4563
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 4568
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

    .line 4569
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4570
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 4571
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 4572
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 4573
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v2, v3

    .line 4574
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_separate:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 4576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4578
    :cond_6
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    .line 4579
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 4580
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 4581
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 4583
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 4584
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    .line 4586
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 4587
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    .line 4589
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 4590
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    .line 4592
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 4593
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    .line 4595
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    .line 4596
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    .line 4598
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    .line 4599
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    .line 4601
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 4602
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_transfer_at:I

    .line 4604
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 4605
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_resell_at:I

    .line 4607
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 4608
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->collection_id:Ljava/util/ArrayList;

    .line 4610
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 4611
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->prepaid_upgrade_hash:Ljava/lang/String;

    .line 4613
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 4614
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->drop_original_details_stars:J

    .line 4616
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4617
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift_num:I

    .line 4619
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4620
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    :cond_14
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x41df43fc

    .line 4626
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4627
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

    .line 4628
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 4629
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x201

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 4630
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 4631
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 4632
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_separate:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x20001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    .line 4633
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4634
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 4635
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4637
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4638
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4639
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 4640
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4642
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 4643
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4645
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 4646
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4648
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 4649
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4651
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 4652
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4654
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    .line 4655
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4657
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    .line 4658
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4660
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 4661
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_transfer_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4663
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 4664
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_resell_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4666
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 4667
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->collection_id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 4669
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 4670
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->prepaid_upgrade_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4672
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 4673
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->drop_original_details_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4675
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4676
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift_num:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4678
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4679
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_14
    return-void
.end method
