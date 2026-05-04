.class Lorg/telegram/ui/ChatActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 4491
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 4494
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method public muteFor(I)V
    .locals 7

    if-nez p1, :cond_1

    .line 4511
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4512
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mtoggleMute(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4514
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4515
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x4

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 4518
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JJI)V

    .line 4519
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4520
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x5

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {p1, v0, v6, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method public synthetic openExceptions()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$openExceptions(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public showCustomize()V
    .locals 6

    .line 4527
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 4528
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    .line 4529
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 4531
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4532
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4533
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 4534
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    const-string/jumbo v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4536
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method public toggleMute()V
    .locals 6

    .line 4542
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mtoggleMute(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4543
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public toggleSound()V
    .locals 9

    .line 4499
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 4501
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4502
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4503
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateTitleIcons(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
