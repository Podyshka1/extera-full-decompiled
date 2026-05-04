.class public abstract Lorg/telegram/tgnet/TLRPC$UserFull;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserFull"
.end annotation


# instance fields
.field public about:Ljava/lang/String;

.field public birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field public blocked:Z

.field public blocked_my_stories_from:Z

.field public bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public bot_can_manage_emoji_status:Z

.field public bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

.field public bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

.field public business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

.field public business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

.field public business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

.field public business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

.field public business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

.field public can_pin_message:Z

.field public can_view_revenue:Z

.field public common_chats_count:I

.field public contact_require_premium:Z

.field public disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

.field public display_gifts_button:Z

.field public fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public flags:I

.field public flags2:I

.field public folder_id:I

.field public has_scheduled:Z

.field public id:J

.field public link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;

.field public main_tab:Lorg/telegram/tgnet/TLRPC$ProfileTab;

.field public noforwards_my_enabled:Z

.field public noforwards_peer_enabled:Z

.field public note:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public personal_channel_id:J

.field public personal_channel_message:I

.field public personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public phone_calls_available:Z

.field public phone_calls_private:Z

.field public pinned_msg_id:I

.field public premium_gifts:Ljava/util/ArrayList;

.field public private_forward_name:Ljava/lang/String;

.field public profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public read_dates_private:Z

.field public saved_music:Lorg/telegram/tgnet/TLRPC$Document;

.field public send_paid_messages_stars:J

.field public settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

.field public sponsored_enabled:Z

.field public stargifts_count:I

.field public starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

.field public stars_my_pending_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

.field public stars_my_pending_rating_date:I

.field public stars_rating:Lorg/telegram/tgnet/tl/TL_stars$Tl_starsRating;

.field public stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field public stories_pinned_available:Z

.field public theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

.field public translations_disabled:Z

.field public ttl_period:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;

.field public video_calls_available:Z

.field public voice_messages_forbidden:Z

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public wallpaper_overridden:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48458
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 48498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserFull;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 48535
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer212;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer212;-><init>()V

    goto/16 :goto_0

    .line 48601
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer101;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer101;-><init>()V

    goto/16 :goto_0

    .line 48565
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176_2;-><init>()V

    goto/16 :goto_0

    .line 48574
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer162;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer162;-><init>()V

    goto/16 :goto_0

    .line 48550
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer199;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer199;-><init>()V

    goto/16 :goto_0

    .line 48532
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer213;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer213;-><init>()V

    goto/16 :goto_0

    .line 48538
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer210;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer210;-><init>()V

    goto/16 :goto_0

    .line 48568
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176;-><init>()V

    goto/16 :goto_0

    .line 48556
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer194;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer194;-><init>()V

    goto/16 :goto_0

    .line 48598
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer131;-><init>()V

    goto/16 :goto_0

    .line 48580
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer156;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer156;-><init>()V

    goto/16 :goto_0

    .line 48607
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer123;-><init>()V

    goto/16 :goto_0

    .line 48562
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176_3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer176_3;-><init>()V

    goto :goto_0

    .line 48583
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150_rev2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150_rev2;-><init>()V

    goto :goto_0

    .line 48595
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer134;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer134;-><init>()V

    goto :goto_0

    .line 48544
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer200;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer200;-><init>()V

    goto :goto_0

    .line 48592
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer139;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer139;-><init>()V

    goto :goto_0

    .line 48559
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer188;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer188;-><init>()V

    goto :goto_0

    .line 48529
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer215;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer215;-><init>()V

    goto :goto_0

    .line 48586
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150;-><init>()V

    goto :goto_0

    .line 48571
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer175;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer175;-><init>()V

    goto :goto_0

    .line 48526
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    goto :goto_0

    .line 48541
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer209;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer209;-><init>()V

    goto :goto_0

    .line 48553
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer195;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer195;-><init>()V

    goto :goto_0

    .line 48577
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer159;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer159;-><init>()V

    goto :goto_0

    .line 48604
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer98;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer98;-><init>()V

    goto :goto_0

    .line 48589
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer143;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer143;-><init>()V

    goto :goto_0

    .line 48547
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer199_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer199_2;-><init>()V

    .line 48610
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$UserFull;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserFull;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7aaa0c3e -> :sswitch_1b
        -0x738d157f -> :sswitch_1a
        -0x715b577f -> :sswitch_19
        -0x6c1524ad -> :sswitch_18
        -0x6862dc8a -> :sswitch_17
        -0x66187fbb -> :sswitch_16
        -0x5fd43ec2 -> :sswitch_15
        -0x464ed394 -> :sswitch_14
        -0x3b4e03c1 -> :sswitch_13
        -0x3a884a53 -> :sswitch_12
        -0x336688e0 -> :sswitch_11
        -0x30c99adf -> :sswitch_10
        -0x2ddcb160 -> :sswitch_f
        -0x296800fb -> :sswitch_e
        -0x1392be1d -> :sswitch_d
        -0x13252315 -> :sswitch_c
        -0x120e83ee -> :sswitch_b
        -0x72cd513 -> :sswitch_a
        0x139a9a77 -> :sswitch_9
        0x1f58e369 -> :sswitch_8
        0x22ff3e85 -> :sswitch_7
        0x29de80be -> :sswitch_6
        0x3fd81e28 -> :sswitch_5
        0x4d975bbc -> :sswitch_4
        0x4fe1cc86 -> :sswitch_3
        0x670bbc9c -> :sswitch_2
        0x745559cc -> :sswitch_1
        0x7e63ce1f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getTheme_emoticon()Ljava/lang/String;
    .locals 2

    .line 48615
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;

    if-eqz v1, :cond_0

    .line 48616
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;->emoticon:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
