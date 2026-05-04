package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.ArchivedStickerSetCell;
import org.telegram.p029ui.Cells.LoadingCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Components.EmptyTextProgressView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.StickersAlert;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class ArchivedStickersActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int archiveInfoRow;
    private int currentType;
    private Runnable doOnTransitionEnd;
    private EmptyTextProgressView emptyView;
    private boolean endReached;
    private boolean firstLoaded;
    private boolean isInTransition;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private boolean loadingStickers;
    private int rowCount;
    private int stickersEndRow;
    private int stickersLoadingRow;
    private int stickersShadowRow;
    private int stickersStartRow;
    private final LongSparseArray installingStickerSets = new LongSparseArray();
    private HashSet loadedSets = new HashSet();
    private ArrayList sets = new ArrayList();

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public ArchivedStickersActivity(int i) {
        this.currentType = i;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        getStickers();
        updateRows();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.needAddArchivedStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.needAddArchivedStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i = this.currentType;
        if (i == 0) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.ArchivedStickers));
        } else if (i == 5) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.ArchivedEmojiPacks));
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.ArchivedMasks));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ArchivedStickersActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    ArchivedStickersActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        if (this.currentType == 0) {
            emptyTextProgressView.setText(LocaleController.getString(C2888R.string.ArchivedStickersEmpty));
        } else {
            emptyTextProgressView.setText(LocaleController.getString(C2888R.string.ArchivedMasksEmpty));
        }
        frameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        if (this.loadingStickers) {
            this.emptyView.showProgress();
        } else {
            this.emptyView.showTextView();
        }
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setFocusable(true);
        this.listView.setEmptyView(this.emptyView);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.listView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ArchivedStickersActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$0(view, i2);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ArchivedStickersActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (ArchivedStickersActivity.this.loadingStickers || ArchivedStickersActivity.this.endReached || ArchivedStickersActivity.this.layoutManager.findLastVisibleItemPosition() <= ArchivedStickersActivity.this.stickersLoadingRow - 2) {
                    return;
                }
                ArchivedStickersActivity.this.getStickers();
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(final View view, int i) {
        TLRPC.InputStickerSet tL_inputStickerSetShortName;
        if (i < this.stickersStartRow || i >= this.stickersEndRow || getParentActivity() == null) {
            return;
        }
        final TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) this.sets.get(i - this.stickersStartRow);
        if (stickerSetCovered.set.f1696id != 0) {
            tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetID();
            tL_inputStickerSetShortName.f1685id = stickerSetCovered.set.f1696id;
        } else {
            tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
            tL_inputStickerSetShortName.short_name = stickerSetCovered.set.short_name;
        }
        TLRPC.InputStickerSet inputStickerSet = tL_inputStickerSetShortName;
        inputStickerSet.access_hash = stickerSetCovered.set.access_hash;
        StickersAlert stickersAlert = new StickersAlert(getParentActivity(), this, inputStickerSet, null, null, false);
        stickersAlert.setInstallDelegate(new StickersAlert.StickersAlertInstallDelegate() { // from class: org.telegram.ui.ArchivedStickersActivity.2
            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertInstallDelegate
            public void onStickerSetUninstalled() {
            }

            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertInstallDelegate
            public void onStickerSetInstalled() {
                ((ArchivedStickerSetCell) view).setDrawProgress(true, true);
                LongSparseArray longSparseArray = ArchivedStickersActivity.this.installingStickerSets;
                TLRPC.StickerSetCovered stickerSetCovered2 = stickerSetCovered;
                longSparseArray.put(stickerSetCovered2.set.f1696id, stickerSetCovered2);
            }
        });
        showDialog(stickersAlert);
    }

    private void updateRows() {
        int i;
        this.rowCount = 0;
        if (!this.sets.isEmpty()) {
            int i2 = this.currentType;
            if (i2 == 0 || i2 == 5) {
                i = this.rowCount;
                this.rowCount = i + 1;
            } else {
                i = -1;
            }
            this.archiveInfoRow = i;
            int i3 = this.rowCount;
            this.stickersStartRow = i3;
            this.stickersEndRow = i3 + this.sets.size();
            int size = this.rowCount + this.sets.size();
            this.rowCount = size;
            if (!this.endReached) {
                this.rowCount = size + 1;
                this.stickersLoadingRow = size;
                this.stickersShadowRow = -1;
                return;
            } else {
                this.rowCount = size + 1;
                this.stickersShadowRow = size;
                this.stickersLoadingRow = -1;
                return;
            }
        }
        this.archiveInfoRow = -1;
        this.stickersStartRow = -1;
        this.stickersEndRow = -1;
        this.stickersLoadingRow = -1;
        this.stickersShadowRow = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getStickers() {
        long j;
        if (this.loadingStickers || this.endReached) {
            return;
        }
        this.loadingStickers = true;
        EmptyTextProgressView emptyTextProgressView = this.emptyView;
        if (emptyTextProgressView != null && !this.firstLoaded) {
            emptyTextProgressView.showProgress();
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        TLRPC.TL_messages_getArchivedStickers tL_messages_getArchivedStickers = new TLRPC.TL_messages_getArchivedStickers();
        if (this.sets.isEmpty()) {
            j = 0;
        } else {
            ArrayList arrayList = this.sets;
            j = ((TLRPC.StickerSetCovered) arrayList.get(arrayList.size() - 1)).set.f1696id;
        }
        tL_messages_getArchivedStickers.offset_id = j;
        tL_messages_getArchivedStickers.limit = 15;
        int i = this.currentType;
        tL_messages_getArchivedStickers.masks = i == 1;
        tL_messages_getArchivedStickers.emojis = i == 5;
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tL_messages_getArchivedStickers, new RequestDelegate() { // from class: org.telegram.ui.ArchivedStickersActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getStickers$2(tLObject, tL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickers$2(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ArchivedStickersActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getStickers$1(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickers$1(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            lambda$processResponse$3((TLRPC.TL_messages_archivedStickers) tLObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processResponse, reason: merged with bridge method [inline-methods] */
    public void lambda$processResponse$3(final TLRPC.TL_messages_archivedStickers tL_messages_archivedStickers) {
        if (!this.isInTransition) {
            ArrayList arrayList = tL_messages_archivedStickers.sets;
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) obj;
                if (!this.loadedSets.contains(Long.valueOf(stickerSetCovered.set.f1696id))) {
                    this.loadedSets.add(Long.valueOf(stickerSetCovered.set.f1696id));
                    this.sets.add(stickerSetCovered);
                    i++;
                }
            }
            this.endReached = i <= 0;
            this.loadingStickers = false;
            this.firstLoaded = true;
            EmptyTextProgressView emptyTextProgressView = this.emptyView;
            if (emptyTextProgressView != null) {
                emptyTextProgressView.showTextView();
            }
            updateRows();
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.doOnTransitionEnd = new Runnable() { // from class: org.telegram.ui.ArchivedStickersActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processResponse$3(tL_messages_archivedStickers);
            }
        };
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        this.isInTransition = true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        this.isInTransition = false;
        Runnable runnable = this.doOnTransitionEnd;
        if (runnable != null) {
            runnable.run();
            this.doOnTransitionEnd = null;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        RecyclerListView recyclerListView;
        ArchivedStickerSetCell archivedStickerSetCell;
        TLRPC.StickerSetCovered stickersSet;
        if (i == NotificationCenter.needAddArchivedStickers) {
            ArrayList arrayList = new ArrayList((List) objArr[0]);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int size2 = this.sets.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        break;
                    }
                    if (((TLRPC.StickerSetCovered) this.sets.get(i3)).set.f1696id == ((TLRPC.StickerSetCovered) arrayList.get(size)).set.f1696id) {
                        arrayList.remove(size);
                        break;
                    }
                    i3++;
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.sets.addAll(0, arrayList);
            updateRows();
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyItemRangeInserted(this.stickersStartRow, arrayList.size());
                return;
            }
            return;
        }
        if (i != NotificationCenter.stickersDidLoad || (recyclerListView = this.listView) == null) {
            return;
        }
        int childCount = recyclerListView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.listView.getChildAt(i4);
            if ((childAt instanceof ArchivedStickerSetCell) && (stickersSet = (archivedStickerSetCell = (ArchivedStickerSetCell) childAt).getStickersSet()) != null) {
                boolean zIsStickerPackInstalled = MediaDataController.getInstance(this.currentAccount).isStickerPackInstalled(stickersSet.set.f1696id);
                if (zIsStickerPackInstalled) {
                    this.installingStickerSets.remove(stickersSet.set.f1696id);
                    archivedStickerSetCell.setDrawProgress(false, true);
                }
                archivedStickerSetCell.setChecked(zIsStickerPackInstalled, true, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ArchivedStickersActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (getItemViewType(i) == 0) {
                int i2 = i - ArchivedStickersActivity.this.stickersStartRow;
                ArchivedStickerSetCell archivedStickerSetCell = (ArchivedStickerSetCell) viewHolder.itemView;
                final TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) ArchivedStickersActivity.this.sets.get(i2);
                archivedStickerSetCell.setStickersSet(stickerSetCovered, i2 != ArchivedStickersActivity.this.sets.size() - 1);
                boolean zIsStickerPackInstalled = MediaDataController.getInstance(((BaseFragment) ArchivedStickersActivity.this).currentAccount).isStickerPackInstalled(stickerSetCovered.set.f1696id);
                archivedStickerSetCell.setChecked(zIsStickerPackInstalled, false, false);
                if (zIsStickerPackInstalled) {
                    ArchivedStickersActivity.this.installingStickerSets.remove(stickerSetCovered.set.f1696id);
                    archivedStickerSetCell.setDrawProgress(false, false);
                } else {
                    archivedStickerSetCell.setDrawProgress(ArchivedStickersActivity.this.installingStickerSets.indexOfKey(stickerSetCovered.set.f1696id) >= 0, false);
                }
                archivedStickerSetCell.setOnCheckedChangeListener(new ArchivedStickerSetCell.OnCheckedChangeListener() { // from class: org.telegram.ui.ArchivedStickersActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Cells.ArchivedStickerSetCell.OnCheckedChangeListener
                    public final void onCheckedChanged(ArchivedStickerSetCell archivedStickerSetCell2, boolean z) {
                        this.f$0.lambda$onBindViewHolder$0(stickerSetCovered, archivedStickerSetCell2, z);
                    }
                });
                return;
            }
            if (getItemViewType(i) == 2) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == ArchivedStickersActivity.this.archiveInfoRow) {
                    textInfoPrivacyCell.setTopPadding(17);
                    textInfoPrivacyCell.setBottomPadding(10);
                    textInfoPrivacyCell.setText(LocaleController.getString(ArchivedStickersActivity.this.currentType == 5 ? C2888R.string.ArchivedEmojiInfo : C2888R.string.ArchivedStickersInfo));
                } else {
                    textInfoPrivacyCell.setTopPadding(10);
                    textInfoPrivacyCell.setBottomPadding(17);
                    textInfoPrivacyCell.setText(null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(TLRPC.StickerSetCovered stickerSetCovered, ArchivedStickerSetCell archivedStickerSetCell, boolean z) {
            if (z) {
                archivedStickerSetCell.setChecked(false, false, false);
                if (ArchivedStickersActivity.this.installingStickerSets.indexOfKey(stickerSetCovered.set.f1696id) >= 0) {
                    return;
                }
                archivedStickerSetCell.setDrawProgress(true, true);
                ArchivedStickersActivity.this.installingStickerSets.put(stickerSetCovered.set.f1696id, stickerSetCovered);
            }
            MediaDataController.getInstance(((BaseFragment) ArchivedStickersActivity.this).currentAccount).toggleStickerSet(ArchivedStickersActivity.this.getParentActivity(), stickerSetCovered, z ? 2 : 1, ArchivedStickersActivity.this, false, false);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View loadingCell;
            if (i == 0) {
                ArchivedStickerSetCell archivedStickerSetCell = new ArchivedStickerSetCell(this.mContext, true);
                archivedStickerSetCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                loadingCell = archivedStickerSetCell;
            } else if (i == 1) {
                loadingCell = new LoadingCell(this.mContext);
            } else {
                loadingCell = i != 2 ? null : new TextInfoPrivacyCell(this.mContext);
            }
            loadingCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(loadingCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i >= ArchivedStickersActivity.this.stickersStartRow && i < ArchivedStickersActivity.this.stickersEndRow) {
                return 0;
            }
            if (i == ArchivedStickersActivity.this.stickersLoadingRow) {
                return 1;
            }
            return (i == ArchivedStickersActivity.this.stickersShadowRow || i == ArchivedStickersActivity.this.archiveInfoRow) ? 2 : 0;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ArchivedStickerSetCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        EmptyTextProgressView emptyTextProgressView = this.emptyView;
        int i = ThemeDescription.FLAG_PROGRESSBAR;
        int i2 = Theme.key_progressCircle;
        arrayList.add(new ThemeDescription(emptyTextProgressView, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ArchivedStickerSetCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ArchivedStickerSetCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i3 = Theme.key_featuredStickers_removeButtonText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ArchivedStickerSetCell.class}, new String[]{"deleteButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{ArchivedStickerSetCell.class}, new String[]{"deleteButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ArchivedStickerSetCell.class}, new String[]{"addButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_buttonText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{ArchivedStickerSetCell.class}, new String[]{"addButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{ArchivedStickerSetCell.class}, new String[]{"addButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addButtonPressed));
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
