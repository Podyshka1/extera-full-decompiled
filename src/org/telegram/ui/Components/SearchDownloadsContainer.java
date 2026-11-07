package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.SharedAudioCell;
import org.telegram.ui.Cells.SharedDocumentCell;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.FilteredSearchView;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PremiumPreviewFragment;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class SearchDownloadsContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    DownloadsAdapter adapter;
    boolean checkingFilesExist;
    private final int currentAccount;
    ArrayList<MessageObject> currentLoadingFiles;
    ArrayList<MessageObject> currentLoadingFilesTmp;
    int downloadingFilesEndRow;
    int downloadingFilesHeader;
    int downloadingFilesStartRow;
    StickerEmptyView emptyView;
    private boolean hasCurrentDownload;
    private boolean ignoreRequestLayout;
    RecyclerItemsEnterAnimator itemsEnterAnimator;
    String lastQueryString;
    Runnable lastSearchRunnable;
    private final FlickerLoadingView loadingView;
    private final FilteredSearchView.MessageHashId messageHashIdTmp;
    Activity parentActivity;
    BaseFragment parentFragment;
    int recentFilesEndRow;
    int recentFilesHeader;
    int recentFilesStartRow;
    ArrayList<MessageObject> recentLoadingFiles;
    ArrayList<MessageObject> recentLoadingFilesTmp;
    public final RecyclerListView recyclerListView;
    int rowCount;
    String searchQuery;
    FilteredSearchView.UiCallback uiCallback;

    public SearchDownloadsContainer(BaseFragment baseFragment, final int i) {
        super(baseFragment.getParentActivity());
        this.adapter = new DownloadsAdapter();
        this.currentLoadingFiles = new ArrayList<>();
        this.recentLoadingFiles = new ArrayList<>();
        this.currentLoadingFilesTmp = new ArrayList<>();
        this.recentLoadingFilesTmp = new ArrayList<>();
        this.downloadingFilesHeader = -1;
        this.downloadingFilesStartRow = -1;
        this.downloadingFilesEndRow = -1;
        this.recentFilesHeader = -1;
        this.recentFilesStartRow = -1;
        this.recentFilesEndRow = -1;
        this.messageHashIdTmp = new FilteredSearchView.MessageHashId(0, 0L);
        this.parentFragment = baseFragment;
        this.parentActivity = baseFragment.getParentActivity();
        this.currentAccount = i;
        RecyclerListView recyclerListView = new RecyclerListView(getContext()) { // from class: org.telegram.ui.Components.SearchDownloadsContainer.1
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                SearchDownloadsContainer.this.checkItemsFloodWait();
            }
        };
        this.recyclerListView = recyclerListView;
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        addView(recyclerListView);
        recyclerListView.setLayoutManager(new LinearLayoutManager(baseFragment.getParentActivity()) { // from class: org.telegram.ui.Components.SearchDownloadsContainer.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }
        });
        recyclerListView.setAdapter(this.adapter);
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchDownloadsContainer.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 1) {
                    AndroidUtilities.hideKeyboard(SearchDownloadsContainer.this.parentActivity.getCurrentFocus());
                }
                SearchDownloadsContainer.this.checkItemsFloodWait();
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        recyclerListView.setItemAnimator(defaultItemAnimator);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(i, view, i2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$new$1(view, i2);
            }
        });
        this.itemsEnterAnimator = new RecyclerItemsEnterAnimator(recyclerListView, true);
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext());
        this.loadingView = flickerLoadingView;
        addView(flickerLoadingView);
        flickerLoadingView.setUseHeaderOffset(true);
        flickerLoadingView.setViewType(3);
        flickerLoadingView.setVisibility(8);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(getContext(), flickerLoadingView, 1);
        this.emptyView = stickerEmptyView;
        addView(stickerEmptyView);
        recyclerListView.setEmptyView(this.emptyView);
        FileLoader.getInstance(i).getCurrentLoadingFiles(this.currentLoadingFiles);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, View view, int i2) {
        MessageObject message = this.adapter.getMessage(i2);
        if (message == null) {
            return;
        }
        if (this.uiCallback.actionModeShowing()) {
            this.uiCallback.toggleItemSelection(message, view, 0);
            this.messageHashIdTmp.set(message.getId(), message.getDialogId());
            this.adapter.notifyItemChanged(i2);
            if (this.uiCallback.actionModeShowing()) {
                return;
            }
            DownloadsAdapter downloadsAdapter = this.adapter;
            downloadsAdapter.notifyItemRangeChanged(0, downloadsAdapter.getItemCount());
            return;
        }
        if (view instanceof Cell) {
            SharedDocumentCell sharedDocumentCell = ((Cell) view).sharedDocumentCell;
            MessageObject message2 = sharedDocumentCell.getMessage();
            TLRPC.Document document = message2.getDocument();
            if (sharedDocumentCell.isLoaded()) {
                if (message2.isRoundVideo() || message2.isVoice()) {
                    MediaController.getInstance().playMessage(message2);
                    return;
                }
                boolean zCanPreviewDocument = message2.canPreviewDocument();
                if (!zCanPreviewDocument) {
                    TLRPC.Message message3 = message2.messageOwner;
                    boolean z = message3 != null && message3.noforwards;
                    TLRPC.Chat chat = message.messageOwner.peer_id.channel_id != 0 ? MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(message.messageOwner.peer_id.channel_id)) : null;
                    if (chat == null) {
                        chat = message.messageOwner.peer_id.chat_id != 0 ? MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(message.messageOwner.peer_id.chat_id)) : null;
                    }
                    if (chat != null) {
                        z = chat.noforwards;
                    }
                    zCanPreviewDocument = zCanPreviewDocument || z;
                }
                if (zCanPreviewDocument) {
                    PhotoViewer.getInstance().setParentActivity(this.parentFragment);
                    ArrayList<MessageObject> arrayList = new ArrayList<>();
                    arrayList.add(message2);
                    PhotoViewer.getInstance().setParentActivity(this.parentFragment);
                    PhotoViewer.getInstance().openPhoto(arrayList, 0, 0L, 0L, 0L, new PhotoViewer.EmptyPhotoViewerProvider());
                    return;
                }
                AndroidUtilities.openDocument(message2, this.parentActivity, this.parentFragment);
            } else if (!sharedDocumentCell.isLoading()) {
                message.putInDownloadsStore = true;
                AccountInstance.getInstance(UserConfig.selectedAccount).getFileLoader().loadFile(document, message, 0, 0);
                sharedDocumentCell.updateFileExistIcon(true);
                DownloadController.getInstance(i).updateFilesLoadingPriority();
            } else {
                AccountInstance.getInstance(UserConfig.selectedAccount).getFileLoader().cancelLoadFile(document);
                sharedDocumentCell.updateFileExistIcon(true);
            }
            update(true);
        }
        if (view instanceof SharedAudioCell) {
            ((SharedAudioCell) view).didPressedButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        MessageObject message = this.adapter.getMessage(i);
        if (message == null) {
            return false;
        }
        if (!this.uiCallback.actionModeShowing()) {
            this.uiCallback.showActionMode();
            DownloadsAdapter downloadsAdapter = this.adapter;
            downloadsAdapter.notifyItemRangeChanged(0, downloadsAdapter.getItemCount());
        }
        if (!this.uiCallback.actionModeShowing()) {
            return true;
        }
        this.uiCallback.toggleItemSelection(message, view, 0);
        if (!this.uiCallback.actionModeShowing()) {
            DownloadsAdapter downloadsAdapter2 = this.adapter;
            downloadsAdapter2.notifyItemRangeChanged(0, downloadsAdapter2.getItemCount());
        }
        this.messageHashIdTmp.set(message.getId(), message.getDialogId());
        return true;
    }

    public void setPagesPaddings(int i, int i2) {
        setPagesPaddings(i, i2, false);
    }

    public void setPagesPaddings(int i, int i2, boolean z) {
        setClipToPadding(false);
        this.ignoreRequestLayout = z;
        setPadding(0, i, 0, i2);
        this.recyclerListView.setPadding(0, i, 0, i2, z);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.recyclerListView.getLayoutParams();
        marginLayoutParams.topMargin = -i;
        marginLayoutParams.bottomMargin = -i2;
        this.ignoreRequestLayout = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreRequestLayout) {
            return;
        }
        super.requestLayout();
    }

    private void checkFilesExist() {
        if (this.checkingFilesExist) {
            return;
        }
        this.checkingFilesExist = true;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkFilesExist$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkFilesExist$3() {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        FileLoader.getInstance(this.currentAccount).getCurrentLoadingFiles(arrayList);
        FileLoader.getInstance(this.currentAccount).getRecentLoadingFiles(arrayList2);
        for (int i = 0; i < arrayList.size(); i++) {
            if (FileLoader.getInstance(this.currentAccount).getPathToMessage(arrayList.get(i).messageOwner).exists()) {
                arrayList3.add(arrayList.get(i));
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            if (!FileLoader.getInstance(this.currentAccount).getPathToMessage(arrayList2.get(i2).messageOwner).exists()) {
                arrayList4.add(arrayList2.get(i2));
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkFilesExist$2(arrayList3, arrayList4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkFilesExist$2(ArrayList arrayList, ArrayList arrayList2) {
        for (int i = 0; i < arrayList.size(); i++) {
            DownloadController.getInstance(this.currentAccount).onDownloadComplete((MessageObject) arrayList.get(i));
        }
        if (!arrayList2.isEmpty()) {
            DownloadController.getInstance(this.currentAccount).deleteRecentFiles(arrayList2);
        }
        this.checkingFilesExist = false;
        update(true);
    }

    public void update(boolean z) {
        DownloadsAdapter downloadsAdapter = this.adapter;
        downloadsAdapter.notifyItemRangeChanged(0, downloadsAdapter.getItemCount());
        if (TextUtils.isEmpty(this.searchQuery) || isEmptyDownloads()) {
            if (this.rowCount == 0) {
                this.itemsEnterAnimator.showItemsAnimated(0);
            }
            if (this.checkingFilesExist) {
                this.currentLoadingFilesTmp.clear();
                this.recentLoadingFilesTmp.clear();
            }
            FileLoader.getInstance(this.currentAccount).getCurrentLoadingFiles(this.currentLoadingFilesTmp);
            FileLoader.getInstance(this.currentAccount).getRecentLoadingFiles(this.recentLoadingFilesTmp);
            for (int i = 0; i < this.currentLoadingFiles.size(); i++) {
                this.currentLoadingFiles.get(i).setQuery(null);
            }
            for (int i2 = 0; i2 < this.recentLoadingFiles.size(); i2++) {
                this.recentLoadingFiles.get(i2).setQuery(null);
            }
            this.lastQueryString = null;
            updateListInternal(z, this.currentLoadingFilesTmp, this.recentLoadingFilesTmp);
            if (this.rowCount == 0) {
                this.emptyView.showProgress(false, false);
                this.emptyView.title.setText(LocaleController.getString(C2665R.string.SearchEmptyViewDownloads));
                this.emptyView.subtitle.setVisibility(8);
            }
            this.emptyView.setStickerType(9);
            return;
        }
        this.emptyView.setStickerType(1);
        final ArrayList<MessageObject> arrayList = new ArrayList<>();
        final ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        FileLoader.getInstance(this.currentAccount).getCurrentLoadingFiles(arrayList);
        FileLoader.getInstance(this.currentAccount).getRecentLoadingFiles(arrayList2);
        final String lowerCase = this.searchQuery.toLowerCase();
        boolean zEquals = lowerCase.equals(this.lastQueryString);
        this.lastQueryString = lowerCase;
        Utilities.searchQueue.cancelRunnable(this.lastSearchRunnable);
        DispatchQueue dispatchQueue = Utilities.searchQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$update$5(arrayList, lowerCase, arrayList2);
            }
        };
        this.lastSearchRunnable = runnable;
        dispatchQueue.postRunnable(runnable, zEquals ? 0L : 300L);
        this.recentLoadingFilesTmp.clear();
        this.currentLoadingFilesTmp.clear();
        if (zEquals) {
            return;
        }
        this.emptyView.showProgress(true, true);
        updateListInternal(z, this.currentLoadingFilesTmp, this.recentLoadingFilesTmp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$5(ArrayList arrayList, final String str, ArrayList arrayList2) {
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            String documentFileName = FileLoader.getDocumentFileName(((MessageObject) arrayList.get(i)).getDocument());
            if (documentFileName != null && documentFileName.toLowerCase().contains(str)) {
                MessageObject messageObject = new MessageObject(this.currentAccount, ((MessageObject) arrayList.get(i)).messageOwner, false, false);
                messageObject.mediaExists = ((MessageObject) arrayList.get(i)).mediaExists;
                messageObject.setQuery(this.searchQuery);
                arrayList3.add(messageObject);
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            String documentFileName2 = FileLoader.getDocumentFileName(((MessageObject) arrayList2.get(i2)).getDocument());
            if (documentFileName2 != null && documentFileName2.toLowerCase().contains(str)) {
                MessageObject messageObject2 = new MessageObject(this.currentAccount, ((MessageObject) arrayList2.get(i2)).messageOwner, false, false);
                messageObject2.mediaExists = ((MessageObject) arrayList2.get(i2)).mediaExists;
                messageObject2.setQuery(this.searchQuery);
                arrayList4.add(messageObject2);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$update$4(str, arrayList3, arrayList4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$4(String str, ArrayList arrayList, ArrayList arrayList2) {
        if (str.equals(this.lastQueryString)) {
            if (this.rowCount == 0) {
                this.itemsEnterAnimator.showItemsAnimated(0);
            }
            updateListInternal(true, arrayList, arrayList2);
            if (this.rowCount == 0) {
                this.emptyView.showProgress(false, true);
                this.emptyView.title.setText(LocaleController.getString(C2665R.string.SearchEmptyViewTitle2));
                this.emptyView.subtitle.setVisibility(0);
                this.emptyView.subtitle.setText(LocaleController.getString(C2665R.string.SearchEmptyViewFilteredSubtitle2));
            }
        }
    }

    private boolean isEmptyDownloads() {
        return DownloadController.getInstance(this.currentAccount).downloadingFiles.isEmpty() && DownloadController.getInstance(this.currentAccount).recentDownloadingFiles.isEmpty();
    }

    private void updateListInternal(boolean z, ArrayList<MessageObject> arrayList, ArrayList<MessageObject> arrayList2) {
        RecyclerView.ViewHolder childViewHolder;
        if (z) {
            final int i = this.downloadingFilesHeader;
            final int i2 = this.downloadingFilesStartRow;
            final int i3 = this.downloadingFilesEndRow;
            final int i4 = this.recentFilesHeader;
            final int i5 = this.recentFilesStartRow;
            final int i6 = this.recentFilesEndRow;
            final int i7 = this.rowCount;
            final ArrayList arrayList3 = new ArrayList(this.currentLoadingFiles);
            final ArrayList arrayList4 = new ArrayList(this.recentLoadingFiles);
            updateRows(arrayList, arrayList2);
            DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Components.SearchDownloadsContainer.4
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getOldListSize() {
                    return i7;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getNewListSize() {
                    return SearchDownloadsContainer.this.rowCount;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areItemsTheSame(int i8, int i9) {
                    MessageObject messageObject;
                    if (i8 >= 0 && i9 >= 0) {
                        if (i8 == i && i9 == SearchDownloadsContainer.this.downloadingFilesHeader) {
                            return true;
                        }
                        if (i8 == i4 && i9 == SearchDownloadsContainer.this.recentFilesHeader) {
                            return true;
                        }
                    }
                    int i10 = i2;
                    MessageObject messageObject2 = null;
                    if (i8 >= i10 && i8 < i3) {
                        messageObject = (MessageObject) arrayList3.get(i8 - i10);
                    } else {
                        int i11 = i5;
                        messageObject = (i8 < i11 || i8 >= i6) ? null : (MessageObject) arrayList4.get(i8 - i11);
                    }
                    SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
                    int i12 = searchDownloadsContainer.downloadingFilesStartRow;
                    if (i9 >= i12 && i9 < searchDownloadsContainer.downloadingFilesEndRow) {
                        messageObject2 = searchDownloadsContainer.currentLoadingFiles.get(i9 - i12);
                    } else {
                        int i13 = searchDownloadsContainer.recentFilesStartRow;
                        if (i9 >= i13 && i9 < searchDownloadsContainer.recentFilesEndRow) {
                            messageObject2 = searchDownloadsContainer.recentLoadingFiles.get(i9 - i13);
                        }
                    }
                    return (messageObject2 == null || messageObject == null || messageObject2.getDocument() == null || messageObject.getDocument() == null || messageObject2.getDocument().id != messageObject.getDocument().id) ? false : true;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areContentsTheSame(int i8, int i9) {
                    return areItemsTheSame(i8, i9);
                }
            }).dispatchUpdatesTo(this.adapter);
            for (int i8 = 0; i8 < this.recyclerListView.getChildCount(); i8++) {
                View childAt = this.recyclerListView.getChildAt(i8);
                int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
                if (childAdapterPosition >= 0 && (childViewHolder = this.recyclerListView.getChildViewHolder(childAt)) != null && !childViewHolder.shouldIgnore()) {
                    if (childAt instanceof GraySectionCell) {
                        this.adapter.onBindViewHolder(childViewHolder, childAdapterPosition);
                    } else if (childAt instanceof Cell) {
                        Cell cell = (Cell) childAt;
                        cell.sharedDocumentCell.updateFileExistIcon(true);
                        this.messageHashIdTmp.set(cell.sharedDocumentCell.getMessage().getId(), cell.sharedDocumentCell.getMessage().getDialogId());
                        cell.sharedDocumentCell.setChecked(this.uiCallback.isSelected(this.messageHashIdTmp), true);
                    }
                }
            }
            return;
        }
        updateRows(arrayList, arrayList2);
        this.adapter.notifyDataSetChanged();
    }

    private void updateRows(ArrayList<MessageObject> arrayList, ArrayList<MessageObject> arrayList2) {
        this.currentLoadingFiles.clear();
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            MessageObject messageObject = arrayList.get(i2);
            i2++;
            MessageObject messageObject2 = messageObject;
            if (!messageObject2.isRoundVideo() && !messageObject2.isVoice()) {
                this.currentLoadingFiles.add(messageObject2);
            }
        }
        this.recentLoadingFiles.clear();
        int size2 = arrayList2.size();
        int i3 = 0;
        while (i3 < size2) {
            MessageObject messageObject3 = arrayList2.get(i3);
            i3++;
            MessageObject messageObject4 = messageObject3;
            if (!messageObject4.isRoundVideo() && !messageObject4.isVoice()) {
                this.recentLoadingFiles.add(messageObject4);
            }
        }
        this.rowCount = 0;
        this.downloadingFilesHeader = -1;
        this.downloadingFilesStartRow = -1;
        this.downloadingFilesEndRow = -1;
        this.recentFilesHeader = -1;
        this.recentFilesStartRow = -1;
        this.recentFilesEndRow = -1;
        this.hasCurrentDownload = false;
        if (!this.currentLoadingFiles.isEmpty()) {
            int i4 = this.rowCount;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.downloadingFilesHeader = i4;
            this.downloadingFilesStartRow = i5;
            int size3 = i5 + this.currentLoadingFiles.size();
            this.rowCount = size3;
            this.downloadingFilesEndRow = size3;
            while (true) {
                if (i >= this.currentLoadingFiles.size()) {
                    break;
                }
                if (FileLoader.getInstance(this.currentAccount).isLoadingFile(this.currentLoadingFiles.get(i).getFileName())) {
                    this.hasCurrentDownload = true;
                    break;
                }
                i++;
            }
        }
        if (this.recentLoadingFiles.isEmpty()) {
            return;
        }
        int i6 = this.rowCount;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.recentFilesHeader = i6;
        this.recentFilesStartRow = i7;
        int size4 = i7 + this.recentLoadingFiles.size();
        this.rowCount = size4;
        this.recentFilesEndRow = size4;
    }

    public void search(String str) {
        this.searchQuery = str;
        update(false);
    }

    public class DownloadsAdapter extends RecyclerListView.SelectionAdapter {
        private DownloadsAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View cell;
            View graySectionCell;
            if (i == 0) {
                graySectionCell = new GraySectionCell(viewGroup.getContext());
            } else {
                if (i == 1) {
                    cell = SearchDownloadsContainer.this.new Cell(viewGroup.getContext());
                } else {
                    cell = new SharedAudioCell(viewGroup.getContext()) { // from class: org.telegram.ui.Components.SearchDownloadsContainer.DownloadsAdapter.1
                        @Override // org.telegram.ui.Cells.SharedAudioCell
                        public boolean needPlayMessage(MessageObject messageObject) {
                            return MediaController.getInstance().playMessage(messageObject);
                        }
                    };
                }
                graySectionCell = cell;
            }
            graySectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(graySectionCell);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
                if (i == searchDownloadsContainer.downloadingFilesHeader) {
                    String string = LocaleController.getString(C2665R.string.Downloading);
                    boolean zEquals = graySectionCell.getText().equals(string);
                    SearchDownloadsContainer searchDownloadsContainer2 = SearchDownloadsContainer.this;
                    if (zEquals) {
                        graySectionCell.setRightText(LocaleController.getString(searchDownloadsContainer2.hasCurrentDownload ? C2665R.string.PauseAll : C2665R.string.ResumeAll), SearchDownloadsContainer.this.hasCurrentDownload);
                        return;
                    } else {
                        graySectionCell.setText(string, LocaleController.getString(searchDownloadsContainer2.hasCurrentDownload ? C2665R.string.PauseAll : C2665R.string.ResumeAll), new View.OnClickListener() { // from class: org.telegram.ui.Components.SearchDownloadsContainer.DownloadsAdapter.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                int i2 = 0;
                                while (true) {
                                    int size = SearchDownloadsContainer.this.currentLoadingFiles.size();
                                    DownloadsAdapter downloadsAdapter = DownloadsAdapter.this;
                                    if (i2 < size) {
                                        MessageObject messageObject = SearchDownloadsContainer.this.currentLoadingFiles.get(i2);
                                        if (SearchDownloadsContainer.this.hasCurrentDownload) {
                                            AccountInstance.getInstance(UserConfig.selectedAccount).getFileLoader().cancelLoadFile(messageObject.getDocument());
                                        } else {
                                            AccountInstance.getInstance(UserConfig.selectedAccount).getFileLoader().loadFile(messageObject.getDocument(), messageObject, 0, 0);
                                            DownloadController.getInstance(SearchDownloadsContainer.this.currentAccount).updateFilesLoadingPriority();
                                        }
                                        i2++;
                                    } else {
                                        SearchDownloadsContainer.this.update(true);
                                        return;
                                    }
                                }
                            }
                        });
                        return;
                    }
                }
                if (i == searchDownloadsContainer.recentFilesHeader) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.RecentlyDownloaded), LocaleController.getString(C2665R.string.Settings), new View.OnClickListener() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$DownloadsAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onBindViewHolder$0(view);
                        }
                    });
                    return;
                }
                return;
            }
            MessageObject message = getMessage(i);
            if (message != null) {
                if (SearchDownloadsContainer.this.uiCallback.actionModeShowing()) {
                    SearchDownloadsContainer searchDownloadsContainer3 = SearchDownloadsContainer.this;
                    z = i >= searchDownloadsContainer3.downloadingFilesStartRow && i < searchDownloadsContainer3.downloadingFilesEndRow;
                }
                if (itemViewType == 1) {
                    Cell cell = (Cell) viewHolder.itemView;
                    cell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    int id = cell.sharedDocumentCell.getMessage() == null ? 0 : cell.sharedDocumentCell.getMessage().getId();
                    cell.sharedDocumentCell.setDocument(message, true);
                    SearchDownloadsContainer.this.messageHashIdTmp.set(cell.sharedDocumentCell.getMessage().getId(), cell.sharedDocumentCell.getMessage().getDialogId());
                    SharedDocumentCell sharedDocumentCell = cell.sharedDocumentCell;
                    SearchDownloadsContainer searchDownloadsContainer4 = SearchDownloadsContainer.this;
                    sharedDocumentCell.setChecked(searchDownloadsContainer4.uiCallback.isSelected(searchDownloadsContainer4.messageHashIdTmp), id == message.getId());
                    cell.sharedDocumentCell.showReorderIcon(z, id == message.getId());
                    return;
                }
                if (itemViewType == 2) {
                    SharedAudioCell sharedAudioCell = (SharedAudioCell) viewHolder.itemView;
                    int id2 = sharedAudioCell.getMessage() == null ? 0 : sharedAudioCell.getMessage().getId();
                    sharedAudioCell.setMessageObject(message, true);
                    SearchDownloadsContainer.this.messageHashIdTmp.set(sharedAudioCell.getMessage().getId(), sharedAudioCell.getMessage().getDialogId());
                    SearchDownloadsContainer searchDownloadsContainer5 = SearchDownloadsContainer.this;
                    sharedAudioCell.setChecked(searchDownloadsContainer5.uiCallback.isSelected(searchDownloadsContainer5.messageHashIdTmp), id2 == message.getId());
                    sharedAudioCell.showReorderIcon(z, id2 == message.getId());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
            DownloadsInfoBottomSheet.show(searchDownloadsContainer.parentActivity, searchDownloadsContainer.parentFragment);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
            if (i == searchDownloadsContainer.downloadingFilesHeader || i == searchDownloadsContainer.recentFilesHeader) {
                return 0;
            }
            MessageObject message = getMessage(i);
            return (message != null && message.isMusic()) ? 2 : 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MessageObject getMessage(int i) {
            SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
            int i2 = searchDownloadsContainer.downloadingFilesStartRow;
            if (i >= i2 && i < searchDownloadsContainer.downloadingFilesEndRow) {
                return searchDownloadsContainer.currentLoadingFiles.get(i - i2);
            }
            int i3 = searchDownloadsContainer.recentFilesStartRow;
            if (i < i3 || i >= searchDownloadsContainer.recentFilesEndRow) {
                return null;
            }
            return searchDownloadsContainer.recentLoadingFiles.get(i - i3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SearchDownloadsContainer.this.rowCount;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.onDownloadingFilesChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.premiumFloodWaitReceived);
        if (getVisibility() == 0) {
            DownloadController.getInstance(this.currentAccount).clearUnviewedDownloads();
        }
        checkFilesExist();
        update(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.onDownloadingFilesChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.premiumFloodWaitReceived);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.onDownloadingFilesChanged) {
            if (getVisibility() == 0) {
                DownloadController.getInstance(this.currentAccount).clearUnviewedDownloads();
            }
            update(true);
        } else if (i == NotificationCenter.premiumFloodWaitReceived) {
            checkItemsFloodWait();
        }
    }

    public class Cell extends FrameLayout {
        SharedDocumentCell sharedDocumentCell;

        public Cell(Context context) {
            super(context);
            SharedDocumentCell sharedDocumentCell = new SharedDocumentCell(context, 2);
            this.sharedDocumentCell = sharedDocumentCell;
            sharedDocumentCell.rightDateTextView.setVisibility(8);
            addView(this.sharedDocumentCell);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            this.sharedDocumentCell.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        }
    }

    public void setUiCallback(FilteredSearchView.UiCallback uiCallback) {
        this.uiCallback = uiCallback;
    }

    public void setKeyboardHeight(int i, boolean z) {
        this.emptyView.setKeyboardHeight(i, z);
    }

    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return SearchDownloadsContainer.this.uiCallback.actionModeShowing();
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() < SearchDownloadsContainer.this.downloadingFilesStartRow || viewHolder.getAdapterPosition() >= SearchDownloadsContainer.this.downloadingFilesEndRow) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder2.getAdapterPosition() >= SearchDownloadsContainer.this.downloadingFilesStartRow && viewHolder2.getAdapterPosition() < SearchDownloadsContainer.this.downloadingFilesEndRow) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = viewHolder2.getAdapterPosition();
                SearchDownloadsContainer searchDownloadsContainer = SearchDownloadsContainer.this;
                int i = searchDownloadsContainer.downloadingFilesStartRow;
                int i2 = adapterPosition - i;
                int i3 = adapterPosition2 - i;
                searchDownloadsContainer.currentLoadingFiles.indexOf(Integer.valueOf(adapterPosition - i));
                SearchDownloadsContainer searchDownloadsContainer2 = SearchDownloadsContainer.this;
                searchDownloadsContainer2.currentLoadingFiles.get(adapterPosition - searchDownloadsContainer2.downloadingFilesStartRow);
                MessageObject messageObject = SearchDownloadsContainer.this.currentLoadingFiles.get(i2);
                MessageObject messageObject2 = SearchDownloadsContainer.this.currentLoadingFiles.get(i3);
                SearchDownloadsContainer.this.currentLoadingFiles.set(i2, messageObject2);
                SearchDownloadsContainer.this.currentLoadingFiles.set(i3, messageObject);
                DownloadController.getInstance(SearchDownloadsContainer.this.currentAccount).swapLoadingPriority(messageObject, messageObject2);
                SearchDownloadsContainer.this.adapter.notifyItemMoved(adapterPosition, adapterPosition2);
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                SearchDownloadsContainer.this.recyclerListView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    public void checkItemsFloodWait() {
        MessageObject message;
        if (UserConfig.getInstance(this.currentAccount).isPremium() || this.recyclerListView == null) {
            return;
        }
        for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
            try {
                View childAt = this.recyclerListView.getChildAt(i);
                if ((childAt instanceof Cell) && (message = ((Cell) childAt).sharedDocumentCell.getMessage()) != null) {
                    if (FileLoader.getInstance(this.currentAccount).checkLoadCaughtPremiumFloodWait(message.getFileName())) {
                        showPremiumFloodWaitBulletin(false);
                    } else if (FileLoader.getInstance(this.currentAccount).checkLoadCaughtPremiumFloodWait(message.getFileName())) {
                        showPremiumFloodWaitBulletin(true);
                    } else {
                        continue;
                    }
                    return;
                }
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
    }

    public void showPremiumFloodWaitBulletin(final boolean z) {
        float f;
        if (this.parentFragment == null || !this.recyclerListView.isAttachedToWindow()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - ConnectionsManager.lastPremiumFloodWaitShown < ((long) MessagesController.getInstance(this.currentAccount).uploadPremiumSpeedupNotifyPeriod) * 1000) {
            return;
        }
        ConnectionsManager.lastPremiumFloodWaitShown = jCurrentTimeMillis;
        if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            return;
        }
        int i = this.currentAccount;
        if (z) {
            f = MessagesController.getInstance(i).uploadPremiumSpeedupUpload;
        } else {
            f = MessagesController.getInstance(i).uploadPremiumSpeedupDownload;
        }
        SpannableString spannableString = new SpannableString(Double.toString(((double) Math.round(f * 10.0f)) / 10.0d).replaceAll("\\.0$", _UrlKt.FRAGMENT_ENCODE_SET));
        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString.length(), 33);
        if (this.parentFragment.hasStoryViewer()) {
            return;
        }
        BulletinFactory.of(this.parentFragment).createSimpleBulletin(C2665R.raw.speed_limit, LocaleController.getString(z ? C2665R.string.UploadSpeedLimited : C2665R.string.DownloadSpeedLimited), AndroidUtilities.replaceCharSequence(TimeModel.NUMBER_FORMAT, AndroidUtilities.premiumText(LocaleController.getString(z ? C2665R.string.UploadSpeedLimitedMessage : C2665R.string.DownloadSpeedLimitedMessage), new Runnable() { // from class: org.telegram.ui.Components.SearchDownloadsContainer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showPremiumFloodWaitBulletin$6(z);
            }
        }), spannableString)).setDuration(8000).show(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumFloodWaitBulletin$6(boolean z) {
        this.parentFragment.presentFragment(new PremiumPreviewFragment(z ? "upload_speed" : "download_speed"));
    }
}
