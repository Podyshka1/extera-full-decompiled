.class Lorg/telegram/ui/ProfileActivity$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onNotificationsClicked(ZFFLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;J)V
    .locals 0

    .line 6824
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic dismiss()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$dismiss(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public muteFor(I)V
    .locals 7

    if-nez p1, :cond_2

    .line 6838
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6839
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$34;->toggleMute()V

    .line 6841
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6842
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x4

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void

    .line 6845
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JJI)V

    .line 6846
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6847
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x5

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {p1, v0, v6, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 6849
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateExceptions(Lorg/telegram/ui/ProfileActivity;)V

    .line 6850
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateNotifications(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public openExceptions()V
    .locals 4

    .line 6877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6878
    const-string v1, "dialog_id"

    iget-wide v2, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6879
    new-instance v1, Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-direct {v1, v0}, Lorg/telegram/ui/TopicsNotifySettingsFragments;-><init>(Landroid/os/Bundle;)V

    .line 6880
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TopicsNotifySettingsFragments;->setExceptions(Ljava/util/HashSet;)V

    .line 6881
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showCustomize()V
    .locals 4

    .line 6856
    iget-wide v0, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6858
    const-string v1, "dialog_id"

    iget-wide v2, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6859
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    const-string v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6860
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 8

    .line 6866
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    .line 6867
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v5

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 6868
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    xor-int/2addr v0, v3

    const/4 v2, 0x0

    .line 6869
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 6871
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateExceptions(Lorg/telegram/ui/ProfileActivity;)V

    .line 6872
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateNotifications(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public toggleSound()V
    .locals 9

    .line 6827
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

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

    .line 6829
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/ui/ProfileActivity$34;->val$did:J

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgettopicId(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6830
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6831
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method
