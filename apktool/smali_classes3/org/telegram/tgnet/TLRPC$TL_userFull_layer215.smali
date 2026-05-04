.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer215;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer215"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48877
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 9

    .line 48881
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

    .line 48882
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 48883
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 48884
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 48885
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 48886
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 48887
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    const/high16 v1, 0x100000

    and-int v4, v0, v1

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    .line 48888
    :goto_6
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v2

    .line 48889
    :goto_7
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 48890
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 48891
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    .line 48892
    :goto_a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_b

    :cond_b
    move v4, v2

    .line 48893
    :goto_b
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v0, v4

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    move v0, v2

    .line 48894
    :goto_c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    .line 48895
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_d

    :cond_d
    move v4, v2

    .line 48896
    :goto_d
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_e

    :cond_e
    move v4, v2

    .line 48897
    :goto_e
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_f

    :cond_f
    move v4, v2

    .line 48898
    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    move v2, v3

    .line 48899
    :cond_10
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->display_gifts_button:Z

    .line 48900
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 48901
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 48902
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 48904
    :cond_11
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 48905
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    .line 48906
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 48908
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 48909
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 48911
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v5, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    .line 48912
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 48914
    :cond_14
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 48915
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_15

    .line 48916
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 48918
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_16

    .line 48919
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 48921
    :cond_16
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 48922
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_17

    .line 48923
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 48925
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_18

    .line 48926
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 48928
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v5, 0x8000

    invoke-static {v0, v5}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 48929
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 48931
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1a

    .line 48932
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 48934
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1b

    .line 48935
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 48937
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v0, v6

    if-eqz v0, :cond_1c

    .line 48938
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 48940
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v7, 0x1000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_1d

    .line 48941
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 48943
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v7, 0x2000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_1e

    .line 48944
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 48946
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1f

    .line 48947
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    .line 48949
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    .line 48950
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    .line 48952
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    .line 48953
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 48955
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    .line 48956
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 48958
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_23

    .line 48959
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    .line 48961
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_24

    .line 48962
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 48964
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_25

    .line 48965
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    .line 48966
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    .line 48968
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_26

    .line 48969
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    .line 48971
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_27

    .line 48972
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    .line 48974
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_28

    .line 48975
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    .line 48977
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_29

    .line 48978
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    .line 48980
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2a

    .line 48981
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    .line 48983
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 48984
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    .line 48986
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v6}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 48987
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    .line 48988
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating_date:I

    .line 48990
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 48991
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ProfileTab;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ProfileTab;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    .line 48993
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 48994
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_2e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 9

    const v0, -0x3a884a53

    .line 48999
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49000
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

    .line 49001
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49002
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49003
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49004
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49005
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49006
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    const v4, 0x8000

    invoke-static {v0, v4, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49007
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v5, 0x100000

    if-eqz v2, :cond_7

    or-int/2addr v0, v5

    goto :goto_7

    :cond_7
    const v2, -0x100001

    and-int/2addr v0, v2

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49008
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    if-eqz v2, :cond_8

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    goto :goto_8

    :cond_8
    const v2, -0x800001

    and-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49009
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-eqz v2, :cond_9

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    goto :goto_9

    :cond_9
    const v2, -0x4000001

    and-int/2addr v0, v2

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49010
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    if-eqz v2, :cond_a

    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    goto :goto_a

    :cond_a
    const v2, -0x8000001

    and-int/2addr v0, v2

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49011
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    if-eqz v2, :cond_b

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    goto :goto_b

    :cond_b
    const v2, -0x10000001

    and-int/2addr v0, v2

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49012
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-eqz v2, :cond_c

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    goto :goto_c

    :cond_c
    const v2, -0x20000001

    and-int/2addr v0, v2

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49013
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    if-eqz v2, :cond_d

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    goto :goto_d

    :cond_d
    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49014
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49015
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit16 v0, v0, 0x80

    goto :goto_e

    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, -0x81

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49016
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    if-eqz v2, :cond_f

    or-int/lit16 v0, v0, 0x200

    goto :goto_f

    :cond_f
    and-int/lit16 v0, v0, -0x201

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49017
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    if-eqz v2, :cond_10

    or-int/lit16 v0, v0, 0x400

    goto :goto_10

    :cond_10
    and-int/lit16 v0, v0, -0x401

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49018
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->display_gifts_button:Z

    const/high16 v6, 0x10000

    if-eqz v2, :cond_11

    or-int/2addr v0, v6

    goto :goto_11

    :cond_11
    const v2, -0x10001

    and-int/2addr v0, v2

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49019
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    if-eqz v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    move v2, v3

    :goto_12
    const/high16 v7, 0x20000

    invoke-static {v0, v7, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49020
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    if-eqz v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    move v2, v3

    :goto_13
    const/high16 v8, 0x40000

    invoke-static {v0, v8, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49021
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    if-eqz v2, :cond_14

    move v3, v1

    :cond_14
    invoke-static {v0, v5, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49022
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49023
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49024
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .line 49025
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 49027
    :cond_15
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49028
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    .line 49029
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49031
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17

    .line 49032
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49034
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_18

    .line 49035
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49037
    :cond_18
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    .line 49039
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49041
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1a

    .line 49042
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49044
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49045
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1b

    .line 49046
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49048
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1c

    .line 49049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49051
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 49052
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49054
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_1e

    .line 49055
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 49057
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1f

    .line 49058
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49060
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_20

    .line 49061
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49063
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_21

    .line 49064
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49066
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    .line 49067
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49069
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 49070
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49072
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    .line 49073
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49075
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25

    .line 49076
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49078
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_26

    .line 49079
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49081
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_27

    .line 49082
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49084
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    .line 49085
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49087
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_29

    .line 49088
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49091
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 49092
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49094
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2b

    .line 49095
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49097
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2c

    .line 49098
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49100
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2d

    .line 49101
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49103
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2e

    .line 49104
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49106
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v7}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 49107
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49109
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v8}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 49110
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49111
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49113
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v5}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 49114
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49116
    :cond_31
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 49117
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_32
    return-void
.end method
