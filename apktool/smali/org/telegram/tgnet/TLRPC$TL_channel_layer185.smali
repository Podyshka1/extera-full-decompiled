.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer185;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer185"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44609
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 44613
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

    .line 44614
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 44615
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 44616
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 44617
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 44618
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 44619
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 44620
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 44621
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 44622
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 44623
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 44624
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 44625
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    .line 44626
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_d

    :cond_d
    move v1, v2

    .line 44627
    :goto_d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_e

    :cond_e
    move v1, v2

    .line 44628
    :goto_e
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_f

    :cond_f
    move v1, v2

    .line 44629
    :goto_f
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_10

    :cond_10
    move v1, v2

    .line 44630
    :goto_10
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_11

    :cond_11
    move v1, v2

    .line 44631
    :goto_11
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_12

    :cond_12
    move v1, v2

    .line 44632
    :goto_12
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_13

    :cond_13
    move v0, v2

    .line 44633
    :goto_13
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    .line 44634
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_14

    :cond_14
    move v1, v2

    .line 44635
    :goto_14
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_15

    :cond_15
    move v1, v2

    .line 44636
    :goto_15
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    move v2, v3

    .line 44637
    :cond_16
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    .line 44638
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 44639
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_17

    .line 44640
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 44642
    :cond_17
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 44643
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_18

    .line 44644
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 44646
    :cond_18
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 44647
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    .line 44648
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_19

    .line 44649
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    .line 44651
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1a

    .line 44652
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 44654
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 44655
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 44657
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 44658
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 44660
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 44661
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 44663
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1e

    .line 44664
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    .line 44666
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1f

    .line 44667
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentStory;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    .line 44668
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->flags:I

    .line 44669
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    .line 44671
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_20

    .line 44672
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 44674
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_21

    .line 44675
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerColor;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerColor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    .line 44677
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_22

    .line 44678
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 44680
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_23

    .line 44681
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    :cond_23
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0xaadfc8f

    .line 44686
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44687
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

    .line 44688
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44689
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44690
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44691
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44692
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x200

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x201

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44693
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x801

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44694
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x1000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x1001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44695
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_8

    :cond_8
    const v1, -0x80001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 44696
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

    .line 44697
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

    .line 44698
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

    .line 44699
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

    .line 44700
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

    .line 44701
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

    .line 44702
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

    .line 44703
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

    .line 44704
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

    .line 44705
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

    .line 44706
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

    .line 44707
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44708
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

    .line 44709
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden_min:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x4

    goto :goto_15

    :cond_15
    and-int/lit8 v0, v0, -0x5

    :goto_15
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 44710
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x8

    goto :goto_16

    :cond_16
    and-int/lit8 v0, v0, -0x9

    :goto_16
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 44711
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44712
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 44713
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_17

    .line 44714
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 44716
    :cond_17
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 44717
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_18

    .line 44718
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 44720
    :cond_18
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44721
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44722
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_19

    .line 44723
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 44725
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1a

    .line 44726
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44728
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 44729
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44731
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 44732
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44734
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 44735
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44737
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    .line 44738
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 44740
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_20

    .line 44741
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_17

    :cond_1f
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    :goto_17
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 44743
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_21

    .line 44744
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44746
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_22

    .line 44747
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44749
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_23

    .line 44750
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 44752
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_24

    .line 44753
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_24
    return-void
.end method
