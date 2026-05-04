.class public Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
.super Lorg/telegram/tgnet/TLRPC$ForumTopic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_forumTopic"
.end annotation


# instance fields
.field public closed:Z

.field public date:I

.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public groupedMessages:Ljava/util/ArrayList;

.field public hidden:Z

.field public icon_color:I

.field public icon_emoji_id:J

.field public id:I

.field public isShort:Z

.field public my:Z

.field public nopaid_messages_exception:Z

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public pinnedOrder:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public searchQuery:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_missing:Z

.field public topMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public top_message:I

.field public topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public totalMessagesCount:I

.field public unread_count:I

.field public unread_mentions_count:I

.field public unread_reactions_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ForumTopic;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 2

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {p1}, Lorg/telegram/tgnet/TLRPC$ForumTopic;->fromConstructor(I)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    invoke-static {v0, v1, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->isShort:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title_missing:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->date:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    :cond_5
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x3200f136

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->isShort:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    const/16 v1, 0x80

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title_missing:Z

    invoke-static {v0, v1, v2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_5
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_7
    return-void
.end method
