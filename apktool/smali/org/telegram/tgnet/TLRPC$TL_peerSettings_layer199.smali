.class public Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199;
.super Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerSettings_layer199"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6734
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 6738
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

    .line 6739
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_spam:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 6740
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->add_contact:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 6741
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->block_contact:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 6742
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->share_contact:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 6743
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->need_contacts_exception:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 6744
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_geo:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 6745
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->autoarchived:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 6746
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->invite_members:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 6747
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_broadcast:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 6748
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_paused:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move v2, v3

    .line 6749
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_can_reply:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 6751
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->geo_distance:I

    .line 6753
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 6754
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_title:Ljava/lang/String;

    .line 6756
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    .line 6757
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_date:I

    .line 6759
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 6760
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_id:J

    .line 6762
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 6763
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_manage_url:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x532993a2

    .line 6768
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6769
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

    .line 6770
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->add_contact:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6771
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->block_contact:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6772
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->share_contact:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6773
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->need_contacts_exception:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6774
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->report_geo:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6775
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->autoarchived:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6776
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->invite_members:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x101

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6777
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_broadcast:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6778
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_paused:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6779
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_can_reply:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x1000

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x1001

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    .line 6780
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 6782
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->geo_distance:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6784
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 6785
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6787
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    .line 6788
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->request_chat_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6790
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 6791
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6793
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 6794
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerSettings;->business_bot_manage_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_f
    return-void
.end method
