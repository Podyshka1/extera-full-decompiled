.class public Lorg/telegram/tgnet/TLRPC$TL_user_layer196_1;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_layer196_1"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23102
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 6

    .line 23106
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

    .line 23107
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 23108
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 23109
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 23110
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 23111
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 23112
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 23113
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 23114
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    const/high16 v1, 0x40000

    and-int v4, v0, v1

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 23115
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 23116
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    .line 23117
    :goto_a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_b

    :cond_b
    move v4, v2

    .line 23118
    :goto_b
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->support:Z

    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    move v4, v3

    goto :goto_c

    :cond_c
    move v4, v2

    .line 23119
    :goto_c
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    move v4, v3

    goto :goto_d

    :cond_d
    move v4, v2

    .line 23120
    :goto_d
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->apply_min_photo:Z

    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_e

    :cond_e
    move v4, v2

    .line 23121
    :goto_e
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    move v4, v3

    goto :goto_f

    :cond_f
    move v4, v2

    .line 23122
    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_attach_menu:Z

    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    move v4, v3

    goto :goto_10

    :cond_10
    move v4, v2

    .line 23123
    :goto_10
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    const/high16 v4, 0x20000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_11

    :cond_11
    move v0, v2

    .line 23124
    :goto_11
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->attach_menu_enabled:Z

    .line 23125
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_12

    move v4, v3

    goto :goto_12

    :cond_12
    move v4, v2

    .line 23126
    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_13

    :cond_13
    move v4, v2

    .line 23127
    :goto_13
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_14

    move v4, v3

    goto :goto_14

    :cond_14
    move v4, v2

    .line 23128
    :goto_14
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_15

    move v4, v3

    goto :goto_15

    :cond_15
    move v4, v2

    .line 23129
    :goto_15
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_16

    :cond_16
    move v4, v2

    .line 23130
    :goto_16
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_17

    move v4, v3

    goto :goto_17

    :cond_17
    move v4, v2

    .line 23131
    :goto_17
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_18

    move v2, v3

    .line 23132
    :cond_18
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    .line 23133
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 23134
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_19

    .line 23135
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    .line 23137
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    .line 23138
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 23140
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    .line 23141
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 23143
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1c

    .line 23144
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 23146
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1d

    .line 23147
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 23149
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1e

    .line 23150
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 23152
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1f

    .line 23153
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 23155
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_20

    .line 23156
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    .line 23158
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 23159
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    .line 23161
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 23162
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    .line 23164
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 23165
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->lang_code:Ljava/lang/String;

    .line 23167
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 23168
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 23170
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_25

    .line 23171
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    .line 23174
    :cond_25
    :try_start_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_26

    .line 23175
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentStory;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    .line 23176
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    .line 23177
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v0

    .line 23180
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 23182
    :cond_26
    :goto_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    .line 23183
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 23185
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_28

    .line 23186
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 23188
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_29

    .line 23189
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    .line 23191
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2a

    .line 23192
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    :cond_2a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    .line 23197
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23198
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :cond_0
    const v0, 0x685f5e21

    .line 23200
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23201
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

    .line 23202
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v0, -0x801

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23203
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v0, -0x1001

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23204
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_4
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23205
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_5
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23206
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-eqz v1, :cond_6

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_6
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23207
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_6

    :cond_7
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23208
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

    .line 23209
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v2, 0x40000

    if-eqz v1, :cond_9

    or-int/2addr v0, v2

    goto :goto_8

    :cond_9
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 23210
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

    .line 23211
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

    .line 23212
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

    .line 23213
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

    .line 23214
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

    .line 23215
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

    .line 23216
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

    .line 23217
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

    .line 23218
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

    .line 23219
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23220
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

    .line 23221
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x4

    goto :goto_13

    :cond_14
    and-int/lit8 v0, v0, -0x5

    :goto_13
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23222
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x8

    goto :goto_14

    :cond_15
    and-int/lit8 v0, v0, -0x9

    :goto_14
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23223
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x10

    goto :goto_15

    :cond_16
    and-int/lit8 v0, v0, -0x11

    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23224
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-eqz v1, :cond_17

    or-int/lit16 v0, v0, 0x400

    goto :goto_16

    :cond_17
    and-int/lit16 v0, v0, -0x401

    :goto_16
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23225
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    if-eqz v1, :cond_18

    or-int/lit16 v0, v0, 0x800

    goto :goto_17

    :cond_18
    and-int/lit16 v0, v0, -0x801

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23226
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v1, :cond_19

    or-int/lit16 v0, v0, 0x2000

    goto :goto_18

    :cond_19
    and-int/lit16 v0, v0, -0x2001

    :goto_18
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 23227
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23228
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 23229
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 23230
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 23232
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 23233
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23235
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    .line 23236
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23238
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1d

    .line 23239
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23241
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1e

    .line 23242
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23244
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1f

    .line 23245
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 23247
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_20

    .line 23248
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 23250
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_21

    .line 23251
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23253
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_22

    .line 23254
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 23256
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 23257
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23259
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 23260
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 23262
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 23263
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 23265
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    .line 23266
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 23268
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    .line 23269
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_19

    :cond_27
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    :goto_19
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23271
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 23272
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-nez v0, :cond_29

    .line 23273
    new-instance v0, Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$PeerColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 23275
    :cond_29
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 23277
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2c

    .line 23278
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    if-nez v0, :cond_2b

    .line 23279
    new-instance v0, Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$PeerColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 23281
    :cond_2b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 23283
    :cond_2c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2d

    .line 23284
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 23286
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2e

    .line 23287
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_2e
    return-void
.end method
