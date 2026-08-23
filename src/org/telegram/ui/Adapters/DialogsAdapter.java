package org.telegram.ui.Adapters;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.RealWebSocket;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_chatlists;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.DialogMeUrlCell;
import org.telegram.ui.Cells.DialogsEmptyCell;
import org.telegram.ui.Cells.DialogsHintCell;
import org.telegram.ui.Cells.DialogsRequestedEmptyCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.RequestPeerRequirementsCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.ArchiveHelp;
import org.telegram.ui.Components.BlurredRecyclerView;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.PullForegroundDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoriesListPlaceProvider;

/* JADX INFO: loaded from: classes3.dex */
public class DialogsAdapter extends RecyclerListView.SelectionAdapter implements DialogCell.DialogCellDelegate {
    private static final boolean ALLOW_UPDATE_IN_BACKGROUND = BuildVars.DEBUG_PRIVATE_VERSION;
    private boolean allowForwardAsStories;
    private Drawable arrowDrawable;
    private boolean collapsedView;
    private int currentAccount;
    private int currentCount;
    private int dialogsCount;
    private boolean dialogsListFrozen;
    private int dialogsType;
    private int folderId;
    private boolean forceShowEmptyCell;
    private boolean forceUpdatingContacts;
    private boolean hasChatlistHint;
    private boolean hasHints;
    boolean isCalculatingDiff;
    public boolean isEmpty;
    private boolean isOnlySelect;
    private boolean isReordering;
    private boolean isTransitionSupport;
    private long lastSortTime;
    private Context mContext;
    private ArrayList onlineContacts;
    private long openedDialogId;
    private DialogsActivity parentFragment;
    private DialogsPreloader preloader;
    private PullForegroundDrawable pullForegroundDrawable;
    RecyclerListView recyclerListView;
    private TLRPC.RequestPeerType requestPeerType;
    private ArrayList selectedDialogs;
    boolean updateListPending;
    private boolean firstUpdate = true;
    ArrayList itemInternals = new ArrayList();
    ArrayList oldItems = new ArrayList();
    int stableIdPointer = 10;
    LongSparseIntArray dialogsStableIds = new LongSparseIntArray();
    public int lastDialogsEmptyType = -1;

    public ViewPager getArchiveHintCellPager() {
        return null;
    }

    public boolean isDataSetChanged() {
        return true;
    }

    protected void onArchiveSettingsClick() {
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonClicked(DialogCell dialogCell) {
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonLongPress(DialogCell dialogCell) {
    }

    public void onCreateGroupForThisClick() {
    }

    protected void onOpenBot(TLRPC.User user) {
    }

    protected boolean showOpenBotButton() {
        return false;
    }

    public DialogsAdapter(DialogsActivity dialogsActivity, Context context, int i, int i2, boolean z, ArrayList arrayList, int i3, TLRPC.RequestPeerType requestPeerType) {
        this.mContext = context;
        this.parentFragment = dialogsActivity;
        this.dialogsType = i;
        this.folderId = i2;
        this.isOnlySelect = z;
        this.hasHints = i2 == 0 && i == 0 && !z;
        this.selectedDialogs = arrayList;
        this.currentAccount = i3;
        if (i2 == 0) {
            this.preloader = new DialogsPreloader();
        }
        this.requestPeerType = requestPeerType;
    }

    public void setRecyclerListView(RecyclerListView recyclerListView) {
        this.recyclerListView = recyclerListView;
    }

    public void setOpenedDialogId(long j) {
        this.openedDialogId = j;
    }

    public void onReorderStateChanged(boolean z) {
        this.isReordering = z;
    }

    public int fixPosition(int i) {
        if (this.hasChatlistHint) {
            i--;
        }
        if (this.hasHints) {
            i -= MessagesController.getInstance(this.currentAccount).hintDialogs.size() + 2;
        }
        if (this.allowForwardAsStories && this.dialogsType == 3) {
            i--;
        }
        int i2 = this.dialogsType;
        return (i2 == 11 || i2 == 13) ? i - 2 : i2 == 12 ? i - 1 : i;
    }

    public void setDialogsType(int i) {
        this.dialogsType = i;
        notifyDataSetChanged();
    }

    public void setAllowForwardAsStories(boolean z) {
        this.allowForwardAsStories = z;
    }

    public boolean isAllowForwardAsStories() {
        return this.allowForwardAsStories;
    }

    public int getDialogsType() {
        return this.dialogsType;
    }

    public int getDialogsCount() {
        return this.dialogsCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return ((ItemInternal) this.itemInternals.get(i)).stableId;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.itemInternals.size();
        this.currentCount = size;
        return size;
    }

    public int findDialogPosition(long j) {
        for (int i = 0; i < this.itemInternals.size(); i++) {
            if (((ItemInternal) this.itemInternals.get(i)).dialog != null && ((ItemInternal) this.itemInternals.get(i)).dialog.id == j) {
                return i;
            }
        }
        return -1;
    }

    public int fixScrollGap(RecyclerListView recyclerListView, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4) {
        int iDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 76.0f : 70.0f);
        int paddingTop = ((recyclerListView.getPaddingTop() + i2) - (i * iDp)) - i;
        if (z) {
            paddingTop += iDp;
        }
        int paddingTop2 = recyclerListView.getPaddingTop();
        return paddingTop > paddingTop2 ? (i2 + paddingTop2) - paddingTop : i2;
    }

    private class ItemInternal extends AdapterWithDiffUtils.Item {
        TL_chatlists.TL_chatlists_chatlistUpdates chatlistUpdates;
        TLRPC.TL_contact contact;
        TLRPC.Dialog dialog;
        private int emptyType;
        private boolean isFolder;
        boolean isForumCell;
        private boolean pinned;
        TLRPC.RecentMeUrl recentMeUrl;
        private final int stableId;

        public ItemInternal(TL_chatlists.TL_chatlists_chatlistUpdates tL_chatlists_chatlistUpdates) {
            super(17, true);
            this.chatlistUpdates = tL_chatlists_chatlistUpdates;
            int i = DialogsAdapter.this.stableIdPointer;
            DialogsAdapter.this.stableIdPointer = i + 1;
            this.stableId = i;
        }

        public ItemInternal(int i, TLRPC.Dialog dialog) {
            super(i, true);
            this.dialog = dialog;
            if (dialog != null) {
                int i2 = DialogsAdapter.this.dialogsStableIds.get(dialog.id, -1);
                if (i2 >= 0) {
                    this.stableId = i2;
                } else {
                    int i3 = DialogsAdapter.this.stableIdPointer;
                    DialogsAdapter.this.stableIdPointer = i3 + 1;
                    this.stableId = i3;
                    DialogsAdapter.this.dialogsStableIds.put(dialog.id, i3);
                }
            } else if (i == 19) {
                this.stableId = 5;
            } else {
                int i4 = DialogsAdapter.this.stableIdPointer;
                DialogsAdapter.this.stableIdPointer = i4 + 1;
                this.stableId = i4;
            }
            if (dialog != null) {
                if (DialogsAdapter.this.dialogsType == 7 || DialogsAdapter.this.dialogsType == 8) {
                    MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(DialogsAdapter.this.currentAccount).selectedDialogFilter[DialogsAdapter.this.dialogsType == 8 ? (char) 1 : (char) 0];
                    this.pinned = dialogFilter != null && dialogFilter.pinnedDialogs.indexOfKey(dialog.id) >= 0;
                } else {
                    this.pinned = dialog.pinned;
                }
                this.isFolder = dialog.isFolder;
                this.isForumCell = MessagesController.getInstance(DialogsAdapter.this.currentAccount).isForum(dialog.id);
            }
        }

        public ItemInternal(int i, TLRPC.RecentMeUrl recentMeUrl) {
            super(i, true);
            this.recentMeUrl = recentMeUrl;
            int i2 = DialogsAdapter.this.stableIdPointer;
            DialogsAdapter.this.stableIdPointer = i2 + 1;
            this.stableId = i2;
        }

        public ItemInternal(int i) {
            super(i, true);
            this.emptyType = i;
            if (i == 10) {
                this.stableId = 1;
            } else {
                if (this.viewType == 19) {
                    this.stableId = 5;
                    return;
                }
                int i2 = DialogsAdapter.this.stableIdPointer;
                DialogsAdapter.this.stableIdPointer = i2 + 1;
                this.stableId = i2;
            }
        }

        public ItemInternal(int i, int i2) {
            super(i, true);
            this.emptyType = i2;
            int i3 = DialogsAdapter.this.stableIdPointer;
            DialogsAdapter.this.stableIdPointer = i3 + 1;
            this.stableId = i3;
        }

        public ItemInternal(int i, TLRPC.TL_contact tL_contact) {
            super(i, true);
            this.contact = tL_contact;
            if (tL_contact != null) {
                int i2 = DialogsAdapter.this.dialogsStableIds.get(tL_contact.user_id, -1);
                if (i2 > 0) {
                    this.stableId = i2;
                    return;
                }
                int i3 = DialogsAdapter.this.stableIdPointer;
                DialogsAdapter.this.stableIdPointer = i3 + 1;
                this.stableId = i3;
                DialogsAdapter.this.dialogsStableIds.put(this.contact.user_id, i3);
                return;
            }
            int i4 = DialogsAdapter.this.stableIdPointer;
            DialogsAdapter.this.stableIdPointer = i4 + 1;
            this.stableId = i4;
        }

        boolean compare(ItemInternal itemInternal) {
            TLRPC.TL_contact tL_contact;
            String str;
            TLRPC.Dialog dialog;
            TLRPC.Dialog dialog2;
            int i = this.viewType;
            if (i != itemInternal.viewType) {
                return false;
            }
            if (i == 0) {
                TLRPC.Dialog dialog3 = this.dialog;
                return dialog3 != null && (dialog2 = itemInternal.dialog) != null && dialog3.id == dialog2.id && this.isFolder == itemInternal.isFolder && this.isForumCell == itemInternal.isForumCell && this.pinned == itemInternal.pinned;
            }
            if (i == 14) {
                TLRPC.Dialog dialog4 = this.dialog;
                return dialog4 != null && (dialog = itemInternal.dialog) != null && dialog4.id == dialog.id && dialog4.isFolder == dialog.isFolder;
            }
            if (i == 4) {
                TLRPC.RecentMeUrl recentMeUrl = this.recentMeUrl;
                return (recentMeUrl == null || itemInternal.recentMeUrl == null || (str = recentMeUrl.url) == null || !str.equals(str)) ? false : true;
            }
            if (i != 6) {
                return i == 5 ? this.emptyType == itemInternal.emptyType : i != 10;
            }
            TLRPC.TL_contact tL_contact2 = this.contact;
            return (tL_contact2 == null || (tL_contact = itemInternal.contact) == null || tL_contact2.user_id != tL_contact.user_id) ? false : true;
        }

        public int hashCode() {
            return Objects.hash(this.dialog, this.recentMeUrl, this.contact);
        }
    }

    public TLObject getItem(int i) {
        if (i >= 0 && i < this.itemInternals.size()) {
            if (((ItemInternal) this.itemInternals.get(i)).dialog != null) {
                return ((ItemInternal) this.itemInternals.get(i)).dialog;
            }
            if (((ItemInternal) this.itemInternals.get(i)).contact != null) {
                return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(((ItemInternal) this.itemInternals.get(i)).contact.user_id));
            }
            if (((ItemInternal) this.itemInternals.get(i)).recentMeUrl != null) {
                return ((ItemInternal) this.itemInternals.get(i)).recentMeUrl;
            }
        }
        return null;
    }

