.class public abstract Lorg/telegram/tgnet/TLRPC$Chat;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Chat"
.end annotation


# instance fields
.field public access_hash:J

.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public admin_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

.field public autotranslation:Z

.field public banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public banned_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;

.field public bot_verification_icon:J

.field public broadcast:Z

.field public broadcast_messages_allowed:Z

.field public call_active:Z

.field public call_not_empty:Z

.field public color:Lorg/telegram/tgnet/TLRPC$PeerColor;

.field public creator:Z

.field public date:I

.field public deactivated:Z

.field public default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

.field public explicit_content:Z

.field public fake:Z

.field public flags:I

.field public flags2:I

.field public forum:Z

.field public forum_tabs:Z

.field public gigagroup:Z

.field public has_geo:Z

.field public has_link:Z

.field public id:J

.field public join_request:Z

.field public join_to_send:Z

.field public kicked:Z

.field public left:Z

.field public level:I

.field public linked_monoforum_id:J

.field public megagroup:Z

.field public migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public min:Z

.field public moderator:Z

.field public monoforum:Z

.field public noforwards:Z

.field public participants_count:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

.field public restricted:Z

.field public restriction_reason:Ljava/util/ArrayList;

.field public scam:Z

.field public send_paid_messages_stars:J

.field public signature_profiles:Z

.field public signatures:Z

.field public slowmode_enabled:Z

.field public stories_hidden:Z

.field public stories_hidden_min:Z

.field public stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

.field public stories_unavailable:Z

.field public subscription_until_date:I

.field public title:Ljava/lang/String;

.field public until_date:I

.field public username:Ljava/lang/String;

.field public usernames:Ljava/util/ArrayList;

