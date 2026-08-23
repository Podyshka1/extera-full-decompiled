package org.telegram.ui.community;

import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_communities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.community.cells.CommunityPendingRequestCell;
import org.telegram.ui.community.sheet.CommunityAddOptionsSheet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CommunityUtils {
    public static void fillLinkedPeers(int i, ArrayList<UItem> arrayList, long j, boolean z) {
        boolean z2;
        MessagesController.CommunityPeersDialog communityPeersDialogBuildCommunityPeers = MessagesController.getInstance(i).buildCommunityPeers(j);
        if (communityPeersDialogBuildCommunityPeers == null) {
            return;
        }
        int i2 = 0;
        if (communityPeersDialogBuildCommunityPeers.chatsYouAreIn.isEmpty()) {
            z2 = false;
        } else {
            arrayList.add(UItem.asHeader(21, LocaleController.getString(C2573R.string.CommunitySectionChatsYouAreIn)));
            ArrayList<MessagesController.CommunityPeerDialog> arrayList2 = communityPeersDialogBuildCommunityPeers.chatsYouAreIn;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                MessagesController.CommunityPeerDialog communityPeerDialog = arrayList2.get(i3);
                i3++;
                arrayList.add(DialogCellFactory.asCell(communityPeerDialog));
            }
            z2 = z;
        }
        if (!communityPeersDialogBuildCommunityPeers.chatsYouCanView.isEmpty()) {
            if (z2) {
                arrayList.add(UItem.asSpace(22, AndroidUtilities.dp(12.0f)));
            }
            arrayList.add(UItem.asHeader(23, LocaleController.getString(C2573R.string.CommunitySectionChatsYouCanView)));
            ArrayList<MessagesController.CommunityPeerDialog> arrayList3 = communityPeersDialogBuildCommunityPeers.chatsYouCanView;
            int size2 = arrayList3.size();
            int i4 = 0;
            while (i4 < size2) {
                MessagesController.CommunityPeerDialog communityPeerDialog2 = arrayList3.get(i4);
                i4++;
                arrayList.add(DialogCellFactory.asCell(communityPeerDialog2));
            }
            z2 = z;
        }
        if (communityPeersDialogBuildCommunityPeers.chatsYouCanJoin.isEmpty()) {
            z = z2;
        } else {
            if (z2) {
                arrayList.add(UItem.asSpace(24, AndroidUtilities.dp(12.0f)));
            }
            arrayList.add(UItem.asHeader(25, LocaleController.getString(C2573R.string.CommunitySectionChatsYouCanRequestToJoin)));
            ArrayList<MessagesController.CommunityPeerDialog> arrayList4 = communityPeersDialogBuildCommunityPeers.chatsYouCanJoin;
            int size3 = arrayList4.size();
            int i5 = 0;
            while (i5 < size3) {
                MessagesController.CommunityPeerDialog communityPeerDialog3 = arrayList4.get(i5);
                i5++;
                arrayList.add(DialogCellFactory.asCell(communityPeerDialog3));
            }
        }
        if (communityPeersDialogBuildCommunityPeers.chatsOther.isEmpty()) {
            return;
        }
        if (z) {
            arrayList.add(UItem.asSpace(26, AndroidUtilities.dp(12.0f)));
        }
        arrayList.add(UItem.asHeader(27, LocaleController.getString(C2573R.string.CommunitySectionHiddenChats)));
        ArrayList<MessagesController.CommunityPeerDialog> arrayList5 = communityPeersDialogBuildCommunityPeers.chatsOther;
        int size4 = arrayList5.size();
        while (i2 < size4) {
            MessagesController.CommunityPeerDialog communityPeerDialog4 = arrayList5.get(i2);
            i2++;
            arrayList.add(DialogCellFactory.asCell(communityPeerDialog4));
        }
    }

    public static void fillPendingRequests(int i, ArrayList<UItem> arrayList, ArrayList<TL_communities.CommunityPeerRequest> arrayList2, LongSparseArray<Void> longSparseArray, CommunityPendingRequestCell.ClickDelegate clickDelegate) {
        CommunityPendingRequestCell.ClickDelegate clickDelegate2;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            TL_communities.CommunityPeerRequest communityPeerRequest = arrayList2.get(i2);
            long peerDialogId = DialogObject.getPeerDialogId(communityPeerRequest.peer);
            if (longSparseArray == null || !longSparseArray.containsKey(peerDialogId)) {
                clickDelegate2 = clickDelegate;
                arrayList.add(CommunityPendingRequestCell.Factory.asPendingRequest(peerDialogId, MessagesController.getInstance(i).getUser(Long.valueOf(communityPeerRequest.requested_by)), !communityPeerRequest.visible, clickDelegate2, i2 < size + (-1)));
            } else {
                clickDelegate2 = clickDelegate;
            }
            i2++;
            clickDelegate = clickDelegate2;
        }
    }

    public static class PendingRequests implements CommunityPendingRequestCell.ClickDelegate {
        private final BulletinFactory bulletinFactory;
        private TLRPC.Chat community;
        private final long communityId;
        private final Context context;
        private final int currentAccount;
        private Delegate delegate;
        private Runnable doCommitRunnable;
        private boolean finished;
        private long lastViewTime;
        private boolean loading;
        private String nextOffset;
        private AlertDialog progressDialog;
        private int reqId;
        private final Theme.ResourcesProvider resourcesProvider;
        private int totalCount;
        private int unreadPendingRequests;
        private final LongSparseArray<Void> hiddenJoinRequests = new LongSparseArray<>();
        private ArrayList<TL_communities.CommunityPeerRequest> pendingRequests = new ArrayList<>();

        public interface Delegate {
            void close();

            void onClickGroupOwner(long j);

            void updateAdapter();
        }

        public PendingRequests(Context context, Theme.ResourcesProvider resourcesProvider, BulletinFactory bulletinFactory, int i, long j) {
            this.context = context;
            this.resourcesProvider = resourcesProvider;
            this.bulletinFactory = bulletinFactory;
            this.currentAccount = i;
            this.communityId = j;
            this.community = MessagesController.getInstance(i).getChat(Long.valueOf(j));
            this.lastViewTime = MessagesController.getMainSettings(i).getLong("community_requests_last_view_time_" + j, 0L);
        }

        public void setDelegate(Delegate delegate) {
            this.delegate = delegate;
        }

        public boolean isSingle() {
            ArrayList<TL_communities.CommunityPeerRequest> arrayList;
            return this.finished && this.totalCount == 1 && (arrayList = this.pendingRequests) != null && arrayList.size() == 1;
        }

        public void fillItems(ArrayList<UItem> arrayList) {
            ArrayList<TL_communities.CommunityPeerRequest> arrayList2 = this.pendingRequests;
            if (arrayList2 == null || arrayList2.isEmpty()) {
                return;
            }
            CommunityUtils.fillPendingRequests(this.currentAccount, arrayList, this.pendingRequests, this.hiddenJoinRequests, this);
            if (this.finished) {
                return;
            }
            arrayList.add(UItem.asFlicker(29));
        }

        public boolean isFinished() {
            return this.finished;
        }

        public int getTotalCount() {
            return this.totalCount;
        }

        public int getUnreadCount() {
            return this.unreadPendingRequests;
        }

        public void markAsViewed() {
            long currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            this.lastViewTime = currentTime;
            MessagesController.getMainSettings(this.currentAccount).edit().putLong("community_requests_last_view_time_" + this.communityId, currentTime).apply();
            calcUnreadPendingRequests();
        }

        private void calcUnreadPendingRequests() {
            this.unreadPendingRequests = 0;
            ArrayList<TL_communities.CommunityPeerRequest> arrayList = this.pendingRequests;
            if (arrayList == null) {
                return;
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!this.hiddenJoinRequests.containsKey(DialogObject.getPeerDialogId(this.pendingRequests.get(i).peer))) {
                    if (r2.date <= this.lastViewTime) {
                        return;
                    } else {
                        this.unreadPendingRequests++;
                    }
                }
            }
        }

        public void loadNext() {
            if (this.loading || this.finished || !ChatObject.canUserDoAdminAction(this.community, 27)) {
                return;
            }
            this.loading = true;
            MessagesController.getInstance(this.currentAccount).fetchCommunityPendingJoinRequests(this.communityId, this.nextOffset, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$loadNext$0((TL_communities.PeerLinkRequests) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadNext$0(TL_communities.PeerLinkRequests peerLinkRequests, TLRPC.TL_error tL_error) {
            this.loading = false;
            if (peerLinkRequests != null) {
                ArrayList<TL_communities.CommunityPeerRequest> arrayList = this.pendingRequests;
                if (arrayList == null) {
                    this.pendingRequests = new ArrayList<>(peerLinkRequests.requests);
                } else {
                    arrayList.addAll(peerLinkRequests.requests);
                }
                String str = peerLinkRequests.next_offset;
                this.nextOffset = str;
                this.totalCount = peerLinkRequests.total_count;
                this.finished = str == null;
                calcUnreadPendingRequests();
                Delegate delegate = this.delegate;
                if (delegate != null) {
                    delegate.updateAdapter();
                }
            }
        }

        public void checkLoadNext(UniversalRecyclerView universalRecyclerView) {
            if (this.loading || this.finished || universalRecyclerView.layoutManager.findLastVisibleItemPosition() + 10 <= universalRecyclerView.adapter.getItemCount()) {
                return;
            }
            loadNext();
        }

        public void commit() {
            Runnable runnable = this.doCommitRunnable;
            if (runnable != null) {
                runnable.run();
            }
            this.doCommitRunnable = null;
        }

        private void onResolveJoinRequest(final long j, final boolean z) {
            int i;
            int i2;
            this.hiddenJoinRequests.put(j, null);
            this.totalCount--;
            calcUnreadPendingRequests();
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.updateAdapter();
            }
            if (z) {
                i = C2573R.string.CommunityRequestApprovedToast;
            } else {
                i = C2573R.string.CommunityRequestDeclinedToast;
            }
            SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(i, DialogObject.getShortName(this.currentAccount, j)));
            commit();
            this.doCommitRunnable = new Runnable() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResolveJoinRequest$2(j, z);
                }
            };
            Bulletin.UsersLayout usersLayout = new Bulletin.UsersLayout(this.context, false, this.resourcesProvider);
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(j);
            if (userOrChat != null) {
                usersLayout.avatarsImageView.setCount(1);
                usersLayout.avatarsImageView.setObject(0, UserConfig.selectedAccount, userOrChat);
                i2 = 1;
            } else {
                i2 = 0;
            }
            usersLayout.avatarsImageView.setTranslationX(AndroidUtilities.dp(7.0f));
            usersLayout.avatarsImageView.setScaleX(1.333f);
            usersLayout.avatarsImageView.setScaleY(1.333f);
            usersLayout.avatarsImageView.commitTransition(false);
            usersLayout.textView.setSingleLine(false);
            usersLayout.textView.setMaxLines(2);
            usersLayout.textView.setTextSize(1, 14.0f);
            usersLayout.textView.setText(spannableStringBuilderReplaceTags);
            if (usersLayout.textView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int iDp = AndroidUtilities.dp(74 - ((3 - i2) * 12));
                boolean z2 = LocaleController.isRTL;
                TextView textView = usersLayout.textView;
                if (z2) {
                    ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).rightMargin = iDp;
                } else {
                    ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).leftMargin = iDp;
                }
            }
            if (LocaleController.isRTL) {
                usersLayout.avatarsImageView.setTranslationX(AndroidUtilities.dp(32 - ((i2 - 1) * 12)));
            }
            usersLayout.setButton(new Bulletin.UndoButton(this.context, true, true, this.resourcesProvider).setText(LocaleController.getString(C2573R.string.UndoNoCaps)).setUndoAction(new Runnable() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResolveJoinRequest$3(j);
                }
            }).setDelayedAction(this.doCommitRunnable));
            this.bulletinFactory.create(usersLayout, 5000).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveJoinRequest$2(long j, boolean z) {
            this.doCommitRunnable = null;
            this.hiddenJoinRequests.remove(j);
            ArrayList<TL_communities.CommunityPeerRequest> arrayList = this.pendingRequests;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (DialogObject.getPeerDialogId(this.pendingRequests.get(size).peer) == j) {
                        this.pendingRequests.remove(size);
                    }
                }
            }
            calcUnreadPendingRequests();
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.updateAdapter();
            }
            MessagesController.getInstance(this.currentAccount).resolveCommunityJoinPendingRequest(this.communityId, j, !z, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onResolveJoinRequest$1((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveJoinRequest$1(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
            if (tL_error != null) {
                this.bulletinFactory.showForError(tL_error);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveJoinRequest$3(long j) {
            this.doCommitRunnable = null;
            this.hiddenJoinRequests.remove(j);
            this.totalCount++;
            calcUnreadPendingRequests();
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.updateAdapter();
            }
        }

        public void onResolveAllJoinRequests(boolean z) {
            onResolveAllJoinRequests(z, true);
        }

        private void onResolveAllJoinRequests(final boolean z, boolean z2) {
            TextView textView;
            if (this.progressDialog == null && this.reqId == 0) {
                if (z2) {
                    AlertDialog alertDialogCreateSimpleConfirmAlert = AlertsCreator.createSimpleConfirmAlert(this.context, this.resourcesProvider, LocaleController.getString(z ? C2573R.string.CommunityAddAllChatsTitle : C2573R.string.CommunityDeclineAllTitle), AndroidUtilities.replaceTags(LocaleController.formatPluralString(z ? "CommunityAddAllChatsMessage" : "CommunityDeclineAllMessage", this.totalCount, new Object[0])), LocaleController.getString(z ? C2573R.string.Add : C2573R.string.Decline), new Runnable() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onResolveAllJoinRequests$4(z);
                        }
                    });
                    alertDialogCreateSimpleConfirmAlert.show();
                    if (z || (textView = (TextView) alertDialogCreateSimpleConfirmAlert.getButton(-1)) == null) {
                        return;
                    }
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                commit();
                AlertDialog alertDialog = new AlertDialog(this.context, 3, this.resourcesProvider);
                this.progressDialog = alertDialog;
                alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.f$0.lambda$onResolveAllJoinRequests$5(dialogInterface);
                    }
                });
                this.progressDialog.showDelayed(500L);
                this.reqId = MessagesController.getInstance(this.currentAccount).resolveCommunityAllJoinPendingRequests(this.communityId, !z, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityUtils$PendingRequests$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onResolveAllJoinRequests$6((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveAllJoinRequests$4(boolean z) {
            onResolveAllJoinRequests(z, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveAllJoinRequests$5(DialogInterface dialogInterface) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
            this.progressDialog = null;
            this.reqId = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResolveAllJoinRequests$6(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
            this.reqId = 0;
            if (tL_error != null) {
                this.bulletinFactory.showForError(tL_error);
                return;
            }
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.close();
            }
        }

        @Override // org.telegram.ui.community.cells.CommunityPendingRequestCell.ClickDelegate
        public void onClickApprove(long j) {
            onResolveJoinRequest(j, true);
        }

        @Override // org.telegram.ui.community.cells.CommunityPendingRequestCell.ClickDelegate
        public void onClickDecline(long j) {
            onResolveJoinRequest(j, false);
        }

        @Override // org.telegram.ui.community.cells.CommunityPendingRequestCell.ClickDelegate
        public void onClickGroupOwner(long j) {
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.onClickGroupOwner(j);
            }
        }
    }

    public static void showChatsToAddToCommunity(final AlertDialog[] alertDialogArr, final BaseFragment baseFragment, final int i, final TLRPC.Chat chat) {
        if (alertDialogArr[0] != null) {
            return;
        }
        final int iFetchChatsToAddToCommunity = MessagesController.getInstance(i).fetchChatsToAddToCommunity(new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                CommunityUtils.m22566$r8$lambda$nraCHsVClHd7uy09LZY5LtrLA0(alertDialogArr, baseFragment, i, chat, (ArrayList) obj, (TLRPC.TL_error) obj2);
            }
        });
        ConnectionsManager.getInstance(i).bindRequestToGuid(iFetchChatsToAddToCommunity, baseFragment.getClassGuid());
        AlertDialog alertDialog = new AlertDialog(baseFragment.getContext(), 3);
        alertDialogArr[0] = alertDialog;
        alertDialog.showDelayed(500L);
        alertDialogArr[0].setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                CommunityUtils.m22563$r8$lambda$8dXqhjoQeLjKgpGYrpZ1Vx1dHc(i, iFetchChatsToAddToCommunity, alertDialogArr, dialogInterface);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$nraCHsVClHd7uy0-9LZY5LtrLA0, reason: not valid java name */
    public static /* synthetic */ void m22566$r8$lambda$nraCHsVClHd7uy09LZY5LtrLA0(AlertDialog[] alertDialogArr, BaseFragment baseFragment, int i, TLRPC.Chat chat, ArrayList arrayList, TLRPC.TL_error tL_error) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.dismiss();
            alertDialogArr[0] = null;
        }
        if (tL_error != null) {
            BulletinFactory.of(baseFragment).showForError(tL_error);
        } else if (arrayList != null) {
            if (arrayList.isEmpty()) {
                BulletinFactory.of(baseFragment).createSimpleBulletin(C2573R.raw.info, LocaleController.getString(C2573R.string.CommunityNoChatsToAdd)).show();
            } else {
                showChatsToAddSheet(baseFragment, i, chat, arrayList);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$8dXqhjo-QeLjKgpGYrpZ1Vx1dHc, reason: not valid java name */
    public static /* synthetic */ void m22563$r8$lambda$8dXqhjoQeLjKgpGYrpZ1Vx1dHc(int i, int i2, AlertDialog[] alertDialogArr, DialogInterface dialogInterface) {
        ConnectionsManager.getInstance(i).cancelRequest(i2, true);
        alertDialogArr[0] = null;
    }

    private static void showChatsToAddSheet(final BaseFragment baseFragment, final int i, final TLRPC.Chat chat, ArrayList<TLRPC.Chat> arrayList) {
        if (!arrayList.isEmpty()) {
            baseFragment.showDialog(new CommunitySheet(baseFragment, 0L, arrayList, new Utilities.Callback() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BaseFragment baseFragment2 = baseFragment;
                    TLRPC.Chat chat2 = chat;
                    TLRPC.Chat chat3 = (TLRPC.Chat) obj;
                    baseFragment2.showDialog(new CommunityAddOptionsSheet(baseFragment2.getContext(), chat2, -chat3.id, new Utilities.Callback() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda3
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            CommunityUtils.linkToCommunityAndConvertIfNeeded(baseFragment2, i, chat3, chat2.id, ((Boolean) obj2).booleanValue());
                        }
                    }));
                }
            }));
        } else {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2573R.raw.info, _UrlKt.FRAGMENT_ENCODE_SET).show();
        }
    }

    public static void linkToCommunityAndConvertIfNeeded(final BaseFragment baseFragment, final int i, TLRPC.Chat chat, final long j, final boolean z) {
        if (!ChatObject.isChannel(chat)) {
            final AlertDialog alertDialog = new AlertDialog(baseFragment.getContext(), 3);
            alertDialog.showDelayed(250L);
            MessagesController.getInstance(i).convertToMegaGroup(baseFragment.getParentActivity(), chat.id, baseFragment, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j2) {
                    CommunityUtils.m22564$r8$lambda$L38f6i3Rz4OotbEnUhizO9g0eQ(alertDialog, baseFragment, i, j, z, j2);
                }
            });
            return;
        }
        linkToCommunityWithoutConvert(baseFragment, i, chat.id, j, z);
    }

    /* JADX INFO: renamed from: $r8$lambda$L38f6i3Rz-4OotbEnUhizO9g0eQ, reason: not valid java name */
    public static /* synthetic */ void m22564$r8$lambda$L38f6i3Rz4OotbEnUhizO9g0eQ(AlertDialog alertDialog, BaseFragment baseFragment, int i, long j, boolean z, long j2) {
        alertDialog.dismiss();
        if (j2 == 0) {
            return;
        }
        linkToCommunityWithoutConvert(baseFragment, i, j2, j, z);
    }

    public static void linkToCommunityWithoutConvert(final BaseFragment baseFragment, int i, final long j, long j2, boolean z) {
        MessagesController.getInstance(i).linkCommunity(-j, j2, z, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                CommunityUtils.$r8$lambda$F03GPPe9DR9O_vJh6ow94AUudyw(baseFragment, j, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$F03GPPe9DR9O_vJh6ow94AUudyw(BaseFragment baseFragment, long j, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            if (TextUtils.equals("COMMUNITY_REQUEST_CREATED", tL_error.text)) {
                onCommunityLinkSuccess(baseFragment, -j, 2);
                return;
            } else {
                BulletinFactory.of(baseFragment).showForError(tL_error);
                return;
            }
        }
        onCommunityLinkSuccess(baseFragment, -j, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void onCommunityLinkSuccess(BaseFragment baseFragment, long j, final int i) {
        INavigationLayout parentLayout;
        final ChatActivity chatActivity;
        int size;
        List<BaseFragment> list = null;
        if (AndroidUtilities.isTablet()) {
            parentLayout = null;
            chatActivity = null;
        } else {
            parentLayout = baseFragment.getParentLayout();
            if (parentLayout != null) {
                List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
                size = fragmentStack.size() - 2;
                while (true) {
                    if (size < 0) {
                        chatActivity = null;
                        size = -1;
                        break;
                    }
                    BaseFragment baseFragment2 = fragmentStack.get(size);
                    if (baseFragment2 instanceof ChatActivity) {
                        chatActivity = (ChatActivity) baseFragment2;
                        if (chatActivity.getDialogId() == j) {
                            break;
                        }
                    }
                    size--;
                }
                list = fragmentStack;
                final boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(j, baseFragment.getCurrentAccount());
                if (size == -1) {
                    for (int size2 = list.size() - 2; size2 > size; size2--) {
                        parentLayout.removeFragmentFromStack(list.get(size2));
                    }
                    baseFragment.finishFragment();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.community.CommunityUtils$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommunityUtils.$r8$lambda$V7osAp95jpxjNUGaG8LtdLOutf8(i, chatActivity, zIsChannelAndNotMegaGroup);
                        }
                    }, 250L);
                    return;
                }
                if (!(baseFragment instanceof DialogsActivity)) {
                    baseFragment.finishFragment();
                }
                showCommunityLinkSuccessToast(BulletinFactory.global(), i, zIsChannelAndNotMegaGroup);
                return;
            }
            chatActivity = null;
        }
        size = -1;
        final boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(j, baseFragment.getCurrentAccount());
        if (size == -1) {
        }
    }

    public static /* synthetic */ void $r8$lambda$V7osAp95jpxjNUGaG8LtdLOutf8(int i, ChatActivity chatActivity, boolean z) {
        if (i != 2) {
            chatActivity.onPageDownClicked(true);
            chatActivity.startFireworks();
        }
        showCommunityLinkSuccessToast(BulletinFactory.of(chatActivity), i, z);
    }

    public static void showCommunityLinkSuccessToast(BulletinFactory bulletinFactory, int i, boolean z) {
        String string;
        int i2;
        int i3 = i == 2 ? C2573R.raw.timer_toast : C2573R.raw.contact_check;
        int i4 = i == 2 ? 24 : 36;
        if (i == 0) {
            string = LocaleController.getString(C2573R.string.CommunityCommunityCreated);
        } else if (i == 1) {
            if (z) {
                i2 = C2573R.string.CommunityCommunityJoinedChannel;
            } else {
                i2 = C2573R.string.CommunityCommunityJoinedGroup;
            }
            string = LocaleController.getString(i2);
        } else {
            string = LocaleController.getString(C2573R.string.CommunityCommunityPending);
        }
        bulletinFactory.createSimpleBulletin(i3, string, i4).show();
    }

    public static CommunityChatType getCommunityChatType(int i, long j) {
        TLRPC.Chat chat;
        long j2;
        TLRPC.User user;
        TLRPC.ChatFull chatFull;
        ArrayList<TL_communities.CommunityPeer> arrayList;
        if (j > 0) {
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            if (user2 == null) {
                return null;
            }
            j2 = user2.linked_community_id;
            user = user2;
            chat = null;
        } else {
            chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            if (chat == null) {
                return null;
            }
            j2 = chat.linked_community_id;
            user = null;
        }
        if (j2 != 0 && (chatFull = MessagesController.getInstance(i).getChatFull(j2)) != null && (arrayList = chatFull.linked_peers) != null) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TL_communities.CommunityPeer communityPeer = arrayList.get(i2);
                i2++;
                TL_communities.CommunityPeer communityPeer2 = communityPeer;
                if (DialogObject.getPeerDialogId(communityPeer2.peer) == j) {
                    return getCommunityChatType(chat, user, user != null ? MessagesController.getInstance(i).getDialog(user.id) : null, communityPeer2);
                }
            }
        }
        return null;
    }

    public static CommunityChatType getCommunityChatType(TLRPC.Chat chat, TLRPC.User user, TLRPC.Dialog dialog, TL_communities.CommunityPeer communityPeer) {
        if (communityPeer == null) {
            return null;
        }
        if (user != null) {
            return dialog != null ? CommunityChatType.YouAreIn : CommunityChatType.YouCanView;
        }
        if (chat == null) {
            return null;
        }
        if (ChatObject.isInChat(chat)) {
            return CommunityChatType.YouAreIn;
        }
        if (ChatObject.isPublic(chat) || communityPeer.can_view_history) {
            return CommunityChatType.YouCanView;
        }
        if (ChatObject.isCommunityPeerHidden(communityPeer)) {
            return CommunityChatType.HiddenUnavailable;
        }
        return CommunityChatType.YouCanSendJoinRequest;
    }

    public static CharSequence buildServiceMessageText(MessageObject messageObject, String str, String str2, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.TL_messageActionChangeCommunity tL_messageActionChangeCommunity = (TLRPC.TL_messageActionChangeCommunity) message.action;
        boolean z3 = DialogObject.getPeerDialogId(message.peer_id) == DialogObject.getPeerDialogId(message.from_id);
        boolean z4 = tL_messageActionChangeCommunity.community_id == 0;
        if (z3) {
            if (z4) {
                if (z2) {
                    i6 = C2573R.string.CommunityServiceMessageBotRemovedUnknown;
                } else if (z) {
                    i6 = C2573R.string.CommunityServiceMessageChannelRemovedUnknown;
                } else {
                    i6 = C2573R.string.CommunityServiceMessageGroupRemovedUnknown;
                }
                return AndroidUtilities.replaceTags(LocaleController.getString(i6));
            }
            if (z2) {
                i5 = C2573R.string.CommunityServiceMessageBotAddedUnknown;
            } else if (z) {
                i5 = C2573R.string.CommunityServiceMessageChannelAddedUnknown;
            } else {
                i5 = C2573R.string.CommunityServiceMessageGroupAddedUnknown;
            }
            return AndroidUtilities.replaceTags(LocaleController.formatString(i5, str));
        }
        if (messageObject.isOut()) {
            if (z4) {
                if (z2) {
                    i4 = C2573R.string.CommunityServiceMessageBotYouRemoved;
                } else if (z) {
                    i4 = C2573R.string.CommunityServiceMessageChannelYouRemoved;
                } else {
                    i4 = C2573R.string.CommunityServiceMessageGroupYouRemoved;
                }
                return AndroidUtilities.replaceTags(LocaleController.getString(i4));
            }
            if (z2) {
                i3 = C2573R.string.CommunityServiceMessageBotYouAdded;
            } else if (z) {
                i3 = C2573R.string.CommunityServiceMessageChannelYouAdded;
            } else {
                i3 = C2573R.string.CommunityServiceMessageGroupYouAdded;
            }
            return AndroidUtilities.replaceTags(LocaleController.formatString(i3, str));
        }
        if (z4) {
            if (z2) {
                i2 = C2573R.string.CommunityServiceMessageBotRemoved;
            } else if (z) {
                i2 = C2573R.string.CommunityServiceMessageChannelRemoved;
            } else {
                i2 = C2573R.string.CommunityServiceMessageGroupRemoved;
            }
            return AndroidUtilities.replaceTags(LocaleController.formatString(i2, str2));
        }
        if (z2) {
            i = C2573R.string.CommunityServiceMessageBotAdded;
        } else if (z) {
            i = C2573R.string.CommunityServiceMessageChannelAdded;
        } else {
            i = C2573R.string.CommunityServiceMessageGroupAdded;
        }
        return AndroidUtilities.replaceTags(LocaleController.formatString(i, str2, str));
    }

    public static class DialogCellFactory extends UItem.UItemFactory<DialogCell> {
        static {
            UItem.UItemFactory.setup(new DialogCellFactory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.id == uItem2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            return equals(uItem, uItem2);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public DialogCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            DialogCell dialogCell = new DialogCell(null, context, false, false, i, resourcesProvider);
            dialogCell.insideCommunityList = true;
            return dialogCell;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            DialogCell dialogCell = (DialogCell) view;
            Object obj = uItem.object;
            if (obj instanceof TLRPC.Chat) {
                TLRPC.Chat chat = (TLRPC.Chat) obj;
                dialogCell.isHiddenInCommunity = ChatObject.isHiddenInCommunity(UserConfig.selectedAccount, chat);
                TLRPC.Dialog dialog = MessagesController.getInstance(UserConfig.selectedAccount).getDialog(-chat.id);
                dialogCell.insideCommunityListNoDialog = dialog == null;
                if (dialog != null) {
                    dialogCell.setCustomMessageWithoutRebuild(null);
                    dialogCell.setDialog(dialog, 0, 0);
                    return;
                } else {
                    dialogCell.setCustomMessageWithoutRebuild(LocaleController.formatPluralString("Members", chat.participants_count, new Object[0]));
                    dialogCell.setDialog(-chat.id, null, 0, false, false);
                    return;
                }
            }
            if (obj instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) obj;
                dialogCell.isHiddenInCommunity = ChatObject.isHiddenInCommunity(UserConfig.selectedAccount, user);
                TLRPC.Dialog dialog2 = MessagesController.getInstance(UserConfig.selectedAccount).getDialog(user.id);
                dialogCell.insideCommunityListNoDialog = dialog2 == null;
                if (dialog2 != null) {
                    dialogCell.setCustomMessageWithoutRebuild(null);
                    dialogCell.setDialog(dialog2, 0, 0);
                } else {
                    dialogCell.setCustomMessageWithoutRebuild(LocaleController.getString(C2573R.string.Bot));
                    dialogCell.setDialog(user.id, null, 0, false, false);
                }
            }
        }

        public static UItem asCell(MessagesController.CommunityPeerDialog communityPeerDialog) {
            TLRPC.User user = communityPeerDialog.user;
            return user != null ? asCell(user) : asCell(communityPeerDialog.chat);
        }

        public static UItem asCell(TLRPC.User user) {
            UItem uItemOfFactory = UItem.ofFactory(DialogCellFactory.class);
            long j = user != null ? user.id : 0L;
            uItemOfFactory.longValue = j;
            uItemOfFactory.id = Long.hashCode(j);
            uItemOfFactory.object = user;
            return uItemOfFactory;
        }

        public static UItem asCell(TLRPC.Chat chat) {
            UItem uItemOfFactory = UItem.ofFactory(DialogCellFactory.class);
            long j = chat != null ? -chat.id : 0L;
            uItemOfFactory.longValue = j;
            uItemOfFactory.id = Long.hashCode(j);
            uItemOfFactory.object = chat;
            return uItemOfFactory;
        }
    }
}
