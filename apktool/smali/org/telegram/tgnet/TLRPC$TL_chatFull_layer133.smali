.class public Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer133;
.super Lorg/telegram/tgnet/TLRPC$ChatFull;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatFull_layer133"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12207
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 12211
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 12212
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move v2, v3

    .line 12213
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    .line 12214
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    .line 12215
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 12216
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 12217
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 12218
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 12220
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 12221
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 12222
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 12224
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 12225
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    .line 12227
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 12228
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 12230
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    .line 12231
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    .line 12233
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_7

    .line 12234
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 12236
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    .line 12237
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    .line 12239
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 12240
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 12242
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 12243
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4dbdc099    # 3.979395E8f

    .line 12248
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 12249
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, -0x81

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 12250
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->has_scheduled:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x101

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 12251
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 12252
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 12253
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 12254
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12255
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 12256
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12258
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12259
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 12260
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12262
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 12263
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 12265
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 12266
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 12268
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    .line 12269
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 12271
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_7

    .line 12272
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12274
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    .line 12275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 12277
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 12278
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 12280
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 12281
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
