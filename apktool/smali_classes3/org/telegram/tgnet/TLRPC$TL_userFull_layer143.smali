.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer143;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer143"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52498
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 52502
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 52503
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 52504
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 52505
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 52506
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 52507
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5

    move v2, v3

    .line 52508
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    .line 52509
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 52510
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 52511
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 52513
    :cond_6
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 52514
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 52515
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 52517
    :cond_7
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 52518
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 52519
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 52521
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 52522
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 52524
    :cond_9
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 52525
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    .line 52526
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 52528
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    .line 52529
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 52531
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 52532
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 52534
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 52535
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 52537
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 52538
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 52540
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 52541
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :cond_f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 4

    const v0, -0x738d157f

    .line 52546
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52547
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52548
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52549
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52550
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52551
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52552
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52553
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$UserFull;->getTheme_emoticon()Ljava/lang/String;

    move-result-object v0

    .line 52554
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    const v3, 0x8000

    invoke-static {v2, v3, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v1

    iput v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 52555
    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52556
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 52557
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 52558
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 52560
    :cond_7
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 52561
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 52562
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 52564
    :cond_8
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 52565
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 52566
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 52568
    :cond_9
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 52569
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52571
    :cond_a
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52572
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 52573
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52575
    :cond_b
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_c

    .line 52576
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 52578
    :cond_c
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_d

    .line 52579
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 52581
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 52582
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 52584
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 52585
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 52587
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 52588
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_10
    return-void
.end method
