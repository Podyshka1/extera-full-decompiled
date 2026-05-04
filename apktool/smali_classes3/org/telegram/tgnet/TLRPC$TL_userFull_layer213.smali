.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer213;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer213"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49122
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 9

    .line 49126
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

    .line 49127
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 49128
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 49129
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 49130
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 49131
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 49132
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    const/high16 v1, 0x100000

    and-int v4, v0, v1

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    .line 49133
    :goto_6
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v2

    .line 49134
    :goto_7
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 49135
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 49136
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    .line 49137
    :goto_a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_b

    :cond_b
    move v4, v2

    .line 49138
    :goto_b
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v0, v4

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    move v0, v2

    .line 49139
    :goto_c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    .line 49140
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_d

    :cond_d
    move v4, v2

    .line 49141
    :goto_d
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_e

    :cond_e
    move v4, v2

    .line 49142
    :goto_e
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_f

    :cond_f
    move v4, v2

    .line 49143
    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    move v2, v3

    .line 49144
    :cond_10
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->display_gifts_button:Z

    .line 49145
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 49146
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 49147
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 49149
    :cond_11
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 49150
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    .line 49151
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 49153
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 49154
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 49156
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v5, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    .line 49157
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 49159
    :cond_14
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 49160
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_15

    .line 49161
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 49163
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_16

    .line 49164
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 49166
    :cond_16
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 49167
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_17

    .line 49168
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 49170
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_18

    .line 49171
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 49173
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v5, 0x8000

    and-int/2addr v0, v5

    if-eqz v0, :cond_19

    .line 49174
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 49176
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1a

    .line 49177
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 49179
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1b

    .line 49180
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 49182
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v0, v6

    if-eqz v0, :cond_1c

    .line 49183
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 49185
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v7, 0x1000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_1d

    .line 49186
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 49188
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v7, 0x2000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_1e

    .line 49189
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 49191
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1f

    .line 49192
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    .line 49194
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    .line 49195
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    .line 49197
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    .line 49198
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 49200
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    .line 49201
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 49203
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_23

    .line 49204
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    .line 49206
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_24

    .line 49207
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 49209
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_25

    .line 49210
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    .line 49211
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    .line 49213
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_26

    .line 49214
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    .line 49216
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_27

    .line 49217
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    .line 49219
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_28

    .line 49220
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    .line 49222
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_29

    .line 49223
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    .line 49225
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2a

    .line 49226
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    .line 49228
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 49229
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    .line 49231
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v6}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 49232
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    .line 49233
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating_date:I

    .line 49235
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 49236
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ProfileTab;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ProfileTab;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    .line 49238
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 49239
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_2e
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 10

    const v0, 0x3fd81e28

    .line 49244
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49245
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

    .line 49246
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49247
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49248
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49249
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49250
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49251
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$UserFull;->getTheme_emoticon()Ljava/lang/String;

    move-result-object v0

    .line 49252
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    move v4, v1

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    const v5, 0x8000

    invoke-static {v2, v5, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49253
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v6, 0x100000

    if-eqz v4, :cond_7

    or-int/2addr v2, v6

    goto :goto_7

    :cond_7
    const v4, -0x100001

    and-int/2addr v2, v4

    :goto_7
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49254
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    if-eqz v4, :cond_8

    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    goto :goto_8

    :cond_8
    const v4, -0x800001

    and-int/2addr v2, v4

    :goto_8
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49255
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-eqz v4, :cond_9

    const/high16 v4, 0x4000000

    or-int/2addr v2, v4

    goto :goto_9

    :cond_9
    const v4, -0x4000001

    and-int/2addr v2, v4

    :goto_9
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49256
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    if-eqz v4, :cond_a

    const/high16 v4, 0x8000000

    or-int/2addr v2, v4

    goto :goto_a

    :cond_a
    const v4, -0x8000001

    and-int/2addr v2, v4

    :goto_a
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49257
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    if-eqz v4, :cond_b

    const/high16 v4, 0x10000000

    or-int/2addr v2, v4

    goto :goto_b

    :cond_b
    const v4, -0x10000001

    and-int/2addr v2, v4

    :goto_b
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49258
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    if-eqz v4, :cond_c

    const/high16 v4, 0x20000000

    or-int/2addr v2, v4

    goto :goto_c

    :cond_c
    const v4, -0x20000001

    and-int/2addr v2, v4

    :goto_c
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49259
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    if-eqz v4, :cond_d

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    goto :goto_d

    :cond_d
    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v2, v4

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 49260
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49261
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

    .line 49262
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_view_revenue:Z

    if-eqz v4, :cond_f

    or-int/lit16 v2, v2, 0x200

    goto :goto_f

    :cond_f
    and-int/lit16 v2, v2, -0x201

    :goto_f
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49263
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_can_manage_emoji_status:Z

    if-eqz v4, :cond_10

    or-int/lit16 v2, v2, 0x400

    goto :goto_10

    :cond_10
    and-int/lit16 v2, v2, -0x401

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49264
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->display_gifts_button:Z

    const/high16 v7, 0x10000

    if-eqz v4, :cond_11

    or-int/2addr v2, v7

    goto :goto_11

    :cond_11
    const v4, -0x10001

    and-int/2addr v2, v4

    :goto_11
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49265
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    if-eqz v4, :cond_12

    move v4, v1

    goto :goto_12

    :cond_12
    move v4, v3

    :goto_12
    const/high16 v8, 0x20000

    invoke-static {v2, v8, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49266
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    if-eqz v4, :cond_13

    move v4, v1

    goto :goto_13

    :cond_13
    move v4, v3

    :goto_13
    const/high16 v9, 0x40000

    invoke-static {v2, v9, v4}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49267
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    if-eqz v4, :cond_14

    move v3, v1

    :cond_14
    invoke-static {v2, v6, v3}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 49268
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49269
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49270
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_15

    .line 49271
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 49273
    :cond_15
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49274
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 49275
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49277
    :cond_16
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    .line 49278
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49280
    :cond_17
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    if-eqz v2, :cond_18

    .line 49281
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49283
    :cond_18
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49284
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 49285
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49287
    :cond_19
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1a

    .line 49288
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49290
    :cond_1a
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49291
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_1b

    .line 49292
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49294
    :cond_1b
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1c

    .line 49295
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49297
    :cond_1c
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1d

    .line 49298
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 49300
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1e

    .line 49301
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 49303
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_1f

    .line 49304
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49306
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_20

    .line 49307
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49309
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_21

    .line 49310
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49312
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_22

    .line 49313
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49315
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 49316
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49318
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    .line 49319
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49321
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25

    .line 49322
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49324
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_26

    .line 49325
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49327
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_27

    .line 49328
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49330
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    .line 49331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49333
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_29

    .line 49334
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49337
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 49338
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49340
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2b

    .line 49341
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49343
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2c

    .line 49344
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49346
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2d

    .line 49347
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 49349
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2e

    .line 49350
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49352
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v8}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 49353
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49355
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v9}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 49356
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49357
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stars_my_pending_rating_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 49359
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v6}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 49360
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 49362
    :cond_31
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    invoke-static {v0, v3}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 49363
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_32
    return-void
.end method
