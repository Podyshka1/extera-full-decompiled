.class public Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199_3;
.super Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerSettings_layer199_3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6574
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 6578
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 6579
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_spam:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 6580
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->add_contact:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 6581
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->block_contact:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 6582
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->share_contact:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 6583
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->need_contacts_exception:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 6584
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_geo:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 6585
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->autoarchived:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 6586
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->invite_members:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 6587
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_broadcast:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 6588
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_paused:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move v2, v3

    .line 6589
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_can_reply:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 6591
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->geo_distance:I

    .line 6593
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 6594
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_title:Ljava/lang/String;

    .line 6596
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    .line 6597
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_date:I

    .line 6599
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 6600
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_id:J

    .line 6602
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 6603
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_manage_url:Ljava/lang/String;

    .line 6605
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_10

    .line 6606
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->charge_paid_message_stars:J

    .line 6608
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 6609
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->registration_month:Ljava/lang/String;

    .line 6611
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 6612
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->phone_country:Ljava/lang/String;

    .line 6614
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 6615
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0xd8c39ec

    .line 6620
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6621
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_spam:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6622
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->add_contact:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6623
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->block_contact:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6624
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->share_contact:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6625
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->need_contacts_exception:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6626
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_geo:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6627
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->autoarchived:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6628
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->invite_members:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x101

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6629
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_broadcast:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6630
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_paused:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6631
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_can_reply:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x1000

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x1001

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6632
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6633
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 6634
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->geo_distance:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6636
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 6637
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6639
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    .line 6640
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6642
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 6643
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6645
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 6646
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_manage_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6648
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_10

    .line 6649
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->charge_paid_message_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6651
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 6652
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->registration_month:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6654
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 6655
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->phone_country:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6657
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 6658
    const-string v0, ""

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