.field public verified:Z

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42770
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 42804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    .line 42831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    const/4 v0, 0x1

    .line 42834
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    return-object p0
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZZ)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 p3, 0x0

    goto/16 :goto_0

    .line 42859
    :sswitch_0
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer203;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer203;-><init>()V

    goto/16 :goto_0

    .line 42928
    :sswitch_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;-><init>()V

    goto/16 :goto_0

    .line 42943
    :sswitch_2
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chat_old;-><init>()V

    goto/16 :goto_0

    .line 42904
    :sswitch_3
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_old;-><init>()V

    goto/16 :goto_0

    .line 42946
    :sswitch_4
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;-><init>()V

    goto/16 :goto_0

    .line 42850
    :sswitch_5
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer104;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer104;-><init>()V

    goto/16 :goto_0

    .line 42901
    :sswitch_6
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;-><init>()V

    goto/16 :goto_0

    .line 42865
    :sswitch_7
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer196_1;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer196_1;-><init>()V

    goto/16 :goto_0

    .line 42889
    :sswitch_8
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;-><init>()V

    goto/16 :goto_0

    .line 42895
    :sswitch_9
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    goto/16 :goto_0

    .line 42922
    :sswitch_a
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chat_layer131;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chat_layer131;-><init>()V

    goto/16 :goto_0

    .line 42841
    :sswitch_b
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;-><init>()V

    goto/16 :goto_0

    .line 42892
    :sswitch_c
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;-><init>()V

    goto/16 :goto_0

    .line 42925
    :sswitch_d
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer131;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer131;-><init>()V

    goto/16 :goto_0

    .line 42853
    :sswitch_e
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    goto/16 :goto_0

    .line 42883
    :sswitch_f
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer166;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer166;-><init>()V

    goto/16 :goto_0

    .line 42919
    :sswitch_10
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    goto/16 :goto_0

    .line 42874
    :sswitch_11
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167_3;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167_3;-><init>()V

    goto/16 :goto_0

    .line 42907
    :sswitch_12
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;-><init>()V

    goto/16 :goto_0

    .line 42871
    :sswitch_13
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer185;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer185;-><init>()V

    goto/16 :goto_0

    .line 42847
    :sswitch_14
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_layer131;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_layer131;-><init>()V

    goto :goto_0

    .line 42856
    :sswitch_15
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer216;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer216;-><init>()V

    goto :goto_0

    .line 42868
    :sswitch_16
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer195;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer195;-><init>()V

    goto :goto_0

    .line 42940
    :sswitch_17
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;-><init>()V

    goto :goto_0

    .line 42862
    :sswitch_18
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer199;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer199;-><init>()V

    goto :goto_0

    .line 42913
    :sswitch_19
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;-><init>()V

    goto :goto_0

    .line 42898
    :sswitch_1a
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer131;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer131;-><init>()V

    goto :goto_0

    .line 42916
    :sswitch_1b
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;-><init>()V

    goto :goto_0

    .line 42877
    :sswitch_1c
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167_2;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167_2;-><init>()V

    goto :goto_0

    .line 42931
    :sswitch_1d
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;-><init>()V

    goto :goto_0

    .line 42844
    :sswitch_1e
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty_layer131;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty_layer131;-><init>()V

    goto :goto_0

    .line 42886
    :sswitch_1f
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer165;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer165;-><init>()V

    goto :goto_0

    .line 42880
    :sswitch_20
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer167;-><init>()V

    goto :goto_0

    .line 42910
    :sswitch_21
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;-><init>()V

    goto :goto_0

    .line 42934
    :sswitch_22
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer161;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer161;-><init>()V

    goto :goto_0

    .line 42937
    :sswitch_23
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channel_layer147;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer147;-><init>()V

    .line 42949
    :goto_0
    const-class v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p3, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7d9e539f -> :sswitch_23
        -0x7cda6b9c -> :sswitch_22
        -0x7ac887b1 -> :sswitch_21
        -0x71783328 -> :sswitch_20
        -0x6b0a6d25 -> :sswitch_1f
        -0x645d2800 -> :sswitch_1e
        -0x5eb235ae -> :sswitch_1d
        -0x59c95c1e -> :sswitch_1c
        -0x37768b54 -> :sswitch_1b
        -0x2ce569e2 -> :sswitch_1a
        -0x26e322ac -> :sswitch_19
        -0x1ff66749 -> :sswitch_18
        -0x4f333bf -> :sswitch_17
        -0x1bb8743 -> :sswitch_16
        -0x197acab -> :sswitch_15
        0x7328bdb -> :sswitch_14
        0xaadfc8f -> :sswitch_13
        0xcb44b1c -> :sswitch_12
        0xdb12acb -> :sswitch_11
        0x17d493d5 -> :sswitch_10
        0x1981ea7e -> :sswitch_f
        0x1c32b11c -> :sswitch_e
        0x289da732 -> :sswitch_d
        0x29562865 -> :sswitch_c
        0x2d85832c -> :sswitch_b
        0x3bda1bde -> :sswitch_a
        0x41cbf256 -> :sswitch_9
        0x450b7115 -> :sswitch_8
        0x46aeac06 -> :sswitch_7
        0x4b1b7506 -> :sswitch_6
        0x4df30834 -> :sswitch_5
        0x6592a1a7 -> :sswitch_4
        0x678e9587 -> :sswitch_3
        0x6e9c9bc7 -> :sswitch_2
        0x7312bc48 -> :sswitch_1
        0x7482147e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static mergeAdminRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42977
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 42978
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 42979
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 42980
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 42981
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 42982
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 42983
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 42984
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 42985
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    return-object v0
.end method

.method protected static mergeBannedRights(Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42956
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 42957
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->view_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 42958
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_messages:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 42959
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_media:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 42960
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_stickers:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 42961
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_gifs:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 42962
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_games:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 42963
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_inline:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 42964
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->embed_links:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 42965
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    const/4 v1, 0x1

    .line 42966
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 42967
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 42968
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 42969
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->until_date:I

    iput p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    return-object v0
.end method
