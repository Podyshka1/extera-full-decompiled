.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer216;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer216"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43772
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 7

    .line 43776
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 43777
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 43778
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 43779
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 43780
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 43781
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 43782
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 43783
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 43784
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    const/high16 v1, 0x80000

    and-int v4, v0, v1

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 43785
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 43786
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    .line 43787
    :goto_a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_b

    :cond_b
    move v4, v2

    .line 43788
    :goto_b
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    move v4, v3

    goto :goto_c

    :cond_c
    move v4, v2

    .line 43789
    :goto_c
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_d

    :cond_d
    move v4, v2

    .line 43790
    :goto_d
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_e

    :cond_e
    move v4, v2

    .line 43791
    :goto_e
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_f

    :cond_f
    move v4, v2

    .line 43792
    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    move v4, v3

    goto :goto_10

    :cond_10
    move v4, v2

    .line 43793
    :goto_10
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_11

    :cond_11
    move v4, v2

    .line 43794
    :goto_11
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    move v4, v3

    goto :goto_12

    :cond_12
    move v4, v2

    .line 43795
    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v0, v4

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_13

    :cond_13
    move v0, v2

    .line 43796
    :goto_13
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    .line 43797
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_14

    move v4, v3

    goto :goto_14

    :cond_14
    move v4, v2

    .line 43798
    :goto_14
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_15

    move v4, v3

    goto :goto_15

    :cond_15
    move v4, v2

    .line 43799
    :goto_15
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_16

    :cond_16
    move v4, v2

    .line 43800
    :goto_16
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_17

    move v4, v3

    goto :goto_17

    :cond_17
    move v4, v2

    .line 43801
    :goto_17
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    const v4, 0x8000

    and-int v5, v0, v4

    if-eqz v5, :cond_18

    move v5, v3

    goto :goto_18

    :cond_18
    move v5, v2

    .line 43802
    :goto_18
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    const/high16 v5, 0x10000

    and-int/2addr v5, v0

    if-eqz v5, :cond_19

    move v5, v3

    goto :goto_19

    :cond_19
    move v5, v2

    .line 43803
    :goto_19
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    const/high16 v5, 0x20000

    and-int v6, v0, v5

    if-eqz v6, :cond_1a

    move v6, v3

    goto :goto_1a

    :cond_1a
    move v6, v2

    .line 43804
    :goto_1a
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    move v2, v3

    .line 43805
    :cond_1b
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    .line 43806
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 43807
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1c

    .line 43808
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 43810
    :cond_1c
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 43811
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1d

    .line 43812
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 43814
    :cond_1d
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 43815
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    .line 43816
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1e

    .line 43817
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    .line 43819
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1f

    .line 43820
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 43822
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_20

    .line 43823
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 43825
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 43826
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 43828
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_22

    .line 43829
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 43831
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_23

    .line 43832
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    .line 43834
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_24

    .line 43835
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentStory;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    .line 43836
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    .line 43837
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    .line 43839
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_25

    .line 43840
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 43842
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_26

    .line 43843
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 43845
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_27

    .line 43846
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 43848
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_28

    .line 43849
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    .line 43851
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_29

    .line 43852
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->subscription_until_date:I

    .line 43854
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2a

    .line 43855
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->bot_verification_icon:J

    .line 43857
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2b

    .line 43858
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    .line 43860
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 43861
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    :cond_2c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 6

    const v0, -0x197acab

    .line 43866
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43867
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43868
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43869
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43870
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43871
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43872
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x200

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x201

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43873
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x801

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43874
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x1000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x1001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43875
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    const v2, -0x80001

    const/high16 v3, 0x80000

    if-eqz v1, :cond_8

    or-int/2addr v0, v3

    goto :goto_8

    :cond_8
    and-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43876
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43877
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_a

    :cond_a
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43878
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_b

    :cond_b
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43879
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_c
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43880
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_d
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43881
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_e
    const v1, -0x2000001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43882
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v1, :cond_f

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_f
    const v1, -0x4000001

    and-int/2addr v0, v1

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43883
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_10
    const v1, -0x8000001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43884
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_11
    const v1, -0x10000001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43885
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    goto :goto_12

    :cond_12
    const v1, -0x20000001

    and-int/2addr v0, v1

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43886
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    goto :goto_13

    :cond_13
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43887
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43888
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_14

    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, -0x3

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43889
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x4

    goto :goto_15

    :cond_15
    and-int/lit8 v0, v0, -0x5

    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43890
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x8

    goto :goto_16

    :cond_16
    and-int/lit8 v0, v0, -0x9

    :goto_16
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43891
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    if-eqz v1, :cond_17

    or-int/lit16 v0, v0, 0x1000

    goto :goto_17

    :cond_17
    and-int/lit16 v0, v0, -0x1001

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43892
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    const v4, 0x8000

    if-eqz v1, :cond_18

    or-int/2addr v0, v4

    goto :goto_18

    :cond_18
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_18
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43893
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    if-eqz v1, :cond_19

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_19

    :cond_19
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_19
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43894
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    const/high16 v5, 0x20000

    if-eqz v1, :cond_1a

    or-int/2addr v0, v5

    goto :goto_1a

    :cond_1a
    const v1, -0x20001

    and-int/2addr v0, v1

    :goto_1a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43895
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    if-eqz v1, :cond_1b

    or-int/2addr v0, v3

    goto :goto_1b

    :cond_1b
    and-int/2addr v0, v2

    :goto_1b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 43896
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43897
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43898
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1c

    .line 43899
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43901
    :cond_1c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 43902
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1d

    .line 43903
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 43905
    :cond_1d
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43906
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1e

    .line 43908
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 43910
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1f

    .line 43911
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43913
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_20

    .line 43914
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43916
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 43917
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43919
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_22

    .line 43920
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43922
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    .line 43923
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 43925
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_25

    .line 43926
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    goto :goto_1c

    :cond_24
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    :goto_1c
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43928
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_26

    .line 43929
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43931
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    .line 43932
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43934
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_28

    .line 43935
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43937
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_29

    .line 43938
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43940
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2a

    .line 43941
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->subscription_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43943
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2b

    .line 43944
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->bot_verification_icon:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43946
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2c

    .line 43947
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43949
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 43950
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_2d
    return-void
.end method
