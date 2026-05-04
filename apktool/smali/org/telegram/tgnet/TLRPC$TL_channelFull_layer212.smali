.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer212;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_layer212"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13535
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 8

    .line 13539
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 13540
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 13541
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 13542
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 13543
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    const/high16 v1, 0x10000

    and-int v4, v0, v1

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    .line 13544
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    const/high16 v4, 0x80000

    and-int v5, v0, v4

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v2

    .line 13545
    :goto_5
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    const/high16 v5, 0x100000

    and-int v6, v0, v5

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_6

    :cond_6
    move v6, v2

    .line 13546
    :goto_6
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    const/high16 v6, 0x400000

    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v2

    .line 13547
    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->blocked:Z

    .line 13548
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_8

    :cond_8
    move v6, v2

    .line 13549
    :goto_8
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_9

    :cond_9
    move v6, v2

    .line 13550
    :goto_9
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_a

    :cond_a
    move v6, v2

    .line 13551
    :goto_a
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_b

    :cond_b
    move v6, v2

    .line 13552
    :goto_b
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_c

    :cond_c
    move v6, v2

    .line 13553
    :goto_c
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_d

    move v6, v3

    goto :goto_d

    :cond_d
    move v6, v2

    .line 13554
    :goto_d
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z

    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_e

    :cond_e
    move v6, v2

    .line 13555
    :goto_e
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->restricted_sponsored:Z

    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_f

    move v6, v3

    goto :goto_f

    :cond_f
    move v6, v2

    .line 13556
    :goto_f
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_revenue:Z

    const v6, 0x8000

    and-int v7, v0, v6

    if-eqz v7, :cond_10

    move v7, v3

    goto :goto_10

    :cond_10
    move v7, v2

    .line 13557
    :goto_10
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stars_revenue:Z

    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_11

    move v7, v3

    goto :goto_11

    :cond_11
    move v7, v2

    .line 13558
    :goto_11
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_12

    :cond_12
    move v1, v2

    .line 13559
    :goto_12
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    and-int v1, v0, v4

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_13

    :cond_13
    move v1, v2

    .line 13560
    :goto_13
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_available:Z

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    move v2, v3

    .line 13561
    :cond_14
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_messages_available:Z

    .line 13562
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 13563
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 13564
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    .line 13565
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 13567
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    .line 13568
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    .line 13570
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17

    .line 13571
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    .line 13573
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    .line 13574
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    .line 13576
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_19

    .line 13577
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    .line 13579
    :cond_19
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    .line 13580
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    .line 13581
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    .line 13582
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 13583
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 13584
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 13585
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 13587
    :cond_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    .line 13588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1b

    .line 13589
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    .line 13591
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1c

    .line 13592
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    .line 13594
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1d

    .line 13595
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 13597
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1e

    .line 13598
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 13600
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    .line 13601
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    .line 13603
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_20

    .line 13604
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    .line 13606
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_21

    .line 13607
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    .line 13609
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_22

    .line 13610
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    .line 13612
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 13613
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    .line 13615
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_24

    .line 13616
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_next_send_date:I

    .line 13618
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_25

    .line 13619
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    .line 13621
    :cond_25
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    .line 13622
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_26

    .line 13623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 13625
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_27

    .line 13626
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    .line 13628
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_28

    .line 13629
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    .line 13631
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_29

    .line 13632
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 13634
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2a

    .line 13635
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    .line 13637
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2b

    .line 13638
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    .line 13640
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2c

    .line 13641
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    .line 13643
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2d

    .line 13644
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 13646
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v0, v3

    if-eqz v0, :cond_2e

    .line 13647
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatReactions;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatReactions;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 13649
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2f

    .line 13650
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->reactions_limit:I

    .line 13652
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_30

    .line 13653
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 13655
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_31

    .line 13656
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 13658
    :cond_31
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_32

    .line 13659
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    .line 13661
    :cond_32
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_33

    .line 13662
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    .line 13664
    :cond_33
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_34

    .line 13665
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 13667
    :cond_34
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_35

    .line 13668
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    .line 13670
    :cond_35
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_36

    .line 13671
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    .line 13673
    :cond_36
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 13674
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->send_paid_messages_stars:J

    :cond_37
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 9

    const v0, -0x1f8bd622

    .line 13679
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13680
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13681
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13682
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13683
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13684
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    const v2, -0x10001

    const/high16 v3, 0x10000

    if-eqz v1, :cond_4

    or-int/2addr v0, v3

    goto :goto_4

    :cond_4
    and-int/2addr v0, v2

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13685
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    const v4, -0x80001

    const/high16 v5, 0x80000

    if-eqz v1, :cond_5

    or-int/2addr v0, v5

    goto :goto_5

    :cond_5
    and-int/2addr v0, v4

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13686
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    const v6, -0x100001

    const/high16 v7, 0x100000

    if-eqz v1, :cond_6

    or-int/2addr v0, v7

    goto :goto_6

    :cond_6
    and-int/2addr v0, v6

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13687
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->blocked:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 13688
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13689
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, -0x2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13690
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_9
    and-int/lit8 v0, v0, -0x3

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13691
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz v1, :cond_a

    or-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_a
    and-int/lit8 v0, v0, -0x5

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13692
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x8

    goto :goto_b

    :cond_b
    and-int/lit8 v0, v0, -0x9

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13693
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x20

    goto :goto_c

    :cond_c
    and-int/lit8 v0, v0, -0x21

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13694
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x40

    goto :goto_d

    :cond_d
    and-int/lit8 v0, v0, -0x41

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13695
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->restricted_sponsored:Z

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x800

    goto :goto_e

    :cond_e
    and-int/lit16 v0, v0, -0x801

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13696
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_revenue:Z

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x1000

    goto :goto_f

    :cond_f
    and-int/lit16 v0, v0, -0x1001

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13697
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    goto :goto_10

    :cond_10
    and-int/lit16 v0, v0, -0x4001

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13698
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stars_revenue:Z

    const v8, 0x8000

    if-eqz v1, :cond_11

    or-int/2addr v0, v8

    goto :goto_11

    :cond_11
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13699
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v1, :cond_12

    or-int/2addr v0, v3

    goto :goto_12

    :cond_12
    and-int/2addr v0, v2

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13700
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_available:Z

    if-eqz v1, :cond_13

    or-int/2addr v0, v5

    goto :goto_13

    :cond_13
    and-int/2addr v0, v4

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13701
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_messages_available:Z

    if-eqz v1, :cond_14

    or-int/2addr v0, v7

    goto :goto_14

    :cond_14
    and-int/2addr v0, v6

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 13702
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13703
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 13704
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 13705
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    .line 13706
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13708
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    .line 13709
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13711
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17

    .line 13712
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13714
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    .line 13715
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13717
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_19

    .line 13718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13720
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13721
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13722
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13723
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13724
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13725
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 13726
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13728
    :cond_1a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 13729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1b

    .line 13730
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 13732
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1c

    .line 13733
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13735
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1d

    .line 13736
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13738
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1e

    .line 13739
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13741
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1f

    .line 13742
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13744
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_20

    .line 13745
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13747
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_21

    .line 13748
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 13750
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_22

    .line 13751
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13753
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 13754
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13756
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 13757
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_next_send_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13759
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_25

    .line 13760
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13762
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13763
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 13764
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13766
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_27

    .line 13767
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13769
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_28

    .line 13770
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 13772
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    .line 13773
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13775
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    .line 13776
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 13778
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 13779
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13781
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 13782
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 13784
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 13785
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13787
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_2e

    .line 13788
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13790
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2f

    .line 13791
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->reactions_limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13793
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_30

    .line 13794
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13796
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_31

    .line 13797
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13799
    :cond_31
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_32

    .line 13800
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13802
    :cond_32
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_33

    .line 13803
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13805
    :cond_33
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_34

    .line 13806
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13808
    :cond_34
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_35

    .line 13809
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 13811
    :cond_35
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_36

    .line 13812
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 13814
    :cond_36
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 13815
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_37
    return-void
.end method
