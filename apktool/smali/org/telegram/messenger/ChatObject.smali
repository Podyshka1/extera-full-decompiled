.class public Lorg/telegram/messenger/ChatObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChatObject$VideoParticipant;,
        Lorg/telegram/messenger/ChatObject$Call;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_ADMINS:I = 0x4

.field public static final ACTION_BLOCK_USERS:I = 0x2

.field public static final ACTION_CHANGE_INFO:I = 0x1

.field public static final ACTION_DELETE_MESSAGES:I = 0xd

.field public static final ACTION_EDIT_MESSAGES:I = 0xc

.field public static final ACTION_EMBED_LINKS:I = 0x9

.field public static final ACTION_INVITE:I = 0x3

.field public static final ACTION_MANAGE_CALLS:I = 0xe

.field public static final ACTION_MANAGE_DIRECT:I = 0x18

.field public static final ACTION_MANAGE_TAGS:I = 0x19

.field public static final ACTION_MANAGE_TOPICS:I = 0xf

.field public static final ACTION_PIN:I = 0x0

.field public static final ACTION_POST:I = 0x5

.field public static final ACTION_SEND:I = 0x6

.field public static final ACTION_SEND_DOCUMENTS:I = 0x13

.field public static final ACTION_SEND_GIFS:I = 0x17

.field public static final ACTION_SEND_MEDIA:I = 0x7

.field public static final ACTION_SEND_MUSIC:I = 0x12

.field public static final ACTION_SEND_PHOTO:I = 0x10

.field public static final ACTION_SEND_PLAIN:I = 0x16

.field public static final ACTION_SEND_POLLS:I = 0xa

.field public static final ACTION_SEND_ROUND:I = 0x15

.field public static final ACTION_SEND_STICKERS:I = 0x8

.field public static final ACTION_SEND_TEXT:I = 0x16

.field public static final ACTION_SEND_VIDEO:I = 0x11

.field public static final ACTION_SEND_VOICE:I = 0x14

.field public static final ACTION_VIEW:I = 0xb

.field public static final CHAT_TYPE_CHANNEL:I = 0x2

.field public static final CHAT_TYPE_CHAT:I = 0x0

.field public static final CHAT_TYPE_FORUM:I = 0x5

.field public static final CHAT_TYPE_MEGAGROUP:I = 0x4

.field public static final CHAT_TYPE_USER:I = 0x3

.field private static final MAX_PARTICIPANTS_COUNT:I = 0x1388

.field public static final VIDEO_FRAME_HAS_FRAME:I = 0x2

.field public static final VIDEO_FRAME_NO_FRAME:I = 0x0

.field public static final VIDEO_FRAME_REQUESTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areTabsEnabled(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2503
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x4

    .line 2014
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 3

    .line 2153
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2154
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p0, :cond_3

    :cond_1
    return v1

    .line 2158
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x3

    .line 2127
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x2

    .line 2032
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x1

    .line 2010
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xf

    .line 2170
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;J)Z
    .locals 4

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2189
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v2, v3, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 2192
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0xd

    .line 2196
    invoke-static {p1, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_2

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    sub-int/2addr p0, p1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gt p0, p1, :cond_2

    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0, p1}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xe

    .line 2036
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canManageMonoForum(IJ)Z
    .locals 1

    const/16 v0, 0x18

    .line 1765
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoChannelDirectAdminAction(IJI)Z

    move-result p0

    return p0
.end method

