package org.telegram.ui;
 class TopicsFragment$2 extends org.telegram.ui.ActionBar.ActionBar$ActionBarMenuOnItemClick {
    final synthetic org.telegram.ui.TopicsFragment this$0;
    final synthetic android.content.Context val$context;

    public static synthetic void $r8$lambda$1OkCq9MtFhXJWecrxhBTGxZpKV8()
    {
        return;
    }

    public static synthetic void $r8$lambda$9GgGXZ13Gn88oVaK9gZJ-ot8XjQ(org.telegram.ui.TopicCreateFragment p0)
    {
        p0.showKeyboard();
        return;
    }

    public static synthetic void $r8$lambda$MvWTsA_daWBQWSNgDbBJgx2Yw_E(org.telegram.ui.TopicsFragment$2 p0, long p1, java.util.ArrayList p3, int p4)
    {
        p0.lambda$onItemClick$2(p1, p3, p4);
        return;
    }

    public static synthetic void $r8$lambda$YGWmPQd9l6dGwXzjn3nJGyacVfg(org.telegram.ui.TopicsFragment$2 p0)
    {
        p0.lambda$onItemClick$5();
        return;
    }

    public static synthetic void $r8$lambda$a5_ejfyVFlLHt_jetnweJw9aNXk(org.telegram.ui.TopicsFragment$2 p0, org.telegram.tgnet.TLRPC$TL_messages_invitedUsers p1, int[] p2, int p3, java.util.ArrayList p4, long p5, org.telegram.tgnet.TLRPC$TL_messages_invitedUsers p7)
    {
        p0.lambda$onItemClick$1(p1, p2, p3, p4, p5, p7);
        return;
    }

    public static synthetic void $r8$lambda$pYosptSIHGeb1N5SAhAi9CVhPGQ(org.telegram.ui.TopicsFragment$2 p0, org.telegram.tgnet.TLRPC$Chat p1, boolean p2)
    {
        p0.lambda$onItemClick$4(p1, p2);
        return;
    }

    TopicsFragment$2(org.telegram.ui.TopicsFragment p1, android.content.Context p2)
    {
        this.this$0 = p1;
        this.val$context = p2;
        return;
    }

    private synthetic void lambda$onItemClick$1(org.telegram.tgnet.TLRPC$TL_messages_invitedUsers p2, int[] p3, int p4, java.util.ArrayList p5, long p6, org.telegram.tgnet.TLRPC$TL_messages_invitedUsers p8)
    {
        if (p8 != 0) {
            p2.missing_invitees.addAll(p8.missing_invitees);
        }
        int v0_2 = (p3[0] + 1);
        p3[0] = v0_2;
        if (v0_2 == p4) {
            if (!p2.missing_invitees.isEmpty()) {
                org.telegram.ui.Components.AlertsCreator.checkRestrictedInviteUsers(org.telegram.ui.TopicsFragment.access$700(this.this$0), this.this$0.getMessagesController().getChat(Long.valueOf(p6)), p2);
            } else {
                org.telegram.ui.Components.BulletinFactory.of(this.this$0).createUsersAddedBulletin(p5, this.this$0.getMessagesController().getChat(Long.valueOf(p6))).show();
                return;
            }
        }
        return;
    }

    private synthetic void lambda$onItemClick$2(long p21, java.util.ArrayList p23, int p24)
    {
        org.telegram.ui.TopicsFragment$2 v1 = this;
        int v4 = p23.size();
        int[] v3 = new int[1];
        org.telegram.tgnet.TLRPC$TL_messages_invitedUsers v2_1 = new org.telegram.tgnet.TLRPC$TL_messages_invitedUsers();
        v2_1.updates = new org.telegram.tgnet.TLRPC$TL_updates();
        int v8 = 0;
        while (v8 < v4) {
            v1.this$0.getMessagesController().addUserToChat(p21, ((org.telegram.tgnet.TLRPC$User) p23.get(v8)), p24, 0, v1.this$0, 0, new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda4(), 0, new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda5(v1, v2_1, v3, v4, p23, p21));
            v8++;
            v1 = this;
        }
        return;
    }

    private synthetic void lambda$onItemClick$4(org.telegram.tgnet.TLRPC$Chat p6, boolean p7)
    {
        int v2_1 = org.telegram.messenger.NotificationCenter.closeChats;
        this.this$0.getNotificationCenter().removeObserver(this.this$0, v2_1);
        int v3_0 = new Object[0];
        this.this$0.getNotificationCenter().postNotificationName(v2_1, v3_0);
        this.this$0.finishFragment();
        org.telegram.messenger.NotificationCenter v0_3 = this.this$0.getNotificationCenter();
        int v3_3 = Long.valueOf((- p6.id));
        Boolean v7_1 = Boolean.valueOf(p7);
        Object[] v4_1 = new Object[4];
        v4_1[0] = v3_3;
        v4_1[1] = 0;
        v4_1[2] = p6;
        v4_1[3] = v7_1;
        v0_3.postNotificationName(org.telegram.messenger.NotificationCenter.needDeleteDialog, v4_1);
        return;
    }

    private synthetic void lambda$onItemClick$5()
    {
        org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
        return;
    }

    public void onItemClick(int p25)
    {
        if (p25 != -1) {
            org.telegram.tgnet.TLRPC$TL_forumTopic v0_1 = 0;
            org.telegram.ui.TopicsFragment$TopicsRecyclerView v2_26 = 0;
            switch (p25) {
                case 1:
                    this.this$0.getMessagesController().getTopicsController().toggleViewForumAsMessages(this.this$0.chatId, 1);
                    org.telegram.ui.TopicsFragment.-$$Nest$fputfinishDialogRightSlidingPreviewOnTransitionEnd(this.this$0, 1);
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_53 = new android.os.Bundle();
                    v0_53.putLong("chat_id", this.this$0.chatId);
                    org.telegram.ui.TopicsFragment$TopicsRecyclerView v2_33 = new org.telegram.ui.ChatActivity(v0_53);
                    v2_33.setSwitchFromTopics(1);
                    this.this$0.presentFragment(v2_33);
                    break;
                case 2:
                    int v3_10 = this.this$0.getMessagesController().getChatFull(this.this$0.chatId);
                    int v4_21 = this.this$0.chatFull;
                    if (v4_21 != 0) {
                        int v4_22 = v4_21.participants;
                        if (v4_22 != 0) {
                            v3_10.participants = v4_22;
                        }
                    }
                    if (v3_10 == 0) {
                    } else {
                        int v4_24 = new androidx.collection.LongSparseArray();
                        if (v3_10.participants != null) {
                            while (v2_26 < v3_10.participants.participants.size()) {
                                v4_24.put(((org.telegram.tgnet.TLRPC$ChatParticipant) v3_10.participants.participants.get(v2_26)).user_id, 0);
                                v2_26++;
                            }
                        }
                        org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda0 v9_4 = v3_10.id;
                        int v7_6 = this.this$0;
                        org.telegram.tgnet.TLRPC$TL_forumTopic v0_46 = new org.telegram.ui.TopicsFragment$2$1(this, this.val$context, org.telegram.ui.TopicsFragment.access$500(this.this$0), v4_24, v3_10.id, v7_6, v7_6.themeDelegate, v9_4);
                        v0_46.setDelegate(new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda0(this, v9_4));
                        v0_46.show();
                    }
                    break;
                case 3:
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_44 = org.telegram.ui.TopicCreateFragment.create(this.this$0.chatId, 0);
                    this.this$0.presentFragment(v0_44);
                    org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda1(v0_44), 200);
                    break;
                case 4:
                case 5:
                    if (this.this$0.selectedTopics.size() > 0) {
                        long v8_5;
                        org.telegram.ui.TopicsFragment.-$$Nest$fputscrollToTop(this.this$0, 1);
                        org.telegram.ui.TopicsFragment.-$$Nest$fputupdateAnimated(this.this$0, 1);
                        int v4_16 = org.telegram.ui.TopicsFragment.-$$Nest$fgettopicsController(this.this$0);
                        org.telegram.tgnet.TLRPC$TL_forumTopic v0_36 = this.this$0;
                        long v5_22 = v0_36.chatId;
                        int v7_5 = ((Integer) v0_36.selectedTopics.iterator().next()).intValue();
                        if (p25 != 4) {
                            v8_5 = 0;
                        } else {
                            v8_5 = 1;
                        }
                        v4_16.pinTopic(v5_22, v7_5, v8_5, this.this$0);
                    }
                    org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                    break;
                case 6:
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_28 = this.this$0.selectedTopics.iterator();
                    while (v0_28.hasNext()) {
                        int v3_6 = this.this$0;
                        org.telegram.ui.TopicsFragment.access$600(this.this$0).muteDialog((- v3_6.chatId), ((long) ((Integer) v0_28.next()).intValue()), org.telegram.ui.TopicsFragment.-$$Nest$fgetmute(v3_6));
                    }
                    org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                    break;
                case 7:
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_24 = this.this$0;
                    org.telegram.ui.TopicsFragment.-$$Nest$mdeleteTopics(v0_24, v0_24.selectedTopics, new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda3(this));
                    break;
                case 8:
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_18 = new java.util.ArrayList(this.this$0.selectedTopics);
                    int v3_2 = 0;
                    while (v3_2 < v0_18.size()) {
                        int v4_12 = org.telegram.ui.TopicsFragment.-$$Nest$fgettopicsController(this.this$0).findTopic(this.this$0.chatId, ((long) ((Integer) v0_18.get(v3_2)).intValue()));
                        if (v4_12 != 0) {
                            int v17_1;
                            this.this$0.getMessagesController().markMentionsAsRead((- this.this$0.chatId), ((long) v4_12.id));
                            org.telegram.messenger.MessagesController vtmp47 = this.this$0.getMessagesController();
                            long v5_10 = v4_12.topMessage;
                            if (v5_10 == 0) {
                                v17_1 = 0;
                            } else {
                                v17_1 = v5_10.date;
                            }
                            vtmp47.markDialogAsRead((- this.this$0.chatId), v4_12.top_message, 0, v17_1, 0, ((long) v4_12.id), 0, 1, 0);
                            this.this$0.getMessagesStorage().updateRepliesMaxReadId(this.this$0.chatId, ((long) v4_12.id), v4_12.top_message, 0, 1);
                        }
                        v3_2++;
                    }
                    org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                    break;
                case 9:
                case 10:
                    org.telegram.ui.TopicsFragment.-$$Nest$fputupdateAnimated(this.this$0, 1);
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_15 = new java.util.ArrayList(this.this$0.selectedTopics);
                    int v4_7 = 0;
                    while (v4_7 < v0_15.size()) {
                        org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda0 v9_1;
                        long v5_2 = org.telegram.ui.TopicsFragment.-$$Nest$fgettopicsController(this.this$0);
                        long v6_2 = this.this$0.chatId;
                        int vtmp41 = ((Integer) v0_15.get(v4_7)).intValue();
                        if (p25 != 9) {
                            v9_1 = 0;
                        } else {
                            v9_1 = 1;
                        }
                        v5_2.toggleCloseTopic(v6_2, vtmp41, v9_1);
                        v4_7++;
                    }
                    org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                    break;
                case 11:
                    org.telegram.tgnet.TLRPC$Chat v14 = this.this$0.getMessagesController().getChat(Long.valueOf(this.this$0.chatId));
                    org.telegram.ui.Components.AlertsCreator.createClearOrDeleteDialogAlert(this.this$0, 0, v14, 0, 0, 1, 0, 0, new org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda2(this, v14));
                    break;
                case 12:
                case 13:
                    int v4_27 = 0;
                    while (v4_27 < org.telegram.ui.TopicsFragment.-$$Nest$fgetrecyclerListView(this.this$0).getChildCount()) {
                        long v5_43 = org.telegram.ui.TopicsFragment.-$$Nest$fgetrecyclerListView(this.this$0).getChildAt(v4_27);
                        if ((v5_43 instanceof org.telegram.ui.TopicsFragment$TopicDialogCell)) {
                            long v5_40 = ((org.telegram.ui.TopicsFragment$TopicDialogCell) v5_43);
                            long v6_8 = v5_40.forumTopic;
                            if ((v6_8 != 0) && (v6_8.id == 1)) {
                                v0_1 = v6_8;
                                if (v0_1 == null) {
                                    while (v2_26 < this.this$0.forumTopics.size()) {
                                        if ((this.this$0.forumTopics.get(v2_26) == null) || ((((org.telegram.ui.TopicsFragment$Item) this.this$0.forumTopics.get(v2_26)).topic == null) || (((org.telegram.ui.TopicsFragment$Item) this.this$0.forumTopics.get(v2_26)).topic.id != 1))) {
                                            v2_26++;
                                        } else {
                                            v0_1 = ((org.telegram.ui.TopicsFragment$Item) this.this$0.forumTopics.get(v2_26)).topic;
                                            break;
                                        }
                                    }
                                }
                                if (v0_1 != null) {
                                    if (org.telegram.ui.TopicsFragment.-$$Nest$fgethiddenCount(this.this$0) <= 0) {
                                        org.telegram.ui.TopicsFragment.-$$Nest$fputhiddenShown(this.this$0, 1);
                                        org.telegram.ui.TopicsFragment.-$$Nest$fputpullViewState(this.this$0, 2);
                                    }
                                    this.this$0.getMessagesController().getTopicsController().toggleShowTopic(this.this$0.chatId, 1, v0_1.hidden);
                                    if (v5_40 != 0) {
                                        org.telegram.ui.TopicsFragment.-$$Nest$fputgeneralTopicViewMoving(this.this$0, v5_40);
                                    }
                                    org.telegram.ui.TopicsFragment$TopicsRecyclerView.-$$Nest$msetArchiveHidden(org.telegram.ui.TopicsFragment.-$$Nest$fgetrecyclerListView(this.this$0), (v0_1.hidden ^ 1), v5_40);
                                    org.telegram.ui.TopicsFragment.-$$Nest$mupdateTopicsList(this.this$0, 1, 1);
                                    if (v5_40 != 0) {
                                        v5_40.setTopicIcon(org.telegram.ui.TopicsFragment$TopicDialogCell.-$$Nest$fgetcurrentTopic(v5_40));
                                    }
                                }
                                org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                            }
                        }
                        v4_27++;
                    }
                    v5_40 = 0;
                    break;
                case 14:
                    if (!org.telegram.messenger.ChatObject.hasAdminRights(this.this$0.getMessagesController().getChat(Long.valueOf(this.this$0.chatId)))) {
                        org.telegram.tgnet.TLRPC$TL_forumTopic v0_27 = this.this$0.getNotificationCenter();
                        int v3_11 = new Object[1];
                        v3_11[0] = Long.valueOf((- this.this$0.chatId));
                        v0_27.postNotificationName(org.telegram.messenger.NotificationCenter.openBoostForUsersDialog, v3_11);
                    } else {
                        org.telegram.tgnet.TLRPC$TL_forumTopic v0_59 = new org.telegram.ui.BoostsActivity((- this.this$0.chatId));
                        v0_59.setBoostsStatus(org.telegram.ui.TopicsFragment.-$$Nest$fgetboostsStatus(this.this$0));
                        this.this$0.presentFragment(v0_59);
                    }
                    break;
                case 15:
                    org.telegram.tgnet.TLRPC$TL_forumTopic v0_61 = this.this$0;
                    org.telegram.ui.ReportBottomSheet.openChat(v0_61, (- v0_61.chatId));
                    break;
                default:
            }
            super.onItemClick(p25);
            return;
        } else {
            if (this.this$0.selectedTopics.size() <= 0) {
                this.this$0.finishFragment();
                return;
            } else {
                org.telegram.ui.TopicsFragment.-$$Nest$mclearSelectedTopics(this.this$0);
                return;
            }
        }
    }
}