    public void sortOnlineContacts(boolean z) {
        if (this.onlineContacts != null) {
            if (!z || SystemClock.elapsedRealtime() - this.lastSortTime >= 2000) {
                this.lastSortTime = SystemClock.elapsedRealtime();
                try {
                    final int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                    Collections.sort(this.onlineContacts, new Comparator() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda0
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return DialogsAdapter.$r8$lambda$_IyqYv0ErkEI_Omrn2azgDWluho(messagesController, currentTime, (TLRPC.TL_contact) obj, (TLRPC.TL_contact) obj2);
                        }
                    });
                    if (z) {
                        notifyDataSetChanged();
                    }
                } catch (Exception e) {
                    FileLog.m955e(e);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ int $r8$lambda$_IyqYv0ErkEI_Omrn2azgDWluho(MessagesController messagesController, int i, TLRPC.TL_contact tL_contact, TLRPC.TL_contact tL_contact2) {
        int i2;
        int i3;
        TLRPC.User user = messagesController.getUser(Long.valueOf(tL_contact2.user_id));
        TLRPC.User user2 = messagesController.getUser(Long.valueOf(tL_contact.user_id));
        if (user == null) {
            i2 = 0;
        } else if (user.self) {
            i2 = i + 50000;
        } else {
            TLRPC.UserStatus userStatus = user.status;
            if (userStatus != null) {
                i2 = userStatus.expires;
            }
        }
        if (user2 == null) {
            i3 = 0;
        } else if (user2.self) {
            i3 = i + 50000;
        } else {
            TLRPC.UserStatus userStatus2 = user2.status;
            if (userStatus2 != null) {
                i3 = userStatus2.expires;
            }
        }
        if (i2 <= 0 || i3 <= 0) {
            if (i2 >= 0 || i3 >= 0) {
                if (i2 < 0 && i3 > 0) {
                    return -1;
                }
                if (i2 == 0 && i3 != 0) {
                    return -1;
                }
                if (i3 < 0 || i2 != 0) {
                    return 1;
                }
            } else {
                if (i2 > i3) {
                    return 1;
                }
                if (i2 < i3) {
                    return -1;
                }
            }
        } else {
            if (i2 > i3) {
                return 1;
            }
            if (i2 < i3) {
                return -1;
            }
        }
        return 0;
    }

    public void setDialogsListFrozen(boolean z) {
        this.dialogsListFrozen = z;
    }

    public boolean getDialogsListIsFrozen() {
        return this.dialogsListFrozen;
    }

    public void updateHasHints() {
        this.hasHints = this.folderId == 0 && this.dialogsType == 0 && !this.isOnlySelect && !MessagesController.getInstance(this.currentAccount).hintDialogs.isEmpty();
    }

    public void updateList(final Runnable runnable) {
        if (this.isCalculatingDiff) {
            this.updateListPending = true;
            return;
        }
        this.isCalculatingDiff = true;
        ArrayList arrayList = new ArrayList();
        this.oldItems = arrayList;
        arrayList.addAll(this.itemInternals);
        updateItemList();
        final ArrayList arrayList2 = new ArrayList(this.itemInternals);
        this.itemInternals = this.oldItems;
        final DiffUtil.Callback callback = new DiffUtil.Callback() { // from class: org.telegram.ui.Adapters.DialogsAdapter.1
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return DialogsAdapter.this.oldItems.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return arrayList2.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i, int i2) {
                return ((ItemInternal) DialogsAdapter.this.oldItems.get(i)).compare((ItemInternal) arrayList2.get(i2));
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i, int i2) {
                return ((ItemInternal) DialogsAdapter.this.oldItems.get(i)).viewType == ((ItemInternal) arrayList2.get(i2)).viewType;
            }
        };
        if (this.itemInternals.size() < 50 || !ALLOW_UPDATE_IN_BACKGROUND) {
            DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(callback);
            this.isCalculatingDiff = false;
            if (runnable != null) {
                runnable.run();
            }
            this.itemInternals = arrayList2;
            diffResultCalculateDiff.dispatchUpdatesTo(this);
            return;
        }
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateList$2(callback, runnable, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateList$2(DiffUtil.Callback callback, final Runnable runnable, final ArrayList arrayList) {
        final DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(callback);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateList$1(runnable, arrayList, diffResultCalculateDiff);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateList$1(Runnable runnable, ArrayList arrayList, DiffUtil.DiffResult diffResult) {
        if (this.isCalculatingDiff) {
            this.isCalculatingDiff = false;
            if (runnable != null) {
                runnable.run();
            }
            this.itemInternals = arrayList;
            diffResult.dispatchUpdatesTo(this);
            if (this.updateListPending) {
                this.updateListPending = false;
                updateList(runnable);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        if (this.isCalculatingDiff) {
            this.itemInternals = new ArrayList();
        }
        this.isCalculatingDiff = false;
        updateItemList();
        super.notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        if (view instanceof DialogCell) {
            DialogCell dialogCell = (DialogCell) view;
            dialogCell.onReorderStateChanged(this.isReordering, false);
            dialogCell.checkCurrentDialogIndex(this.dialogsListFrozen);
            dialogCell.setChecked(this.selectedDialogs.contains(Long.valueOf(dialogCell.getDialogId())), false);
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return (itemViewType == 1 || itemViewType == 5 || itemViewType == 3 || itemViewType == 8 || itemViewType == 7 || itemViewType == 10 || itemViewType == 11 || itemViewType == 13 || itemViewType == 15 || itemViewType == 16 || itemViewType == 18 || itemViewType == 19 || itemViewType == 20) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$3(View view) {
        MessagesController.getInstance(this.currentAccount).hintDialogs.clear();
        MessagesController.getGlobalMainSettings().edit().remove("installReferer").apply();
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f8  */
    /* JADX WARN: Type inference failed for: r1v17, types: [android.view.View, org.telegram.ui.Cells.ShadowSectionCell] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.view.View, org.telegram.ui.Adapters.DialogsAdapter$4] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.telegram.ui.Components.FlickerLoadingView] */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.view.ViewGroup, org.telegram.ui.Cells.HeaderCell] */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v41, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View profileSearchCell;
        ?? flickerLoadingView;
        ?? dialogMeUrlCell;
        switch (i) {
            case 0:
            case 21:
                int i2 = this.dialogsType;
                if (i2 == 2 || i2 == 15) {
                    profileSearchCell = new ProfileSearchCell(this.mContext);
                } else {
                    DialogCell dialogCell = new DialogCell(this.parentFragment, this.mContext, true, false, this.currentAccount, null);
                    if (showOpenBotButton()) {
                        dialogCell.allowBotOpenButton(true, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda3
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.onOpenBot((TLRPC.User) obj);
                            }
                        });
                    }
                    dialogCell.setArchivedPullAnimation(this.pullForegroundDrawable);
                    dialogCell.setPreloader(this.preloader);
                    dialogCell.setDialogCellDelegate(this);
                    dialogCell.setIsTransitionSupport(this.isTransitionSupport);
                    if (i == 21) {
                        dialogCell.setIsShareToStoryCell();
                    }
                    profileSearchCell = dialogCell;
                }
                dialogMeUrlCell = profileSearchCell;
                if (this.dialogsType == 15) {
                    profileSearchCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    dialogMeUrlCell = profileSearchCell;
                }
                break;
            case 1:
            case 13:
                flickerLoadingView = new FlickerLoadingView(this.mContext);
                flickerLoadingView.setIsSingleCell(true);
                int i3 = i == 13 ? 18 : 7;
                flickerLoadingView.setViewType(i3);
                if (i3 == 18) {
                    flickerLoadingView.setIgnoreHeightCheck(true);
                }
                if (i == 13) {
                    flickerLoadingView.setItemsCount((int) ((AndroidUtilities.displaySize.y * 0.5f) / AndroidUtilities.dp(64.0f)));
                }
                dialogMeUrlCell = flickerLoadingView;
                break;
            case 2:
                flickerLoadingView = new HeaderCell(this.mContext);
                flickerLoadingView.setText(LocaleController.getString(C2484R.string.RecentlyViewed));
                TextView textView = new TextView(this.mContext);
                textView.setTextSize(1, 15.0f);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
                textView.setText(LocaleController.getString(C2484R.string.RecentlyViewedHide));
                textView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
                flickerLoadingView.addView(textView, LayoutHelper.createFrame(-1, -1.0f, (LocaleController.isRTL ? 3 : 5) | 48, 17.0f, 15.0f, 17.0f, 0.0f));
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onCreateViewHolder$3(view);
                    }
                });
                dialogMeUrlCell = flickerLoadingView;
                break;
            case 3:
                FrameLayout frameLayout = new FrameLayout(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.2
                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i4, int i5) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(12.0f), TLObject.FLAG_30));
                    }
                };
                frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
                View view = new View(this.mContext);
                view.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C2484R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                frameLayout.addView(view, LayoutHelper.createFrame(-1, -1.0f));
                dialogMeUrlCell = frameLayout;
                break;
            case 4:
                dialogMeUrlCell = new DialogMeUrlCell(this.mContext);
                break;
            case 5:
                dialogMeUrlCell = new DialogsEmptyCell(this.mContext);
                break;
            case 6:
                dialogMeUrlCell = new UserCell(this.mContext, 8, 0, false);
                break;
            case 7:
                HeaderCell headerCell = new HeaderCell(this.mContext);
                DialogsActivity dialogsActivity = this.parentFragment;
                if (dialogsActivity != null) {
                    dialogMeUrlCell = headerCell;
                    if (!dialogsActivity.isReplyTo) {
                        headerCell.setPadding(0, 0, 0, AndroidUtilities.dp(12.0f));
                        dialogMeUrlCell = headerCell;
                    }
                    break;
                }
                break;
            case 8:
                flickerLoadingView = new ShadowSectionCell(this.mContext);
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C2484R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable.setFullsize(true);
                flickerLoadingView.setBackgroundDrawable(combinedDrawable);
                dialogMeUrlCell = flickerLoadingView;
                break;
            case 9:
            case 12:
            default:
                TextCell textCell = new TextCell(this.mContext);
                dialogMeUrlCell = textCell;
                if (this.dialogsType == 15) {
                    textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    dialogMeUrlCell = textCell;
                }
                break;
            case 10:
                dialogMeUrlCell = new LastEmptyView(this.mContext);
                break;
            case 11:
                flickerLoadingView = new TextInfoPrivacyCell(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.4
                    private long lastUpdateTime;
                    private float moveProgress;
                    private int movement;
                    private int originalX;
                    private int originalY;

                    @Override // org.telegram.ui.Cells.TextInfoPrivacyCell
                    protected void afterTextDraw() {
                        if (DialogsAdapter.this.arrowDrawable != null) {
                            Rect bounds = DialogsAdapter.this.arrowDrawable.getBounds();
                            Drawable drawable = DialogsAdapter.this.arrowDrawable;
                            int i4 = this.originalX;
                            drawable.setBounds(i4, this.originalY, bounds.width() + i4, this.originalY + bounds.height());
                        }
                    }

                    @Override // org.telegram.ui.Cells.TextInfoPrivacyCell
                    protected void onTextDraw() {
                        if (DialogsAdapter.this.arrowDrawable != null) {
                            Rect bounds = DialogsAdapter.this.arrowDrawable.getBounds();
                            int iDp = (int) (this.moveProgress * AndroidUtilities.dp(3.0f));
                            this.originalX = bounds.left;
                            this.originalY = bounds.top;
                            DialogsAdapter.this.arrowDrawable.setBounds(this.originalX + iDp, this.originalY + AndroidUtilities.dp(1.0f), this.originalX + iDp + bounds.width(), this.originalY + AndroidUtilities.dp(1.0f) + bounds.height());
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            long j = jElapsedRealtime - this.lastUpdateTime;
                            if (j > 17) {
                                j = 17;
                            }
                            this.lastUpdateTime = jElapsedRealtime;
                            if (this.movement == 0) {
                                float f = this.moveProgress + (j / 664.0f);
                                this.moveProgress = f;
                                if (f >= 1.0f) {
                                    this.movement = 1;
                                    this.moveProgress = 1.0f;
                                }
                            } else {
                                float f2 = this.moveProgress - (j / 664.0f);
                                this.moveProgress = f2;
                                if (f2 <= 0.0f) {
                                    this.movement = 0;
                                    this.moveProgress = 0.0f;
                                }
                            }
                            getTextView().invalidate();
                        }
                    }
                };
                CombinedDrawable combinedDrawable2 = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C2484R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable2.setFullsize(true);
                flickerLoadingView.setBackgroundDrawable(combinedDrawable2);
                dialogMeUrlCell = flickerLoadingView;
                break;
            case 14:
                HeaderCell headerCell2 = new HeaderCell(this.mContext, Theme.key_graySectionText, 16, 0, false);
                headerCell2.setHeight(32);
                headerCell2.setClickable(false);
                dialogMeUrlCell = headerCell2;
                break;
            case 15:
                dialogMeUrlCell = new RequestPeerRequirementsCell(this.mContext);
                break;
            case 16:
                dialogMeUrlCell = new DialogsRequestedEmptyCell(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.3
                    @Override // org.telegram.ui.Cells.DialogsRequestedEmptyCell
                    protected void onButtonClick() {
                        DialogsAdapter.this.onCreateGroupForThisClick();
                    }
                };
                break;
            case 17:
                dialogMeUrlCell = new DialogsHintCell(this.mContext);
                break;
            case 18:
                dialogMeUrlCell = new View(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.5
                    @Override // android.view.View
                    protected void onMeasure(int i4, int i5) {
                        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(81.0f), TLObject.FLAG_30));
                    }
                };
                break;
            case 19:
                LastEmptyView lastEmptyView = new LastEmptyView(this.mContext);
                lastEmptyView.addView(new ArchiveHelp(this.mContext, this.currentAccount, null, new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.onArchiveSettingsClick();
                    }
                }, null), LayoutHelper.createFrame(-1, -1.0f, 17, 0.0f, -40.0f, 0.0f, 0.0f));
                dialogMeUrlCell = lastEmptyView;
                break;
            case 20:
                dialogMeUrlCell = new GraySectionCell(this.mContext);
                break;
        }
        dialogMeUrlCell.setLayoutParams(new RecyclerView.LayoutParams(-1, (i == 5 || i == 19) ? -1 : -2));
        return new RecyclerListView.Holder(dialogMeUrlCell);
    }

    public int dialogsEmptyType() {
        int i = this.dialogsType;
        if (i == 7 || i == 8) {
            return MessagesController.getInstance(this.currentAccount).isDialogsEndReached(this.folderId) ? 2 : 3;
        }
        if (this.folderId == 1) {
            return 2;
        }
        return this.onlineContacts != null ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        TLRPC.Chat chat;
        Object obj;
        String str;
        String str2;
        String lowerCase;
        TLRPC.Chat chat2;
        DialogsActivity dialogsActivity;
        DialogsActivity dialogsActivity2;
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType != 0) {
            if (itemViewType != 4) {
                if (itemViewType != 5) {
                    if (itemViewType != 6) {
                        if (itemViewType != 7) {
                            if (itemViewType != 11) {
                                if (itemViewType != 12) {
                                    if (itemViewType != 20) {
                                        if (itemViewType == 21) {
                                            DialogCell dialogCell = (DialogCell) viewHolder.itemView;
                                            DialogCell.CustomDialog customDialog = new DialogCell.CustomDialog();
                                            customDialog.name = LocaleController.getString(C2484R.string.StoriesForwardTitle);
                                            customDialog.message = LocaleController.getString(C2484R.string.StoriesForwardText);
                                            dialogCell.useSeparator = false;
                                            dialogCell.fullSeparator = false;
                                            dialogCell.setDialog(customDialog);
                                            dialogCell.checkHeight();
                                        } else {
                                            switch (itemViewType) {
                                                case 14:
                                                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                                                    headerCell.setTextSize(14.0f);
                                                    headerCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
                                                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_graySection));
                                                    int i2 = ((DialogsActivity.DialogsHeader) getItem(i)).headerType;
                                                    if (i2 == 0) {
                                                        headerCell.setText(LocaleController.getString(C2484R.string.MyChannels));
                                                    } else if (i2 == 1) {
                                                        headerCell.setText(LocaleController.getString(C2484R.string.MyGroups));
                                                    } else if (i2 == 2) {
                                                        headerCell.setText(LocaleController.getString(C2484R.string.FilterGroups));
                                                    }
                                                    break;
                                                case 15:
                                                    ((RequestPeerRequirementsCell) viewHolder.itemView).set(this.requestPeerType);
                                                    break;
                                                case 16:
                                                    ((DialogsRequestedEmptyCell) viewHolder.itemView).set(this.requestPeerType);
                                                    break;
                                                case 17:
                                                    DialogsHintCell dialogsHintCell = (DialogsHintCell) viewHolder.itemView;
                                                    TL_chatlists.TL_chatlists_chatlistUpdates tL_chatlists_chatlistUpdates = ((ItemInternal) this.itemInternals.get(i)).chatlistUpdates;
                                                    if (tL_chatlists_chatlistUpdates != null) {
                                                        int size = tL_chatlists_chatlistUpdates.missing_peers.size();
                                                        dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatPluralString("FolderUpdatesTitle", size, new Object[0]), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.formatPluralString("FolderUpdatesSubtitle", size, new Object[0]));
                                                    }
                                                    break;
                                            }
                                        }
                                    } else {
                                        GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                                        DialogsActivity dialogsActivity3 = this.parentFragment;
                                        if (dialogsActivity3 == null || !dialogsActivity3.isReplyTo) {
                                            if (this.dialogsType == 3) {
                                                if (i == 0) {
                                                    graySectionCell.setText(LocaleController.getString(C2484R.string.ForwardDialogYourChannel));
                                                } else {
                                                    graySectionCell.setText(LocaleController.getString(C2484R.string.ReplyDialogYourChats));
                                                }
                                            }
                                        } else if (i == 0) {
                                            graySectionCell.setText(LocaleController.getString(C2484R.string.ReplyDialogMessageAuthor));
                                        } else {
                                            graySectionCell.setText(LocaleController.getString(C2484R.string.ReplyDialogYourChats));
                                        }
                                    }
                                } else {
                                    View view = viewHolder.itemView;
                                    if (!(view instanceof TextCell)) {
                                        return;
                                    }
                                    TextCell textCell = (TextCell) view;
                                    int i3 = Theme.key_windowBackgroundWhiteBlueText4;
                                    textCell.setColors(i3, i3);
                                    TLRPC.RequestPeerType requestPeerType = this.requestPeerType;
                                    if (requestPeerType != null) {
                                        if (requestPeerType instanceof TLRPC.TL_requestPeerTypeBroadcast) {
                                            textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2484R.string.CreateChannelForThis), C2484R.drawable.msg_channel_create, true);
                                        } else {
                                            textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2484R.string.CreateGroupForThis), C2484R.drawable.msg_groups_create, true);
                                        }
                                    } else {
                                        textCell.setTextAndIcon(LocaleController.getString(C2484R.string.CreateGroupForImport), C2484R.drawable.msg_groups_create, this.dialogsCount != 0);
                                    }
                                    textCell.setIsInDialogs();
                                    textCell.setOffsetFromImage(75);
                                }
                            } else {
                                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                                textInfoPrivacyCell.setText(LocaleController.getString(C2484R.string.TapOnThePencilButton));
                                if (this.arrowDrawable == null) {
                                    Drawable drawable = this.mContext.getResources().getDrawable(C2484R.drawable.arrow_newchat);
                                    this.arrowDrawable = drawable;
                                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4), PorterDuff.Mode.MULTIPLY));
                                }
                                LinkSpanDrawable.LinksTextView textView = textInfoPrivacyCell.getTextView();
                                textView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
                                DialogsActivity dialogsActivity4 = this.parentFragment;
                                textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (dialogsActivity4 == null || !dialogsActivity4.storiesEnabled) ? this.arrowDrawable : null, (Drawable) null);
                                textView.getLayoutParams().width = -2;
                            }
                        } else {
                            HeaderCell headerCell2 = (HeaderCell) viewHolder.itemView;
                            int i4 = this.dialogsType;
                            if (i4 != 11 && i4 != 12 && i4 != 13) {
                                headerCell2.setText(LocaleController.getString((this.dialogsCount == 0 && this.forceUpdatingContacts) ? C2484R.string.ConnectingYourContacts : C2484R.string.YourContacts));
                            } else if (i == 0) {
                                headerCell2.setText(LocaleController.getString(C2484R.string.ImportHeader));
                            } else {
                                headerCell2.setText(LocaleController.getString(C2484R.string.ImportHeaderContacts));
                            }
                        }
                    } else {
                        ((UserCell) viewHolder.itemView).setData((TLRPC.User) getItem(i), null, null, 0);
                    }
                } else {
                    DialogsEmptyCell dialogsEmptyCell = (DialogsEmptyCell) viewHolder.itemView;
                    int i5 = this.lastDialogsEmptyType;
                    int iDialogsEmptyType = dialogsEmptyType();
                    this.lastDialogsEmptyType = iDialogsEmptyType;
                    dialogsEmptyCell.setType(iDialogsEmptyType, this.isOnlySelect);
                    int i6 = this.dialogsType;
                    if (i6 != 7 && i6 != 8) {
                        dialogsEmptyCell.setOnUtyanAnimationEndListener(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onBindViewHolder$4();
                            }
                        });
                        dialogsEmptyCell.setOnUtyanAnimationUpdateListener(new Consumer() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda2
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj2) {
                                this.f$0.lambda$onBindViewHolder$5((Float) obj2);
                            }
                        });
                        if (!dialogsEmptyCell.isUtyanAnimationTriggered() && this.dialogsCount == 0) {
                            this.parentFragment.setContactsAlpha(0.0f);
                            this.parentFragment.setScrollDisabled(true);
                        }
                        if (this.onlineContacts != null && i5 == 0) {
                            if (!dialogsEmptyCell.isUtyanAnimationTriggered()) {
                                dialogsEmptyCell.startUtyanCollapseAnimation(true);
                            }
                        } else if (this.forceUpdatingContacts) {
                            if (this.dialogsCount == 0) {
                                dialogsEmptyCell.startUtyanCollapseAnimation(false);
                            }
                        } else if (dialogsEmptyCell.isUtyanAnimationTriggered() && this.lastDialogsEmptyType == 0) {
                            dialogsEmptyCell.startUtyanExpandAnimation();
                        }
                    }
                }
            } else {
                ((DialogMeUrlCell) viewHolder.itemView).setRecentMeUrl((TLRPC.RecentMeUrl) getItem(i));
            }
        } else {
            TLRPC.Dialog dialog = (TLRPC.Dialog) getItem(i);
            TLRPC.Dialog dialog2 = (TLRPC.Dialog) getItem(i + 1);
            int i7 = this.dialogsType;
            if (i7 == 2 || i7 == 15) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                long dialogId = profileSearchCell.getDialogId();
                if (dialog.id != 0) {
                    chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog.id));
                    if (chat != null && chat.migrated_to != null && (chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat.migrated_to.channel_id))) != null) {
                        chat = chat2;
                    }
                } else {
                    chat = null;
                }
                if (chat != null) {
                    String str3 = chat.title;
                    if (ChatObject.isChannel(chat) && !chat.megagroup) {
                        int i8 = chat.participants_count;
                        if (i8 != 0) {
                            lowerCase = LocaleController.formatPluralStringComma("Subscribers", i8);
                        } else if (!ChatObject.isPublic(chat)) {
                            lowerCase = LocaleController.getString(C2484R.string.ChannelPrivate).toLowerCase();
                        } else {
                            lowerCase = LocaleController.getString(C2484R.string.ChannelPublic).toLowerCase();
                        }
                    } else {
                        int i9 = chat.participants_count;
                        if (i9 != 0) {
                            lowerCase = LocaleController.formatPluralStringComma("Members", i9);
                        } else if (chat.has_geo) {
                            lowerCase = LocaleController.getString(C2484R.string.MegaLocation);
                        } else if (!ChatObject.isPublic(chat)) {
                            lowerCase = LocaleController.getString(C2484R.string.MegaPrivate).toLowerCase();
                        } else {
                            lowerCase = LocaleController.getString(C2484R.string.MegaPublic).toLowerCase();
                        }
                    }
                    str2 = lowerCase;
                    str = str3;
                    obj = chat;
                } else {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(dialog.id));
                    String userStatus = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (user != null) {
                        String userName = UserObject.getUserName(user);
                        if (!UserObject.isReplyUser(user)) {
                            if (user.bot) {
                                userStatus = LocaleController.getString(C2484R.string.Bot);
                            } else {
                                userStatus = LocaleController.formatUserStatus(this.currentAccount, user);
                            }
                        }
                        obj = user;
                        str = userName;
                    } else {
                        obj = null;
                        str = null;
                    }
                    str2 = userStatus;
                }
                profileSearchCell.useSeparator = dialog2 != null;
                profileSearchCell.setData(obj, null, str, str2, false, false);
                profileSearchCell.setChecked(this.selectedDialogs.contains(Long.valueOf(profileSearchCell.getDialogId())), dialogId == profileSearchCell.getDialogId());
            } else {
                DialogCell dialogCell2 = (DialogCell) viewHolder.itemView;
                dialogCell2.useSeparator = false;
                dialogCell2.fullSeparator = false;
                if (i7 == 0 && AndroidUtilities.isTablet()) {
                    dialogCell2.setDialogSelected(dialog.id == this.openedDialogId);
                }
                dialogCell2.setChecked(this.selectedDialogs.contains(Long.valueOf(dialog.id)), false);
                if (i == 1 && (dialogsActivity2 = this.parentFragment) != null && dialogsActivity2.isReplyTo && dialogsActivity2.replyMessageAuthor != 0 && dialog.top_message == 0) {
                    MessagesController.DialogFilter currentFilter = getCurrentFilter();
                    if (currentFilter == null || currentFilter.isDefault()) {
                        dialogCell2.setCustomMessage(DialogObject.getStatus(this.parentFragment.replyMessageAuthor));
                    } else {
                        dialogCell2.setCustomMessage(null);
                    }
                } else if (i == 1 && (dialogsActivity = this.parentFragment) != null && this.dialogsType == 3 && dialogsActivity.forwardOriginalChannel != 0 && dialog.top_message == 0) {
                    MessagesController.DialogFilter currentFilter2 = getCurrentFilter();
                    if (currentFilter2 == null || currentFilter2.isDefault()) {
                        dialogCell2.setCustomMessage(DialogObject.getStatus(this.parentFragment.forwardOriginalChannel));
                    } else {
                        dialogCell2.setCustomMessage(null);
                    }
                } else {
                    dialogCell2.setCustomMessage(null);
                }
                dialogCell2.setDialog(dialog, this.dialogsType, this.folderId);
                dialogCell2.checkHeight();
                boolean z = dialogCell2.collapsed;
                boolean z2 = this.collapsedView;
                if (z != z2) {
                    dialogCell2.collapsed = z2;
                    dialogCell2.requestLayout();
                }
                DialogsPreloader dialogsPreloader = this.preloader;
                if (dialogsPreloader != null && i < 10) {
                    dialogsPreloader.add(dialog.id);
                }
            }
        }
        if (i >= this.dialogsCount + 1) {
            viewHolder.itemView.setAlpha(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$4() {
        this.parentFragment.setScrollDisabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$5(Float f) {
        this.parentFragment.setContactsAlpha(f.floatValue());
    }

    public TL_chatlists.TL_chatlists_chatlistUpdates getChatlistUpdate() {
        ItemInternal itemInternal = (ItemInternal) this.itemInternals.get(0);
        if (itemInternal == null || itemInternal.viewType != 17) {
            return null;
        }
        return itemInternal.chatlistUpdates;
    }

    public void setForceUpdatingContacts(boolean z) {
        this.forceUpdatingContacts = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return ((ItemInternal) this.itemInternals.get(i)).viewType;
    }

    public void moveDialogs(RecyclerListView recyclerListView, int i, int i2) {
        ArrayList dialogsArray = this.parentFragment.getDialogsArray(this.currentAccount, this.dialogsType, this.folderId, false);
        int iFixPosition = fixPosition(i);
        int iFixPosition2 = fixPosition(i2);
        TLRPC.Dialog dialog = (TLRPC.Dialog) dialogsArray.get(iFixPosition);
        TLRPC.Dialog dialog2 = (TLRPC.Dialog) dialogsArray.get(iFixPosition2);
        int i3 = this.dialogsType;
        if (i3 == 7 || i3 == 8) {
            MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(this.currentAccount).selectedDialogFilter[this.dialogsType == 8 ? (char) 1 : (char) 0];
            int i4 = dialogFilter.pinnedDialogs.get(dialog.id);
            dialogFilter.pinnedDialogs.put(dialog.id, dialogFilter.pinnedDialogs.get(dialog2.id));
            dialogFilter.pinnedDialogs.put(dialog2.id, i4);
        } else {
            int i5 = dialog.pinnedNum;
            dialog.pinnedNum = dialog2.pinnedNum;
            dialog2.pinnedNum = i5;
        }
        Collections.swap(dialogsArray, iFixPosition, iFixPosition2);
        updateList(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemMoved(int i, int i2) {
        super.notifyItemMoved(i, i2);
    }

    public void setArchivedPullDrawable(PullForegroundDrawable pullForegroundDrawable) {
        this.pullForegroundDrawable = pullForegroundDrawable;
    }

    public void didDatabaseCleared() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.clear();
        }
    }

    public void resume() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.resume();
        }
    }

    public void pause() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.pause();
        }
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public boolean canClickButtonInside() {
        return this.selectedDialogs.isEmpty();
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void openStory(DialogCell dialogCell, Runnable runnable) {
        MessagesController.getInstance(this.currentAccount);
        if (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStories(dialogCell.getDialogId())) {
            this.parentFragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            this.parentFragment.getOrCreateStoryViewer().open(this.parentFragment.getContext(), dialogCell.getDialogId(), StoriesListPlaceProvider.of((RecyclerListView) dialogCell.getParent()));
        }
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void showChatPreview(DialogCell dialogCell) {
        this.parentFragment.showChatPreview(dialogCell);
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void openHiddenStories() {
        StoriesController storiesController = MessagesController.getInstance(this.currentAccount).getStoriesController();
        if (storiesController.getHiddenList().isEmpty()) {
            return;
        }
        boolean z = storiesController.getUnreadState(DialogObject.getPeerDialogId(((TL_stories.PeerStories) storiesController.getHiddenList().get(0)).peer)) != 0;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < storiesController.getHiddenList().size(); i++) {
            long peerDialogId = DialogObject.getPeerDialogId(((TL_stories.PeerStories) storiesController.getHiddenList().get(i)).peer);
            if (!z || storiesController.getUnreadState(peerDialogId) != 0) {
                arrayList.add(Long.valueOf(peerDialogId));
            }
        }
        this.parentFragment.getOrCreateStoryViewer().open(this.mContext, null, arrayList, 0, null, null, StoriesListPlaceProvider.of(this.recyclerListView, true), false);
    }

    public void setIsTransitionSupport() {
        this.isTransitionSupport = true;
    }

    public void setCollapsedView(boolean z, RecyclerListView recyclerListView) {
        this.collapsedView = z;
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            if (recyclerListView.getChildAt(i) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getChildAt(i)).collapsed = z;
            }
        }
        for (int i2 = 0; i2 < recyclerListView.getCachedChildCount(); i2++) {
            if (recyclerListView.getCachedChildAt(i2) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getCachedChildAt(i2)).collapsed = z;
            }
        }
        for (int i3 = 0; i3 < recyclerListView.getHiddenChildCount(); i3++) {
            if (recyclerListView.getHiddenChildAt(i3) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getHiddenChildAt(i3)).collapsed = z;
            }
        }
        for (int i4 = 0; i4 < recyclerListView.getAttachedScrapChildCount(); i4++) {
            if (recyclerListView.getAttachedScrapChildAt(i4) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getAttachedScrapChildAt(i4)).collapsed = z;
            }
        }
    }

    public static class DialogsPreloader {
        int currentRequestCount;
        int networkRequestCount;
        boolean resumed;
        private final int MAX_REQUEST_COUNT = 4;
        private final int MAX_NETWORK_REQUEST_COUNT = 6;
        private final int NETWORK_REQUESTS_RESET_TIME = 60000;
        HashSet dialogsReadyMap = new HashSet();
        HashSet preloadedErrorMap = new HashSet();
        HashSet loadingDialogs = new HashSet();
        ArrayList preloadDialogsPool = new ArrayList();
        Runnable clearNetworkRequestCount = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };

        private boolean preloadIsAvilable() {
            return false;
        }

        public void updateList() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.networkRequestCount = 0;
            start();
        }

        public void add(long j) {
            if (isReady(j) || this.preloadedErrorMap.contains(Long.valueOf(j)) || this.loadingDialogs.contains(Long.valueOf(j)) || this.preloadDialogsPool.contains(Long.valueOf(j))) {
                return;
            }
            this.preloadDialogsPool.add(Long.valueOf(j));
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            if (!preloadIsAvilable() || !this.resumed || this.preloadDialogsPool.isEmpty() || this.currentRequestCount >= 4 || this.networkRequestCount > 6) {
                return;
            }
            Long l = (Long) this.preloadDialogsPool.remove(0);
            long jLongValue = l.longValue();
            this.currentRequestCount++;
            this.loadingDialogs.add(l);
            MessagesController.getInstance(UserConfig.selectedAccount).ensureMessagesLoaded(jLongValue, 0, new C26851(jLongValue));
        }

        /* JADX INFO: renamed from: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1 */
        /* JADX INFO: loaded from: classes6.dex */
        class C26851 implements MessagesController.MessagesLoadedCallback {
            final /* synthetic */ long val$dialog_id;

            C26851(long j) {
                this.val$dialog_id = j;
            }

            @Override // org.telegram.messenger.MessagesController.MessagesLoadedCallback
            public void onMessagesLoaded(final boolean z) {
                final long j = this.val$dialog_id;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMessagesLoaded$0(z, j);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onMessagesLoaded$0(boolean z, long j) {
                if (!z) {
                    DialogsPreloader dialogsPreloader = DialogsPreloader.this;
                    int i = dialogsPreloader.networkRequestCount + 1;
                    dialogsPreloader.networkRequestCount = i;
                    if (i >= 6) {
                        AndroidUtilities.cancelRunOnUIThread(dialogsPreloader.clearNetworkRequestCount);
                        AndroidUtilities.runOnUIThread(DialogsPreloader.this.clearNetworkRequestCount, RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS);
                    }
                }
                if (DialogsPreloader.this.loadingDialogs.remove(Long.valueOf(j))) {
                    DialogsPreloader.this.dialogsReadyMap.add(Long.valueOf(j));
                    DialogsPreloader.this.updateList();
                    r3.currentRequestCount--;
                    DialogsPreloader.this.start();
                }
            }

            @Override // org.telegram.messenger.MessagesController.MessagesLoadedCallback
            public void onError() {
                final long j = this.val$dialog_id;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onError$1(j);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onError$1(long j) {
                if (DialogsPreloader.this.loadingDialogs.remove(Long.valueOf(j))) {
                    DialogsPreloader.this.preloadedErrorMap.add(Long.valueOf(j));
                    r3.currentRequestCount--;
                    DialogsPreloader.this.start();
                }
            }
        }

        public boolean isReady(long j) {
            return this.dialogsReadyMap.contains(Long.valueOf(j));
        }

        public void remove(long j) {
            this.preloadDialogsPool.remove(Long.valueOf(j));
        }

        public void clear() {
            this.dialogsReadyMap.clear();
            this.preloadedErrorMap.clear();
            this.loadingDialogs.clear();
            this.preloadDialogsPool.clear();
            this.currentRequestCount = 0;
            this.networkRequestCount = 0;
            AndroidUtilities.cancelRunOnUIThread(this.clearNetworkRequestCount);
            updateList();
        }

        public void resume() {
            this.resumed = true;
            start();
        }

        public void pause() {
            this.resumed = false;
        }
    }

    public int getCurrentCount() {
        return this.currentCount;
    }

    public void setForceShowEmptyCell(boolean z) {
        this.forceShowEmptyCell = z;
    }

    private MessagesController.DialogFilter getCurrentFilter() {
        int i = this.dialogsType;
        if (i == 7 || i == 8) {
            return MessagesController.getInstance(this.currentAccount).selectedDialogFilter[this.dialogsType - 7];
        }
        return null;
    }

    public class LastEmptyView extends FrameLayout {
        public boolean moving;

        public LastEmptyView(Context context) {
            super(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x016c A[PHI: r13
  0x016c: PHI (r13v9 int) = (r13v7 int), (r13v16 int) binds: [B:87:0x0199, B:74:0x016a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x019c  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int currentActionBarHeight;
            int i3;
            int size = DialogsAdapter.this.itemInternals.size();
            boolean z = DialogsAdapter.this.folderId == 0 && DialogsAdapter.this.dialogsType == 0 && MessagesController.getInstance(DialogsAdapter.this.currentAccount).dialogs_dict.get(DialogObject.makeFolderDialogId(1)) != null;
            View view = (View) getParent();
            int i4 = view instanceof BlurredRecyclerView ? ((BlurredRecyclerView) view).blurTopPadding : 0;
            boolean z2 = DialogsAdapter.this.collapsedView;
            int paddingTop = view.getPaddingTop();
            int paddingBottom = view.getPaddingBottom();
            int i5 = paddingTop - i4;
            if (DialogsAdapter.this.folderId == 1 && size == 1 && ((ItemInternal) DialogsAdapter.this.itemInternals.get(0)).viewType == 19) {
                currentActionBarHeight = View.MeasureSpec.getSize(i2);
                if (currentActionBarHeight == 0) {
                    currentActionBarHeight = view.getMeasuredHeight();
                }
                if (currentActionBarHeight == 0) {
                    currentActionBarHeight = (AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight;
                }
                if (DialogsAdapter.this.parentFragment.hasStories) {
                    currentActionBarHeight += AndroidUtilities.dp(81.0f);
                }
            } else if (size == 0 || (i5 == 0 && !z)) {
                currentActionBarHeight = 0;
            } else {
                int size2 = View.MeasureSpec.getSize(i2);
                if (size2 == 0) {
                    size2 = view.getMeasuredHeight();
                }
                if (size2 == 0) {
                    size2 = (AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight;
                }
                int i6 = size2 - i4;
                int iDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 76.0f : 70.0f);
                int iDp2 = 0;
                for (int i7 = 0; i7 < size; i7++) {
                    if (((ItemInternal) DialogsAdapter.this.itemInternals.get(i7)).viewType == 0) {
                        iDp2 = (!((ItemInternal) DialogsAdapter.this.itemInternals.get(i7)).isForumCell || z2) ? iDp2 + iDp : iDp2 + AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 86.0f : 91.0f);
                    } else if (((ItemInternal) DialogsAdapter.this.itemInternals.get(i7)).viewType == 1) {
                    }
                }
                int size3 = iDp2 + (size - 1);
                if (DialogsAdapter.this.onlineContacts != null) {
                    size3 += (DialogsAdapter.this.onlineContacts.size() * AndroidUtilities.dp(58.0f)) + (DialogsAdapter.this.onlineContacts.size() - 1) + AndroidUtilities.dp(52.0f);
                }
                int i8 = z ? iDp + 1 : 0;
                if (size3 < i6) {
                    currentActionBarHeight = ((i6 - size3) + i8) - paddingBottom;
                    if (i5 != 0) {
                        currentActionBarHeight -= AndroidUtilities.statusBarHeight;
                        if (!z2 && !DialogsAdapter.this.isTransitionSupport) {
                            currentActionBarHeight -= ActionBar.getCurrentActionBarHeight();
                            if (getParent() instanceof DialogsActivity.DialogsRecyclerView) {
                                i3 = ((DialogsActivity.DialogsRecyclerView) getParent()).additionalPadding;
                                currentActionBarHeight -= i3;
                            }
                        } else if (z2) {
                            currentActionBarHeight -= i5;
                        }
                    }
                } else {
                    int i9 = size3 - i6;
                    if (i9 < i8) {
                        currentActionBarHeight = (i8 - i9) - paddingBottom;
                        if (i5 != 0) {
                            currentActionBarHeight -= AndroidUtilities.statusBarHeight;
                            if (!z2 && !DialogsAdapter.this.isTransitionSupport) {
                                currentActionBarHeight -= ActionBar.getCurrentActionBarHeight();
                                if (getParent() instanceof DialogsActivity.DialogsRecyclerView) {
                                    i3 = ((DialogsActivity.DialogsRecyclerView) getParent()).additionalPadding;
                                    currentActionBarHeight -= i3;
                                }
                            } else if (z2) {
                            }
                        }
                    }
                }
            }
            int iDp3 = currentActionBarHeight >= 0 ? currentActionBarHeight : 0;
            if (DialogsAdapter.this.isTransitionSupport) {
                iDp3 += AndroidUtilities.dp(1000.0f);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(iDp3, TLObject.FLAG_30));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0439 A[LOOP:2: B:195:0x0439->B:204:0x0460, LOOP_START, PHI: r4
  0x0439: PHI (r4v2 int) = (r4v1 int), (r4v4 int) binds: [B:194:0x0437, B:204:0x0460] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0462 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateItemList() {
        DialogsActivity dialogsActivity;
        int i;
        boolean z;
        TLRPC.RequestPeerType requestPeerType;
        TLRPC.Dialog dialog;
        int i2;
        DialogsActivity dialogsActivity2;
        int i3;
        this.itemInternals.clear();
        updateHasHints();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList dialogsArray = this.parentFragment.getDialogsArray(this.currentAccount, this.dialogsType, this.folderId, this.dialogsListFrozen);
        if (dialogsArray == null) {
            dialogsArray = new ArrayList();
        }
        int size = dialogsArray.size();
        this.dialogsCount = size;
        int i4 = 0;
        this.isEmpty = false;
        if (size == 0 && this.parentFragment.isArchive()) {
            this.itemInternals.add(new ItemInternal(19));
            return;
        }
        TLRPC.Dialog tL_dialog = null;
        if (!this.hasHints && this.dialogsType == 0 && (i3 = this.folderId) == 0 && messagesController.isDialogsEndReached(i3) && !this.forceUpdatingContacts) {
            if (messagesController.getAllFoldersDialogsCount() <= 10 && ContactsController.getInstance(this.currentAccount).doneLoadingContacts && !ContactsController.getInstance(this.currentAccount).contacts.isEmpty()) {
                this.onlineContacts = new ArrayList(ContactsController.getInstance(this.currentAccount).contacts);
                long j = UserConfig.getInstance(this.currentAccount).clientUserId;
                int size2 = this.onlineContacts.size();
                int i5 = 0;
                while (i5 < size2) {
                    long j2 = ((TLRPC.TL_contact) this.onlineContacts.get(i5)).user_id;
                    if (j2 == j || messagesController.dialogs_dict.get(j2) != null) {
                        this.onlineContacts.remove(i5);
                        i5--;
                        size2--;
                    }
                    i5++;
                }
                if (this.onlineContacts.isEmpty()) {
                    this.onlineContacts = null;
                } else {
                    sortOnlineContacts(false);
                }
            } else {
                this.onlineContacts = null;
            }
        }
        MessagesController.DialogFilter currentFilter = getCurrentFilter();
        if ((currentFilter == null || currentFilter.isDefault()) && (dialogsActivity = this.parentFragment) != null && dialogsActivity.isReplyTo && dialogsActivity.replyMessageAuthor != 0) {
            this.itemInternals.add(new ItemInternal(20));
            int i6 = 0;
            while (true) {
                if (i6 >= dialogsArray.size()) {
                    break;
                }
                if (((TLRPC.Dialog) dialogsArray.get(i6)).id == this.parentFragment.replyMessageAuthor) {
                    tL_dialog = (TLRPC.Dialog) dialogsArray.get(i6);
                    break;
                }
                i6++;
            }
            if (tL_dialog == null) {
                tL_dialog = new TLRPC.TL_dialog();
                tL_dialog.id = this.parentFragment.replyMessageAuthor;
            }
            this.itemInternals.add(new ItemInternal(0, tL_dialog));
            this.itemInternals.add(new ItemInternal(20));
        } else if ((currentFilter == null || currentFilter.isDefault()) && (dialogsActivity2 = this.parentFragment) != null && this.dialogsType == 3 && dialogsActivity2.forwardOriginalChannel != 0) {
            this.itemInternals.add(new ItemInternal(20));
            int i7 = 0;
            while (true) {
                if (i7 >= dialogsArray.size()) {
                    break;
                }
                if (((TLRPC.Dialog) dialogsArray.get(i7)).id == this.parentFragment.forwardOriginalChannel) {
                    tL_dialog = (TLRPC.Dialog) dialogsArray.get(i7);
                    break;
                }
                i7++;
            }
            if (tL_dialog == null) {
                tL_dialog = new TLRPC.TL_dialog();
                tL_dialog.id = this.parentFragment.forwardOriginalChannel;
            }
            this.itemInternals.add(new ItemInternal(0, tL_dialog));
            this.itemInternals.add(new ItemInternal(20));
        }
        this.hasChatlistHint = false;
        int i8 = this.dialogsType;
        if ((i8 == 7 || i8 == 8) && currentFilter != null && currentFilter.isChatlist()) {
            messagesController.checkChatlistFolderUpdate(currentFilter.id, false);
            TL_chatlists.TL_chatlists_chatlistUpdates chatlistFolderUpdates = messagesController.getChatlistFolderUpdates(currentFilter.id);
            if (chatlistFolderUpdates != null && chatlistFolderUpdates.missing_peers.size() > 0) {
                this.hasChatlistHint = true;
                this.itemInternals.add(new ItemInternal(chatlistFolderUpdates));
            }
        }
        if (this.requestPeerType != null) {
            this.itemInternals.add(new ItemInternal(15));
        }
        if (this.collapsedView || this.isTransitionSupport) {
            for (int i9 = 0; i9 < dialogsArray.size(); i9++) {
                if (this.dialogsType == 2 && (dialogsArray.get(i9) instanceof DialogsActivity.DialogsHeader)) {
                    this.itemInternals.add(new ItemInternal(14, (TLRPC.Dialog) dialogsArray.get(i9)));
                } else {
                    this.itemInternals.add(new ItemInternal(0, (TLRPC.Dialog) dialogsArray.get(i9)));
                }
            }
            this.itemInternals.add(new ItemInternal(10));
            return;
        }
        if (this.dialogsCount == 0 && this.forceUpdatingContacts) {
            this.isEmpty = true;
            if (this.requestPeerType != null) {
                this.itemInternals.add(new ItemInternal(16));
            } else {
                this.itemInternals.add(new ItemInternal(5, dialogsEmptyType()));
            }
            this.itemInternals.add(new ItemInternal(8));
            this.itemInternals.add(new ItemInternal(7));
            this.itemInternals.add(new ItemInternal(13));
        } else {
            ArrayList arrayList = this.onlineContacts;
            if (arrayList != null && !arrayList.isEmpty() && (i = this.dialogsType) != 7 && i != 8) {
                if (this.dialogsCount == 0) {
                    this.isEmpty = true;
                    if (this.requestPeerType != null) {
                        this.itemInternals.add(new ItemInternal(16));
                    } else {
                        this.itemInternals.add(new ItemInternal(5, dialogsEmptyType()));
                    }
                    this.itemInternals.add(new ItemInternal(8));
                    this.itemInternals.add(new ItemInternal(7));
                } else {
                    for (int i10 = 0; i10 < dialogsArray.size(); i10++) {
                        this.itemInternals.add(new ItemInternal(0, (TLRPC.Dialog) dialogsArray.get(i10)));
                    }
                    this.itemInternals.add(new ItemInternal(8));
                    this.itemInternals.add(new ItemInternal(7));
                }
                for (int i11 = 0; i11 < this.onlineContacts.size(); i11++) {
                    this.itemInternals.add(new ItemInternal(6, (TLRPC.TL_contact) this.onlineContacts.get(i11)));
                }
                this.itemInternals.add(new ItemInternal(10));
                z = true;
                requestPeerType = this.requestPeerType;
                if ((!(requestPeerType instanceof TLRPC.TL_requestPeerTypeBroadcast) || (requestPeerType instanceof TLRPC.TL_requestPeerTypeChat)) && this.dialogsCount > 0) {
                    this.itemInternals.add(new ItemInternal(12));
                }
                if (this.allowForwardAsStories && this.dialogsType == 3) {
                    this.itemInternals.add(new ItemInternal(21));
                }
                if (!z) {
                    for (int i12 = 0; i12 < dialogsArray.size(); i12++) {
                        if (this.dialogsType == 2 && (dialogsArray.get(i12) instanceof DialogsActivity.DialogsHeader)) {
                            this.itemInternals.add(new ItemInternal(14, (TLRPC.Dialog) dialogsArray.get(i12)));
                        } else {
                            this.itemInternals.add(new ItemInternal(0, (TLRPC.Dialog) dialogsArray.get(i12)));
                        }
                    }
                    if (!this.forceShowEmptyCell && (i2 = this.dialogsType) != 7 && i2 != 8 && !MessagesController.getInstance(this.currentAccount).isDialogsEndReached(this.folderId)) {
                        if (this.dialogsCount != 0) {
                            this.itemInternals.add(new ItemInternal(1));
                        }
                        this.itemInternals.add(new ItemInternal(10));
                    } else {
                        int i13 = this.dialogsCount;
                        if (i13 == 0) {
                            this.isEmpty = true;
                            if (this.requestPeerType != null) {
                                this.itemInternals.add(new ItemInternal(16));
                            } else {
                                this.itemInternals.add(new ItemInternal(5, dialogsEmptyType()));
                            }
                        } else {
                            if (this.folderId == 0 && i13 > 10 && this.dialogsType == 0) {
                                this.itemInternals.add(new ItemInternal(11));
                            }
                            this.itemInternals.add(new ItemInternal(10));
                        }
                    }
                }
                if (messagesController.hiddenUndoChats.isEmpty()) {
                    while (i4 < this.itemInternals.size()) {
                        ItemInternal itemInternal = (ItemInternal) this.itemInternals.get(i4);
                        if (itemInternal.viewType == 0 && (dialog = itemInternal.dialog) != null && messagesController.isHiddenByUndo(dialog.id)) {
                            this.itemInternals.remove(i4);
                            i4--;
                        }
                        i4++;
                    }
                    return;
                }
                return;
            }
            if (this.hasHints) {
                int size3 = MessagesController.getInstance(this.currentAccount).hintDialogs.size();
                this.itemInternals.add(new ItemInternal(2));
                for (int i14 = 0; i14 < size3; i14++) {
                    this.itemInternals.add(new ItemInternal(4, MessagesController.getInstance(this.currentAccount).hintDialogs.get(i14)));
                }
                this.itemInternals.add(new ItemInternal(3));
            } else {
                int i15 = this.dialogsType;
                if (i15 == 11 || i15 == 13) {
                    this.itemInternals.add(new ItemInternal(7));
                    this.itemInternals.add(new ItemInternal(12));
                } else if (i15 == 12) {
                    this.itemInternals.add(new ItemInternal(7));
                }
            }
        }
        z = false;
        requestPeerType = this.requestPeerType;
        if (!(requestPeerType instanceof TLRPC.TL_requestPeerTypeBroadcast)) {
            this.itemInternals.add(new ItemInternal(12));
        } else {
            this.itemInternals.add(new ItemInternal(12));
        }
        if (this.allowForwardAsStories) {
            this.itemInternals.add(new ItemInternal(21));
        }
        if (!z) {
        }
        if (messagesController.hiddenUndoChats.isEmpty()) {
        }
    }

    public int getItemHeight(int i) {
        int iDp;
        if (((ItemInternal) this.itemInternals.get(i)).viewType != 0) {
            return 0;
        }
        if (((ItemInternal) this.itemInternals.get(i)).isForumCell && !this.collapsedView) {
            iDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 86.0f : 91.0f);
        } else {
            iDp = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 76.0f : 70.0f);
        }
        return iDp + 1;
    }
}
