.class Lorg/telegram/ui/ProfileActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$fragment:Lorg/telegram/ui/ChatRightsEditActivity;


# direct methods
.method public static synthetic $r8$lambda$EvCmV7eYRMBpsE1hkgs7Z0_99mA(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 5286
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 5276
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$19;->val$fragment:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    .line 5296
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

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
    .locals 2

    .line 5279
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 5280
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5281
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$fragment:Lorg/telegram/ui/ChatRightsEditActivity;

    if-eqz p2, :cond_1

    iget-boolean p3, p2, Lorg/telegram/ui/ChatRightsEditActivity;->banning:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5282
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$fragment:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 5283
    instance-of p4, p3, Lorg/telegram/ui/ChannelAdminLogActivity;

    if-eqz p4, :cond_0

    .line 5284
    move-object p2, p3

    check-cast p2, Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadLastMessages()V

    .line 5285
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance p4, Lorg/telegram/ui/ProfileActivity$19$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p1, p2}, Lorg/telegram/ui/ProfileActivity$19$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
