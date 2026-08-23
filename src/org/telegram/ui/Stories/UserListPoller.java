package org.telegram.ui.Stories;

import android.view.View;
import java.util.ArrayList;
import kotlin.time.DurationKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.LongSparseLongArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes3.dex */
public class UserListPoller {
    private static UserListPoller[] istances = new UserListPoller[16];
    final int currentAccount;
    LongSparseLongArray userPollLastTime = new LongSparseLongArray();
    ArrayList<Long> dialogIds = new ArrayList<>();
    ArrayList<Long> collectedDialogIds = new ArrayList<>();
    ArrayList<Integer> runningRequests = new ArrayList<>();
    Runnable requestCollectedRunnables = new RunnableC58851();

    private UserListPoller(int i) {
        this.currentAccount = i;
    }

    public static UserListPoller getInstance(int i) {
        UserListPoller[] userListPollerArr = istances;
        if (userListPollerArr[i] == null) {
            userListPollerArr[i] = new UserListPoller(i);
        }
        return istances[i];
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.UserListPoller$1 */
    public class RunnableC58851 implements Runnable {
        public RunnableC58851() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (UserListPoller.this.collectedDialogIds.isEmpty()) {
                return;
            }
            final ArrayList arrayList = new ArrayList(UserListPoller.this.collectedDialogIds);
            UserListPoller.this.collectedDialogIds.clear();
            TL_stories.TL_stories_getPeerMaxIDs tL_stories_getPeerMaxIDs = new TL_stories.TL_stories_getPeerMaxIDs();
            for (int i = 0; i < arrayList.size(); i++) {
                tL_stories_getPeerMaxIDs.id.add(MessagesController.getInstance(UserListPoller.this.currentAccount).getInputPeer(((Long) arrayList.get(i)).longValue()));
            }
            ConnectionsManager.getInstance(UserListPoller.this.currentAccount).sendRequestTyped(tL_stories_getPeerMaxIDs, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Stories.UserListPoller$1$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$run$0(arrayList, (Vector) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList, Vector vector, TLRPC.TL_error tL_error) {
            if (vector != null) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (int i = 0; i < vector.objects.size(); i++) {
                    long jLongValue = ((Long) arrayList.get(i)).longValue();
                    UserListPoller userListPoller = UserListPoller.this;
                    if (jLongValue > 0) {
                        TLRPC.User user = MessagesController.getInstance(userListPoller.currentAccount).getUser((Long) arrayList.get(i));
                        if (user != null) {
                            TLRPC.TL_recentStory tL_recentStory = (TLRPC.TL_recentStory) vector.objects.get(i);
                            user.stories_max_id = tL_recentStory;
                            int i2 = user.flags2;
                            if (tL_recentStory != null) {
                                user.flags2 = i2 | 32;
                            } else {
                                user.flags2 = i2 & (-33);
                            }
                            arrayList2.add(user);
                        }
                    } else {
                        TLRPC.Chat chat = MessagesController.getInstance(userListPoller.currentAccount).getChat((Long) arrayList.get(i));
                        if (chat != null) {
                            TLRPC.TL_recentStory tL_recentStory2 = (TLRPC.TL_recentStory) vector.objects.get(i);
                            chat.stories_max_id = tL_recentStory2;
                            int i3 = chat.flags2;
                            if (tL_recentStory2 != null) {
                                chat.flags2 = i3 | 16;
                            } else {
                                chat.flags2 = i3 & (-17);
                            }
                            arrayList3.add(chat);
                        }
                    }
                }
                MessagesStorage.getInstance(UserListPoller.this.currentAccount).putUsersAndChats(arrayList2, arrayList3, true, true);
                NotificationCenter.getInstance(UserListPoller.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
            }
        }
    }

    public void checkList(RecyclerListView recyclerListView) {
        long dialogId;
        TLRPC.UserStatus userStatus;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.dialogIds.clear();
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            if (childAt instanceof DialogCell) {
                dialogId = ((DialogCell) childAt).getDialogId();
            } else {
                dialogId = childAt instanceof UserCell ? ((UserCell) childAt).getDialogId() : 0L;
            }
            int i2 = this.currentAccount;
            if (dialogId > 0) {
                TLRPC.User user = MessagesController.getInstance(i2).getUser(Long.valueOf(dialogId));
                if (user != null && !user.bot && !user.self && !user.contact && (userStatus = user.status) != null && !(userStatus instanceof TLRPC.TL_userStatusEmpty) && jCurrentTimeMillis - this.userPollLastTime.get(dialogId, 0L) > DurationKt.MILLIS_IN_HOUR) {
                    this.userPollLastTime.put(dialogId, jCurrentTimeMillis);
                    this.dialogIds.add(Long.valueOf(dialogId));
                }
            } else {
                TLRPC.Chat chat = MessagesController.getInstance(i2).getChat(Long.valueOf(-dialogId));
                if (ChatObject.isChannel(chat) && !ChatObject.isMonoForum(chat) && jCurrentTimeMillis - this.userPollLastTime.get(dialogId, 0L) > DurationKt.MILLIS_IN_HOUR) {
                    this.userPollLastTime.put(dialogId, jCurrentTimeMillis);
                    this.dialogIds.add(Long.valueOf(dialogId));
                }
            }
        }
        if (this.dialogIds.isEmpty()) {
            return;
        }
        this.collectedDialogIds.addAll(this.dialogIds);
        AndroidUtilities.cancelRunOnUIThread(this.requestCollectedRunnables);
        AndroidUtilities.runOnUIThread(this.requestCollectedRunnables, 300L);
    }
}
