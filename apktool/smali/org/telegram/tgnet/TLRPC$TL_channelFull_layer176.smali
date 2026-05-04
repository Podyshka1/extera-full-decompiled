.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer176;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_layer176"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14884
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 14888
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 14889
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 14890
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 14891
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 14892
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 14893
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 14894
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 14895
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v2

    .line 14896
    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->blocked:Z

    .line 14897
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 14898
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    .line 14899
    :goto_9
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    .line 14900
    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    .line 14901
    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    .line 14902
    :goto_c
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d

    move v2, v3

    .line 14903
    :cond_d
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z

    .line 14904
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 14905
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 14906
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    .line 14907
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 14909
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    .line 14910
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    .line 14912
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 14913
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    .line 14915
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 14916
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    .line 14918
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_12

    .line 14919
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    .line 14921
    :cond_12
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    .line 14922
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    .line 14923
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    .line 14924
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 14925
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 14926
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 14927
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 14929
    :cond_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    .line 14930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_14

    .line 14931
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    .line 14933
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    .line 14934
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    .line 14936
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_16

    .line 14937
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 14939
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    .line 14940
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 14942
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_18

    .line 14943
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    .line 14945
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_19

    .line 14946
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    .line 14948
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1a

    .line 14949
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    .line 14951
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 14952
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    .line 14954
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 14955
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    .line 14957
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 14958
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_next_send_date:I

    .line 14960
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1e

    .line 14961
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    .line 14963
    :cond_1e
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    .line 14964
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 14965
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 14967
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 14968
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    .line 14970
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 14971
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    .line 14973
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 14974
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 14976
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 14977
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    .line 14979
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 14980
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    .line 14982
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 14983
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    .line 14985
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 14986
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 14988
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_27

    .line 14989
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatReactions;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatReactions;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 14991
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_28

    .line 14992
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 14994
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_29

    .line 14995
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 14997
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 14998
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    .line 15000
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2b

    .line 15001
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    .line 15003
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2c

    .line 15004
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :cond_2c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x680b773c

    .line 15009
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15010
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15011
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15012
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15013
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x401

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15014
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_4

    :cond_4
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15015
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x80001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15016
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_6

    :cond_6
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15017
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->blocked:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 15018
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15019
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, -0x2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15020
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_9
    and-int/lit8 v0, v0, -0x3

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15021
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz v1, :cond_a

    or-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_a
    and-int/lit8 v0, v0, -0x5

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15022
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->translations_disabled:Z

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x8

    goto :goto_b

    :cond_b
    and-int/lit8 v0, v0, -0x9

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15023
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x20

    goto :goto_c

    :cond_c
    and-int/lit8 v0, v0, -0x21

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15024
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x40

    goto :goto_d

    :cond_d
    and-int/lit8 v0, v0, -0x41

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 15025
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15026
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 15027
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 15028
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 15029
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15031
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    .line 15032
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15034
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 15035
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15037
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 15038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15040
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_12

    .line 15041
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15043
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15044
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15045
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15046
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15047
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15048
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 15049
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15051
    :cond_13
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 15052
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_14

    .line 15053
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 15055
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    .line 15056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15058
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_16

    .line 15059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15061
    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    .line 15062
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15064
    :cond_17
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_18

    .line 15065
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_min_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15067
    :cond_18
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_19

    .line 15068
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15070
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1a

    .line 15071
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 15073
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 15074
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15076
    :cond_1b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 15077
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15079
    :cond_1c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 15080
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_next_send_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15082
    :cond_1d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1e

    .line 15083
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15085
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15086
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 15087
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15089
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 15090
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15092
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 15093
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 15095
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 15096
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15098
    :cond_22
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    .line 15099
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 15101
    :cond_23
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 15102
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15104
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 15105
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 15107
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 15108
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15110
    :cond_26
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_27

    .line 15111
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15113
    :cond_27
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_28

    .line 15114
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15116
    :cond_28
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_29

    .line 15117
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 15119
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 15120
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15122
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2b

    .line 15123
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 15125
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2c

    .line 15126
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_2c
    return-void
.end method
