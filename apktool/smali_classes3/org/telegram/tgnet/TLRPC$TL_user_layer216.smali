.class public Lorg/telegram/tgnet/TLRPC$TL_user_layer216;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_layer216"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22523
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 8

    .line 22527
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 22528
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 22529
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 22530
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 22531
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 22532
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    const v1, 0x8000

    and-int v4, v0, v1

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    .line 22533
    :goto_5
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    const/high16 v4, 0x10000

    and-int v5, v0, v4

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_6

    :cond_6
    move v5, v2

    .line 22534
    :goto_6
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_7

    :cond_7
    move v5, v2

    .line 22535
    :goto_7
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    const/high16 v5, 0x40000

    and-int v6, v0, v5

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_8

    :cond_8
    move v6, v2

    .line 22536
    :goto_8
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v6, 0x100000

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    move v6, v3

    goto :goto_9

    :cond_9
    move v6, v2

    .line 22537
    :goto_9
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    const/high16 v6, 0x200000

    and-int/2addr v6, v0

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_a

    :cond_a
    move v6, v2

    .line 22538
    :goto_a
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    const/high16 v6, 0x800000

    and-int/2addr v6, v0

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_b

    :cond_b
    move v6, v2

    .line 22539
    :goto_b
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->support:Z

    const/high16 v6, 0x1000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_c

    :cond_c
    move v6, v2

    .line 22540
    :goto_c
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    const/high16 v6, 0x2000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_d

    move v6, v3

    goto :goto_d

    :cond_d
    move v6, v2

    .line 22541
    :goto_d
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->apply_min_photo:Z

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_e

    :cond_e
    move v6, v2

    .line 22542
    :goto_e
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    const/high16 v6, 0x8000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_f

    move v6, v3

    goto :goto_f

    :cond_f
    move v6, v2

    .line 22543
    :goto_f
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_attach_menu:Z

    const/high16 v6, 0x10000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_10

    move v6, v3

    goto :goto_10

    :cond_10
    move v6, v2

    .line 22544
    :goto_10
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    const/high16 v6, 0x20000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_11

    :cond_11
    move v0, v2

    .line 22545
    :goto_11
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->attach_menu_enabled:Z

    .line 22546
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_12

    move v6, v3

    goto :goto_12

    :cond_12
    move v6, v2

    .line 22547
    :goto_12
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_13

    move v6, v3

    goto :goto_13

    :cond_13
    move v6, v2

    .line 22548
    :goto_13
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_14

    move v6, v3

    goto :goto_14

    :cond_14
    move v6, v2

    .line 22549
    :goto_14
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_15

    move v6, v3

    goto :goto_15

    :cond_15
    move v6, v2

    .line 22550
    :goto_15
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_16

    move v6, v3

    goto :goto_16

    :cond_16
    move v6, v2

    .line 22551
    :goto_16
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_17

    move v6, v3

    goto :goto_17

    :cond_17
    move v6, v2

    .line 22552
    :goto_17
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_18

    move v2, v3

    .line 22553
    :cond_18
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    .line 22554
    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_forum_view:Z

    .line 22556
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 22557
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_19

    .line 22558
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    .line 22560
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    .line 22561
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 22563
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    .line 22564
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 22566
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1c

    .line 22567
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 22569
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1d

    .line 22570
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 22572
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1e

    .line 22573
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 22575
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1f

    .line 22576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 22578
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_20

    .line 22579
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    .line 22581
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_21

    .line 22582
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    .line 22584
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_22

    .line 22585
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    .line 22587
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_23

    .line 22588
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->lang_code:Ljava/lang/String;

    .line 22590
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_24

    .line 22591
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 22593
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_25

    .line 22594
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    .line 22597
    :cond_25
    :try_start_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_26

    .line 22598
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentStory;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    .line 22599
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    .line 22600
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v0

    .line 22603
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 22605
    :cond_26
    :goto_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    .line 22606
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 22608
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_28

    .line 22609
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 22611
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_29

    .line 22612
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    .line 22614
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2a

    .line 22615
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    .line 22617
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 22618
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    :cond_2b
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    .line 22623
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 22624
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :cond_0
    const v0, 0x20b1422

    .line 22626
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22627
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, -0x401

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22628
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v0, -0x801

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22629
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v0, -0x1001

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22630
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_4
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22631
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_5
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22632
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    const v2, 0x8000

    if-eqz v1, :cond_6

    or-int/2addr v0, v2

    goto :goto_5

    :cond_6
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22633
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    const/high16 v3, 0x10000

    if-eqz v1, :cond_7

    or-int/2addr v0, v3

    goto :goto_6

    :cond_7
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22634
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_8
    const v1, -0x20001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22635
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v4, 0x40000

    if-eqz v1, :cond_9

    or-int/2addr v0, v4

    goto :goto_8

    :cond_9
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22636
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_a
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22637
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_a

    :cond_b
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22638
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->support:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_b

    :cond_c
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22639
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_d
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22640
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->apply_min_photo:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_e
    const v1, -0x2000001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22641
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v1, :cond_f

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_f
    const v1, -0x4000001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22642
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_attach_menu:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_10
    const v1, -0x8000001

    and-int/2addr v0, v1

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22643
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_11
    const v1, -0x10000001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22644
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->attach_menu_enabled:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_12
    const v1, -0x20000001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 22645
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22646
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_12

    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, -0x3

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22647
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x4

    goto :goto_13

    :cond_14
    and-int/lit8 v0, v0, -0x5

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22648
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x8

    goto :goto_14

    :cond_15
    and-int/lit8 v0, v0, -0x9

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22649
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x10

    goto :goto_15

    :cond_16
    and-int/lit8 v0, v0, -0x11

    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22650
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-eqz v1, :cond_17

    or-int/lit16 v0, v0, 0x400

    goto :goto_16

    :cond_17
    and-int/lit16 v0, v0, -0x401

    :goto_16
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22651
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    if-eqz v1, :cond_18

    or-int/lit16 v0, v0, 0x800

    goto :goto_17

    :cond_18
    and-int/lit16 v0, v0, -0x801

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22652
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v1, :cond_19

    or-int/lit16 v0, v0, 0x2000

    goto :goto_18

    :cond_19
    and-int/lit16 v0, v0, -0x2001

    :goto_18
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22653
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_forum_view:Z

    invoke-static {v0, v3, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 22654
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22655
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 22656
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 22657
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 22659
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 22660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22662
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    .line 22663
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22665
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1d

    .line 22666
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22668
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1e

    .line 22669
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22671
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1f

    .line 22672
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 22674
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_20

    .line 22675
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 22677
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_21

    .line 22678
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22680
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_22

    .line 22681
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 22683
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 22684
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22686
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 22687
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 22689
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 22690
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 22692
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    .line 22693
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 22695
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    .line 22696
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_19

    :cond_27
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    :goto_19
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22698
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 22699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-nez v0, :cond_29

    .line 22700
    new-instance v0, Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$PeerColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 22702
    :cond_29
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 22704
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2c

    .line 22705
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-nez v0, :cond_2b

    .line 22706
    new-instance v0, Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$PeerColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 22708
    :cond_2b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 22710
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2d

    .line 22711
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 22713
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2e

    .line 22714
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 22716
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2f

    .line 22717
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_2f
    return-void
.end method
