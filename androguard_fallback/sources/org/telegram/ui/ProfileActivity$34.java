package org.telegram.ui;
 class ProfileActivity$34 implements org.telegram.ui.Components.ChatNotificationsPopupWrapper$Callback {
    final synthetic org.telegram.ui.ProfileActivity this$0;
    final synthetic long val$did;

    ProfileActivity$34(org.telegram.ui.ProfileActivity p1, long p2)
    {
        this.this$0 = p1;
        this.val$did = p2;
        return;
    }

    public synthetic void dismiss()
    {
        org.telegram.ui.Components.ChatNotificationsPopupWrapper$Callback$-CC.$default$dismiss(this);
        return;
    }

    public void muteFor(int p8)
    {
        if (p8 != null) {
            org.telegram.ui.ProfileActivity.access$6300(this.this$0).muteUntil(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0), p8);
            if (org.telegram.ui.Components.BulletinFactory.canShowBulletin(this.this$0)) {
                org.telegram.ui.Components.Bulletin v8_3 = this.this$0;
                org.telegram.ui.Components.BulletinFactory.createMuteBulletin(v8_3, 5, p8, v8_3.getResourceProvider()).show();
            }
            org.telegram.ui.ProfileActivity.-$$Nest$mupdateExceptions(this.this$0);
            org.telegram.ui.ProfileActivity.-$$Nest$mupdateNotifications(this.this$0, 1);
            return;
        } else {
            if (this.this$0.getMessagesController().isDialogMuted(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0))) {
                this.toggleMute();
            }
            if (org.telegram.ui.Components.BulletinFactory.canShowBulletin(this.this$0)) {
                org.telegram.ui.ProfileActivity v0_8 = this.this$0;
                org.telegram.ui.Components.BulletinFactory.createMuteBulletin(v0_8, 4, p8, v0_8.getResourceProvider()).show();
            }
            return;
        }
    }

    public void openExceptions()
    {
        org.telegram.ui.ProfileActivity v0_1 = new android.os.Bundle();
        v0_1.putLong("dialog_id", this.val$did);
        org.telegram.ui.TopicsNotifySettingsFragments v1_2 = new org.telegram.ui.TopicsNotifySettingsFragments(v0_1);
        v1_2.setExceptions(this.this$0.notificationsExceptionTopics);
        this.this$0.presentFragment(v1_2);
        return;
    }

    public void showCustomize()
    {
        if (this.val$did != 0) {
            android.os.Bundle v0_3 = new android.os.Bundle();
            v0_3.putLong("dialog_id", this.val$did);
            v0_3.putLong("topic_id", org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0));
            org.telegram.ui.ProfileActivity v1_1 = this.this$0;
            v1_1.presentFragment(new org.telegram.ui.ProfileNotificationsActivity(v0_3, org.telegram.ui.ProfileActivity.-$$Nest$fgetresourcesProvider(v1_1)));
        }
        return;
    }

    public void toggleMute()
    {
        org.telegram.ui.ProfileActivity v0_6 = this.this$0.getMessagesController().isDialogMuted(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0));
        org.telegram.ui.ProfileActivity.access$6400(this.this$0).muteDialog(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0), (v0_6 ^ 1));
        org.telegram.ui.ProfileActivity v1_1 = this.this$0;
        if (v1_1.fragmentView != null) {
            org.telegram.ui.Components.BulletinFactory.createMuteBulletin(v1_1, (v0_6 ^ 1), 0).show();
        }
        org.telegram.ui.ProfileActivity.-$$Nest$mupdateExceptions(this.this$0);
        org.telegram.ui.ProfileActivity.-$$Nest$mupdateNotifications(this.this$0, 1);
        return;
    }

    public void toggleSound()
    {
        org.telegram.ui.Components.Bulletin v0_5 = org.telegram.messenger.MessagesController.getNotificationsSettings(org.telegram.ui.ProfileActivity.access$6200(this.this$0));
        boolean v1_3 = new StringBuilder();
        v1_3.append("sound_enabled_");
        v1_3.append(org.telegram.messenger.NotificationsController.getSharedPrefKey(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0)));
        boolean v1_1 = v0_5.getBoolean(v1_3.toString(), 1);
        int v3_2 = (v1_1 ^ 1);
        org.telegram.ui.Components.Bulletin v0_2 = v0_5.edit();
        StringBuilder v4_1 = new StringBuilder();
        v4_1.append("sound_enabled_");
        v4_1.append(org.telegram.messenger.NotificationsController.getSharedPrefKey(this.val$did, org.telegram.ui.ProfileActivity.-$$Nest$fgettopicId(this.this$0)));
        v0_2.putBoolean(v4_1.toString(), v3_2).apply();
        if (org.telegram.ui.Components.BulletinFactory.canShowBulletin(this.this$0)) {
            org.telegram.ui.Components.Bulletin v0_7 = this.this$0;
            org.telegram.ui.Components.BulletinFactory.createSoundEnabledBulletin(v0_7, v1_1, v0_7.getResourceProvider()).show();
        }
        return;
    }
}
