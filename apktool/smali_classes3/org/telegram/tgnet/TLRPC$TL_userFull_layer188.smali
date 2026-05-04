.class public Lorg/telegram/tgnet/TLRPC$TL_userFull_layer188;
.super Lorg/telegram/tgnet/TLRPC$TL_userFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull_layer188"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51075
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 51079
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

    .line 51080
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 51081
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 51082
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 51083
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 51084
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 51085
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 51086
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 51087
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->translations_disabled:Z

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 51088
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 51089
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->blocked_my_stories_from:Z

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 51090
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 51091
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->contact_require_premium:Z

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    move v0, v2

    .line 51092
    :goto_c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->read_dates_private:Z

    .line 51093
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    move v2, v3

    .line 51094
    :cond_d
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->sponsored_enabled:Z

    .line 51095
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 51096
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 51097
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 51099
    :cond_e
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    .line 51100
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 51101
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51103
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 51104
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51106
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 51107
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 51109
    :cond_11
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 51110
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_12

    .line 51111
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 51113
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_13

    .line 51114
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    .line 51116
    :cond_13
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    .line 51117
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_14

    .line 51118
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    .line 51120
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_15

    .line 51121
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    .line 51123
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 51124
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$ChatTheme;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$ChatTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 51126
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 51127
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    .line 51129
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 51130
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 51132
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 51133
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 51135
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 51136
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    .line 51138
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 51139
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 51141
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 51142
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 51144
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1d

    .line 51145
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    .line 51147
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    .line 51148
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    .line 51150
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    .line 51151
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 51153
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_20

    .line 51154
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 51156
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_21

    .line 51157
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    .line 51159
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_22

    .line 51160
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    .line 51162
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_23

    .line 51163
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    .line 51164
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    :cond_23
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, -0x336688e0    # -8.046003E7f

    .line 51169
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51170
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

    .line 51171
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51172
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_private:Z

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51173
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->can_pin_message:Z

    if-eqz v2, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51174
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->has_scheduled:Z

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51175
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x2001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 51176
    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$UserFull;->getTheme_emoticon()Ljava/lang/String;

    move-result-object v0

    .line 51177
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

    .line 51178
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

    .line 51179
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

    .line 51180
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

    .line 51181
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

    .line 51182
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

    .line 51183
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

    .line 51184
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

    .line 51185
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51186
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

    .line 51187
    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51188
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 51189
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 51190
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51192
    :cond_f
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51193
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 51194
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51196
    :cond_10
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    .line 51197
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51199
    :cond_11
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 51200
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51202
    :cond_12
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51203
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_13

    .line 51204
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51206
    :cond_13
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_14

    .line 51207
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->pinned_msg_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51209
    :cond_14
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->common_chats_count:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51210
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_15

    .line 51211
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->folder_id:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51213
    :cond_15
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_16

    .line 51214
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 51216
    :cond_16
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_17

    .line 51217
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51219
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_18

    .line 51220
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->private_forward_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 51222
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_19

    .line 51223
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51225
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 51226
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51228
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 51229
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 51231
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    .line 51232
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51234
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d

    .line 51235
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51237
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 51238
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51240
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1f

    .line 51241
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51243
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20

    .line 51244
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51246
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_21

    .line 51247
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51249
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    .line 51250
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51252
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_23

    .line 51253
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 51255
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_24

    .line 51256
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 51257
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_24
    return-void
.end method
