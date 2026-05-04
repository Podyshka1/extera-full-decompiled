.class Lorg/telegram/ui/ProfileActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$7;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$7;

.field final synthetic val$fragment:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$7;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 2829
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$1;->this$1:Lorg/telegram/ui/ProfileActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$7$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 0

    .line 2832
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$1;->this$1:Lorg/telegram/ui/ProfileActivity$7;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputdisableProfileAnimation(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 2833
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 2834
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$1;->this$1:Lorg/telegram/ui/ProfileActivity$7;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$7$1;->this$1:Lorg/telegram/ui/ProfileActivity$7;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2835
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$1;->this$1:Lorg/telegram/ui/ProfileActivity$7;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
