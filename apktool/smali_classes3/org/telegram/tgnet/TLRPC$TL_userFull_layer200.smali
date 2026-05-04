.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer200;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer200"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50042
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 50046
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

    .line 50047
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 50048
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 50049
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 50050
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 50051
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 50052
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 50053
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 50054
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 50055
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 50056
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 50057
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 50058
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    move v0, v2

    .line 50059
    :goto_c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    .line 50060
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_d

    :cond_d
    move v1, v2

    .line 50061
    :goto_d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_e

    :cond_e
    move v1, v2

    .line 50062
    :goto_e
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_f

    move v2, v3

    .line 50063
    :cond_f
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    .line 50064
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 50065
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 50066
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 50068
    :cond_10
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 50069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 50070
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 50072
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 50073
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 50075
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 50076
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 50078
    :cond_13
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 50079
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    .line 50080
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 50082
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_15

    .line 50083
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 50085
    :cond_15
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 50086
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_16

    .line 50087
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 50089
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_17

    .line 50090
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 50092
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 50093
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 50095
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 50096
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 50098
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 50099
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 50101
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 50102
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 50104
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 50105
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 50107
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 50108
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 50110
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1e

    .line 50111
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    .line 50113
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1f

    .line 50114
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    .line 50116
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20

    .line 50117
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 50119
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_21

    .line 50120
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 50122
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    .line 50123
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    .line 50125
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_23

    .line 50126
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 50128
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_24

    .line 50129
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    .line 50130
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    .line 50132
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_25

    .line 50133
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    .line 50135
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_26

    .line 50136
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    .line 50138
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_27

    .line 50139
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    .line 50141
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_28

    .line 50142
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    :cond_28
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, -0x2ddcb160

    .line 50147
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50148
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

    .line 50149
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 50150
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 50151
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 50152
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 50153
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 50154
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$UserFull;->getTheme_emoticon()Ljava/lang/String;

    move-result-object v0

    .line 50155
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

    .line 50156
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

    .line 50157
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

    .line 50158
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

    .line 50159
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

    .line 50160
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

    .line 50161
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

    .line 50162
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

    .line 50163
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50164
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit16 v2, v2, 0x80

    goto :goto_e

    :cond_e
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v2, v2, -0x81

    :goto_e
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 50165
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    if-eqz v3, :cond_f

    or-int/lit16 v2, v2, 0x200

    goto :goto_f

    :cond_f
    and-int/lit16 v2, v2, -0x201

    :goto_f
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 50166
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    if-eqz v3, :cond_10

    or-int/lit16 v2, v2, 0x400

    goto :goto_10

    :cond_10
    and-int/lit16 v2, v2, -0x401

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 50167
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50168
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 50169
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    .line 50170
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 50172
    :cond_11
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50173
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 50174
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50176
    :cond_12
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_13

    .line 50177
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50179
    :cond_13
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    .line 50180
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50182
    :cond_14
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50183
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_15

    .line 50184
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50186
    :cond_15
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_16

    .line 50187
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50189
    :cond_16
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50190
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_17

    .line 50191
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50193
    :cond_17
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_18

    .line 50194
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50196
    :cond_18
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_19

    .line 50197
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 50199
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 50200
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 50202
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 50203
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50205
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    .line 50206
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50208
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d

    .line 50209
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50211
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    .line 50212
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50214
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 50215
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50217
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    .line 50218
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50220
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    .line 50221
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50223
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    .line 50224
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50226
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_23

    .line 50227
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50229
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_24

    .line 50230
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50232
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_25

    .line 50233
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 50234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50236
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_26

    .line 50237
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 50239
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_27

    .line 50240
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50242
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_28

    .line 50243
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 50245
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_29

    .line 50246
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_29
    return-void
.end method
