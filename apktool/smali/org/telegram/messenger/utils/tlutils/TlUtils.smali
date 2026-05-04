.class public abstract Lorg/telegram/messenger/utils/tlutils/TlUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;
    .locals 2

    .line 189
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    if-eqz v0, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    .line 192
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->min:Z

    if-eqz v1, :cond_0

    .line 193
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    .line 195
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 196
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 197
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    .line 198
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_messages_enabled:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_messages_enabled:Z

    :cond_0
    return-object p1
.end method

.method public static findAllInstances(Ljava/util/List;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static findFirstInstance(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getGiftDocument(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 5

    .line 152
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 153
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    .line 155
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v4, :cond_0

    .line 156
    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object p0, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getGiftDocumentPattern(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 5

    .line 165
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 166
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    .line 168
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v4, :cond_0

    .line 169
    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object p0, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getInputPeerFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 1

    .line 20
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_1

    .line 23
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    .line 24
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    .line 25
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    .line 26
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_3

    .line 27
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    .line 28
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_4

    .line 29
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInputReplyToFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;
    .locals 1

    .line 35
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    .line 37
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    .line 39
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    .line 40
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    .line 41
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_3

    .line 42
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    .line 43
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_4

    .line 44
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessageFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 5

    .line 50
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_1

    .line 53
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->message:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 55
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 56
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 57
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 58
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->message:Ljava/lang/String;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getOrCalculateRandomIdFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)J
    .locals 6

    .line 115
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    .line 116
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    return-wide v0

    .line 117
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_1

    .line 118
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    return-wide v0

    .line 119
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    .line 120
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    return-wide v0

    .line 121
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 122
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    .line 124
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Ljava/lang/Long;

    .line 125
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    return-wide v2

    .line 128
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_5

    .line 129
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 131
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 132
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->random_id:J

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_5
    return-wide v2
.end method

.method public static getThemeEmoticonOrGiftTitle(Lorg/telegram/tgnet/TLRPC$ChatTheme;)Ljava/lang/String;
    .locals 1

    .line 178
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatTheme;->emoticon:Ljava/lang/String;

    return-object p0

    .line 180
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    if-eqz v0, :cond_1

    .line 181
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs isInstance(Ljava/lang/Object;[Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static setInputReplyToFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputReplyTo;)V
    .locals 1

    .line 67
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    .line 68
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 69
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    return-void

    .line 70
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_1

    .line 71
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 72
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    return-void

    .line 73
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    .line 74
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 75
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    return-void

    .line 76
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_3

    .line 77
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 78
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    return-void

    .line 79
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_4

    .line 80
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 81
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    :cond_4
    return-void
.end method
