.class Lorg/telegram/ui/ChatUsersActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field final synthetic val$participant:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$removeFragment:Z

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;JZ)V
    .locals 0

    .line 1711
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$participant:Lorg/telegram/tgnet/TLObject;

    iput-wide p3, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$user_id:J

    iput-boolean p5, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$removeFragment:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$monOwnerChaged(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 2

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$participant:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_0

    .line 1715
    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1716
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1717
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1718
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 1720
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1721
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$user_id:J

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didSelectUser(J)V

    goto :goto_0

    .line 1722
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1723
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$user_id:J

    iget-object p4, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$participant:Lorg/telegram/tgnet/TLObject;

    invoke-interface {p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V

    .line 1725
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->val$removeFragment:Z

    if-eqz p1, :cond_3

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$16;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_3
    return-void
.end method
