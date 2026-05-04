.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176_2;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer176_2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51439
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 51443
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

    .line 51444
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 51445
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 51446
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 51447
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 51448
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 51449
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 51450
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 51451
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 51452
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 51453
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 51454
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 51455
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v2, v3

    .line 51456
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    .line 51457
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 51458
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 51459
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 51460
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 51462
    :cond_d
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 51463
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 51464
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51466
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 51467
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51469
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 51470
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51472
    :cond_10
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 51473
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11

    .line 51474
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 51476
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_12

    .line 51477
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 51479
    :cond_12
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 51480
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13

    .line 51481
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 51483
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_14

    .line 51484
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 51486
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 51487
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 51489
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 51490
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 51492
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 51493
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 51495
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 51496
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 51498
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 51499
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    .line 51501
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 51502
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 51504
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 51505
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 51507
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1c

    .line 51508
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    .line 51510
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 51511
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    .line 51513
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e

    .line 51514
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 51516
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    .line 51517
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 51519
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_20

    .line 51520
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    :cond_20
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, 0x670bbc9c

    .line 51525
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51526
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

    .line 51527
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51528
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51529
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51530
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51531
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51532
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$UserFull;->getTheme_emoticon()Ljava/lang/String;

    move-result-object v0

    .line 51533
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    if-eqz v0, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    const v4, 0x8000

    invoke-static {v2, v4, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51534
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    goto :goto_7

    :cond_7
    const v3, -0x100001

    and-int/2addr v2, v3

    :goto_7
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51535
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    if-eqz v3, :cond_8

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    goto :goto_8

    :cond_8
    const v3, -0x800001

    and-int/2addr v2, v3

    :goto_8
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51536
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-eqz v3, :cond_9

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    goto :goto_9

    :cond_9
    const v3, -0x4000001

    and-int/2addr v2, v3

    :goto_9
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51537
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    if-eqz v3, :cond_a

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    goto :goto_a

    :cond_a
    const v3, -0x8000001

    and-int/2addr v2, v3

    :goto_a
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51538
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    if-eqz v3, :cond_b

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    goto :goto_b

    :cond_b
    const v3, -0x10000001

    and-int/2addr v2, v3

    :goto_b
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51539
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-eqz v3, :cond_c

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    goto :goto_c

    :cond_c
    const v3, -0x20000001

    and-int/2addr v2, v3

    :goto_c
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51540
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    if-eqz v3, :cond_d

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    goto :goto_d

    :cond_d
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51541
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51542
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51543
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 51544
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    .line 51545
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51547
    :cond_e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51548
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 51549
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51551
    :cond_f
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    .line 51552
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51554
    :cond_10
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 51555
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51557
    :cond_11
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51558
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_12

    .line 51559
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51561
    :cond_12
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_13

    .line 51562
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51564
    :cond_13
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51565
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_14

    .line 51566
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51568
    :cond_14
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_15

    .line 51569
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51571
    :cond_15
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_16

    .line 51572
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51574
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    .line 51575
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51577
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_18

    .line 51578
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51580
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_19

    .line 51581
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51583
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 51584
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 51586
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 51587
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51589
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    .line 51590
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51592
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 51593
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51595
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    .line 51596
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51598
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    .line 51599
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51601
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_20

    .line 51602
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51604
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_21

    .line 51605
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_21
    return-void
.end method
