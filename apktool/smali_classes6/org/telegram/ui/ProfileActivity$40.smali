.class Lorg/telegram/ui/ProfileActivity$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->openRightsEdit(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$action:I

.field final synthetic val$editingAdmin:Z

.field final synthetic val$needShowBulletin:[Z

.field final synthetic val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;ILorg/telegram/tgnet/TLRPC$ChatParticipant;Z[Z)V
    .locals 0

    .line 7545
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$40;->val$action:I

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iput-boolean p4, p0, Lorg/telegram/ui/ProfileActivity$40;->val$editingAdmin:Z

    iput-object p5, p0, Lorg/telegram/ui/ProfileActivity$40;->val$needShowBulletin:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    .line 7617
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    const/16 v3, 0x9

    :goto_0
    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 7

    .line 7548
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$40;->val$action:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 7549
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v3, :cond_1

    .line 7550
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-ne p1, v2, :cond_0

    .line 7552
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 7553
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    goto :goto_0

    .line 7555
    :cond_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 7557
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 7558
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7559
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 7560
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 7561
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 7562
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 7563
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_2

    .line 7567
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    goto :goto_1

    .line 7569
    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 7571
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 7572
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput p4, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 7573
    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 7574
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 7576
    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    if-ne p1, v2, :cond_9

    .line 7579
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$40;->val$editingAdmin:Z

    if-nez p1, :cond_9

    .line 7580
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->val$needShowBulletin:[Z

    aput-boolean v2, p1, v1

    return-void

    :cond_4
    if-ne v0, v2, :cond_9

    if-nez p1, :cond_9

    .line 7584
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p1, :cond_9

    move p1, v1

    .line 7586
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 7587
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 7588
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p2

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v3, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    .line 7589
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    sub-int/2addr p3, v2

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 7590
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p1, v2

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    move p1, v1

    .line 7595
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p2, :cond_8

    .line 7596
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_8

    .line 7597
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 7598
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$40;->val$participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v3, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long p2, p2, v3

    if-nez p2, :cond_7

    .line 7599
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatInfo(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p1, v2

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 7606
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateOnlineCount(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 7607
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateRowsIds(Lorg/telegram/ui/ProfileActivity;)V

    .line 7608
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