.method public static canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x18

    .line 1769
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoChannelDirectAdminAction(ILorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canManageMyTag(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2023
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 2024
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v0, :cond_3

    .line 2025
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez p0, :cond_2

    return v1

    .line 2026
    :cond_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    :goto_0
    xor-int/2addr p0, v1

    return p0

    .line 2028
    :cond_3
    iget-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    goto :goto_0
.end method

.method public static canManageTags(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x19

    .line 2018
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;J)Z
    .locals 1

    .line 2181
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$Chat;J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 0

    .line 2178
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xf

    .line 2174
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canPinMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2166
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x5

    .line 2123
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendAnyMedia(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 115
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static canSendAsPeers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1948
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2075
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x13

    .line 2078
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2047
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x9

    .line 2050
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2106
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2109
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x6

    .line 2112
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2068
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x12

    .line 2071
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2054
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x10

    .line 2057
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2116
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x16

    .line 2119
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2096
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2099
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0xa

    .line 2102
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2089
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x15

    .line 2092
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2040
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x8

    .line 2043
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2061
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x11

    .line 2064
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2082
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x14

    .line 2085
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1895
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1898
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    .line 1901
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isBannableAction(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1902
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isAdminAction(I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1905
    :cond_3
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v1, :cond_5

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    if-nez v3, :cond_4

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    if-eqz p0, :cond_5

    :cond_4
    return v0

    :cond_5
    if-eqz v1, :cond_7

    .line 1917
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method public static canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1861
    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-static {v2, p2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 1864
    :cond_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v2, p2}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 1867
    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isBannableAction(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1868
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p1, :cond_4

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isAdminAction(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 1871
    :cond_4
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez p1, :cond_6

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    if-nez v2, :cond_5

    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    if-nez v2, :cond_5

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    if-eqz p0, :cond_6

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_8

    .line 1883
    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public static canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1801
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1804
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_a

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0x18

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    move p0, v0

    goto :goto_0

    .line 1817
    :pswitch_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto :goto_0

    .line 1841
    :pswitch_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_0

    .line 1835
    :pswitch_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto :goto_0

    .line 1832
    :pswitch_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto :goto_0

    .line 1811
    :cond_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    goto :goto_0

    .line 1808
    :cond_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    goto :goto_0

    .line 1829
    :cond_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto :goto_0

    .line 1826
    :cond_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_0

    .line 1823
    :cond_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto :goto_0

    .line 1838
    :cond_7
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto :goto_0

    .line 1820
    :cond_8
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_0

    .line 1814
    :cond_9
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    :goto_0
    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    move p0, v0

    goto :goto_0

    .line 1727
    :pswitch_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto :goto_0

    .line 1751
    :pswitch_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_0

    .line 1745
    :pswitch_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto :goto_0

    .line 1742
    :pswitch_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto :goto_0

    .line 1739
    :cond_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto :goto_0

    .line 1736
    :cond_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_0

    .line 1733
    :cond_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto :goto_0

    .line 1748
    :cond_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto :goto_0

    .line 1730
    :cond_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_0

    .line 1724
    :cond_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    :goto_0
    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static canUserDoChannelDirectAdminAction(IJI)Z
    .locals 0

    .line 1773
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChatObject;->getChannelDirectChatInternal(IJ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canUserDoChannelDirectAdminAction(ILorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 0

    .line 1777
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getChannelDirectChatInternal(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 2227
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getAllowedSendString(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const-string v2, ", "

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_8
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_a
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_c
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_d

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_d
    sget p0, Lorg/telegram/messenger/R$string;->SendMediaEmbededLinks:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v0

    .line 1700
    :pswitch_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    return p0

    .line 1698
    :pswitch_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    return p0

    .line 1696
    :pswitch_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    return p0

    .line 1694
    :pswitch_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    return p0

    .line 1692
    :pswitch_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    return p0

    .line 1690
    :pswitch_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    return p0

    .line 1688
    :pswitch_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    return p0

    .line 1686
    :pswitch_7
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    return p0

    .line 1684
    :pswitch_8
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    return p0

    .line 1682
    :pswitch_9
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    return p0

    .line 1680
    :pswitch_a
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    return p0

    .line 1678
    :pswitch_b
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    return p0

    .line 1676
    :pswitch_c
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    return p0

    .line 1674
    :pswitch_d
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    return p0

    .line 1672
    :cond_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    return p0

    .line 1670
    :cond_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    return p0

    .line 1668
    :cond_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 2

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getChannelDirectChatInternal(IJ)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 1782
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 1781
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getChannelDirectChatInternal(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    return-object p0
.end method

.method private static getChannelDirectChatInternal(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4

    if-eqz p1, :cond_2

    .line 1786
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1790
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v0, :cond_1

    .line 1791
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2451
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2452
    iget p0, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I

    return p0

    .line 2453
    :cond_1
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v2, 0x7

    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 2457
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2458
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getOnlyProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 2479
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2480
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I
    .locals 1

    .line 1618
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    return p0

    :cond_0
    const/16 p0, 0x2710

    return p0
.end method

.method public static getPeerColorForAvatar(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    .locals 1

    .line 2262
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->hasPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProfileCollectibleId(Lorg/telegram/tgnet/TLRPC$Chat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 2485
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_0

    .line 2486
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2464
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2465
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->color:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 2470
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_0

    .line 2471
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    return-wide v0

    :cond_0
    if-eqz p0, :cond_1

    .line 2473
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->profile_color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2474
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PeerColor;->background_emoji_id:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2266
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2273
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 2274
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    return-object p0

    .line 2276
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 2277
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2278
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_4

    .line 2279
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2280
    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2284
    :cond_5
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_7

    .line 2285
    :cond_6
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static getRequirementToContact(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2493
    :cond_0
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2494
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;-><init>()V

    .line 2495
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPaidMessages;->stars_amount:J

    :cond_1
    return-object v0
.end method

.method public static getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    if-eqz p0, :cond_2

    .line 2314
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2316
    :cond_0
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2317
    sget p0, Lorg/telegram/messenger/R$string;->AttachGifRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachGifRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2319
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AttachGifRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachGifRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2315
    :cond_2
    :goto_0
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachGifRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    if-eqz p0, :cond_6

    .line 2322
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 2324
    :cond_4
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2325
    sget p0, Lorg/telegram/messenger/R$string;->AttachStickersRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachStickersRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2327
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->AttachStickersRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachStickersRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2323
    :cond_6
    :goto_1
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachStickersRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v0, 0x10

    if-ne p1, v0, :cond_b

    if-eqz p0, :cond_a

    .line 2330
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 2332
    :cond_8
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2333
    sget p0, Lorg/telegram/messenger/R$string;->AttachPhotoRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachPhotoRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2335
    :cond_9
    sget p1, Lorg/telegram/messenger/R$string;->AttachPhotoRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachPhotoRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2331
    :cond_a
    :goto_2
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0x11

    if-ne p1, v0, :cond_f

    if-eqz p0, :cond_e

    .line 2338
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 2340
    :cond_c
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2341
    sget p0, Lorg/telegram/messenger/R$string;->AttachVideoRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachVideoRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2343
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->AttachVideoRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachVideoRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2339
    :cond_e
    :goto_3
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    if-eqz p0, :cond_12

    .line 2346
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_4

    .line 2348
    :cond_10
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2349
    sget p0, Lorg/telegram/messenger/R$string;->AttachDocumentsRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachDocumentsRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2351
    :cond_11
    sget p1, Lorg/telegram/messenger/R$string;->AttachDocumentsRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachDocumentsRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2347
    :cond_12
    :goto_4
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachDocumentsRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 v0, 0x7

    if-ne p1, v0, :cond_17

    if-eqz p0, :cond_16

    .line 2354
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    .line 2356
    :cond_14
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2357
    sget p0, Lorg/telegram/messenger/R$string;->AttachMediaRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachMediaRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2359
    :cond_15
    sget p1, Lorg/telegram/messenger/R$string;->AttachMediaRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachMediaRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2355
    :cond_16
    :goto_5
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachMediaRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1b

    if-eqz p0, :cond_1a

    .line 2362
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_6

    .line 2364
    :cond_18
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2365
    sget p0, Lorg/telegram/messenger/R$string;->AttachAudioRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachAudioRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2367
    :cond_19
    sget p1, Lorg/telegram/messenger/R$string;->AttachAudioRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachAudioRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2363
    :cond_1a
    :goto_6
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachAudioRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1f

    if-eqz p0, :cond_1e

    .line 2370
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_7

    .line 2372
    :cond_1c
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2373
    sget p0, Lorg/telegram/messenger/R$string;->AttachPlainRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachPlainRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2375
    :cond_1d
    sget p1, Lorg/telegram/messenger/R$string;->AttachPlainRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachPlainRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2371
    :cond_1e
    :goto_7
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachPlainRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/16 v0, 0x15

    if-ne p1, v0, :cond_23

    if-eqz p0, :cond_22

    .line 2378
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_8

    .line 2380
    :cond_20
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2381
    sget p0, Lorg/telegram/messenger/R$string;->AttachRoundRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachRoundRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2383
    :cond_21
    sget p1, Lorg/telegram/messenger/R$string;->AttachRoundRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachRoundRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2379
    :cond_22
    :goto_8
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachRoundRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/16 v0, 0x14

    if-ne p1, v0, :cond_27

    if-eqz p0, :cond_26

    .line 2386
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_9

    .line 2388
    :cond_24
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2389
    sget p0, Lorg/telegram/messenger/R$string;->AttachVoiceRestrictedForever:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AttachVoiceRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2391
    :cond_25
    sget p1, Lorg/telegram/messenger/R$string;->AttachVoiceRestricted:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v3, p0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "AttachVoiceRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2387
    :cond_26
    :goto_9
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachVoiceRestricted:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2395
    :cond_27
    const-string p0, ""

    return-object p0
.end method

.method public static getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)J
    .locals 1

    const/4 v0, 0x0

    .line 2135
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/ChatObject;->getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 2139
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_2

    .line 2141
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    if-eqz p2, :cond_1

    neg-long p0, p0

    :cond_1
    return-wide p0

    :cond_2
    if-eqz p0, :cond_4

    .line 2143
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz p1, :cond_4

    .line 2144
    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    if-eqz p2, :cond_3

    neg-long p0, p0

    :cond_3
    return-wide p0

    :cond_4
    if-eqz p0, :cond_6

    .line 2146
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-nez p1, :cond_6

    .line 2147
    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    if-eqz p2, :cond_5

    neg-long p0, p0

    :cond_5
    return-wide p0

    .line 2149
    :cond_6
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p0

    return-wide p0
.end method

.method public static hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 2002
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_1

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2258
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasPublicLink(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2294
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2295
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2297
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move v1, v0

    .line 2298
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2299
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_2

    .line 2300
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static hasStories(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 1993
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isActionBanned(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1716
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1709
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1712
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    return p0
.end method

.method private static isAdminAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static isBannableAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1977
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isBoosted(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1981
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCanWriteToChannel(JI)Z
    .locals 0

    .line 2222
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 2223
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isChannel(JI)Z
    .locals 0

    .line 2212
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 2213
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez p1, :cond_1

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1952
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_1

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isChannelAndNotMegaGroup(JI)Z
    .locals 0

    .line 2217
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 2218
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    return p0
.end method

.method public static isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1964
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1956
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCreator(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2006
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDiscussionGroup(IJ)Z
    .locals 1

    .line 1968
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    .line 1969
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/telegram/messenger/ChatObject;->isDiscussionGroup(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)Z

    move-result p0

    return p0
.end method

.method public static isDiscussionGroup(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)Z
    .locals 2

    .line 1973
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForum(IJ)Z
    .locals 0

    .line 99
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1985
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 124
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    .line 125
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIgnoredChatRestrictionsForBoosters(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    if-lez v0, :cond_0

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    sub-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1938
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v1, :cond_2

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v1, :cond_2

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1941
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1930
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1926
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMegagroup(IJ)Z
    .locals 0

    .line 1997
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 1998
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1960
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isMonoForum(IJ)Z
    .locals 0

    .line 107
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1989
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMyTopic(IJJ)Z
    .locals 1

    .line 2208
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    return p0
.end method

.method public static isMyTopic(ILorg/telegram/tgnet/TLRPC$Chat;J)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2204
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p0, v0, v1, p2, p3}, Lorg/telegram/messenger/ChatObject;->isMyTopic(IJJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 2200
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide p0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1934
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 132
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 139
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    .line 2309
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z
    .locals 4

    .line 84
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 88
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    move v0, v2

    .line 89
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 90
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static shouldSendAnonymously(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2131
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
