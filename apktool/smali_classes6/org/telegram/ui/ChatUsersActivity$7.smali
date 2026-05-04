.class Lorg/telegram/ui/ChatUsersActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 913
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$msortUsers(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    .line 916
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    :cond_0
    return-void
.end method

.method public synthetic didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate$-CC;->$default$didChangeOwner(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public didKickParticipant(J)V
    .locals 5

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 924
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 926
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 927
    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 929
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v3, p1

    .line 930
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 932
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 933
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->kicked_by:J

    .line 934
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    .line 935
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 937
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$msortUsers(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$7;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    :cond_1
    return-void
.end method

.method public synthetic didSelectUser(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate$-CC;->$default$didSelectUser(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;J)V

    return-void
.end method
