package org.telegram.p029ui;

import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.SharedPhotoVideoCell2;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.ExtendedGridLayoutManager;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes6.dex */
public class SelectStoriesBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private UniversalAdapter adapter;
    private final ButtonWithCounterView button;
    private final FrameLayout buttonContainer;
    private final int columnsCount;
    private final long dialogId;

    /* JADX INFO: renamed from: id */
    private int f2138id;
    private final ExtendedGridLayoutManager layoutManager;
    private final HashMap selectedStoriesIds;
    private final StoriesController.StoriesList storiesList;

    public SelectStoriesBottomSheet(BaseFragment baseFragment, long j, int i, final Utilities.Callback callback) {
        super(baseFragment, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING);
        this.selectedStoriesIds = new HashMap();
        this.dialogId = j;
        this.columnsCount = i;
        StoriesController.StoriesList storiesList = MessagesController.getInstance(baseFragment.getCurrentAccount()).getStoriesController().getStoriesList(j, 1);
        this.storiesList = storiesList;
        storiesList.load(false, 30);
        this.headerMoveTop = AndroidUtilities.m1124dp(12.0f);
        fixNavigationBar();
        setSlidingActionBar();
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.buttonContainer = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        int i2 = this.backgroundPaddingLeft;
        frameLayout.setPadding(i2, 0, i2, 0);
        this.containerView.addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f, 87, 0.0f, 0.0f, 0.0f, 0.0f));
        View view = new View(getContext());
        view.setBackgroundColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
        frameLayout.addView(view, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 55));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.StoriesAlbumMenuAddStories), false);
        buttonWithCounterView.setEnabled(false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectStoriesBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(callback, view2);
            }
        });
        frameLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 119, 10.0f, (1.0f / AndroidUtilities.density) + 10.0f, 10.0f, 10.0f));
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(getContext(), i);
        this.layoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectStoriesBottomSheet.1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i3) {
                int i4;
                if (SelectStoriesBottomSheet.this.adapter == null) {
                    return SelectStoriesBottomSheet.this.layoutManager.getSpanCount();
                }
                UItem item = SelectStoriesBottomSheet.this.adapter.getItem(i3 - 1);
                return (item == null || (i4 = item.spanCount) == -1) ? SelectStoriesBottomSheet.this.layoutManager.getSpanCount() : i4;
            }
        });
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, 0);
        this.recyclerListView.setSelectorType(9);
        this.recyclerListView.setSelectorDrawableColor(0);
        this.recyclerListView.setLayoutManager(extendedGridLayoutManager);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SelectStoriesBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i4) {
                this.f$0.onItemClick(view2, i4);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.SelectStoriesBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i4) {
                return this.f$0.onItemClick(view2, i4);
            }
        });
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.SelectStoriesBottomSheet.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                SelectStoriesBottomSheet.this.checkLoadMoreScroll();
            }
        });
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Utilities.Callback callback, View view) {
        if (this.storiesList.getCount() == 0) {
            return;
        }
        callback.run(new ArrayList(this.selectedStoriesIds.values()));
        lambda$new$0();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2138id = this.storiesList.link();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesListUpdated);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.storiesList.unlink(this.f2138id);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesListUpdated);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemClick(View view, int i) {
        UItem item;
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter == null || i == 0 || (item = universalAdapter.getItem(i - 1)) == null) {
            return false;
        }
        Object obj = item.object;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            int id = messageObject.getId();
            if (this.selectedStoriesIds.containsKey(Integer.valueOf(id))) {
                this.selectedStoriesIds.remove(Integer.valueOf(id));
                item.checked = false;
                ((SharedPhotoVideoCell2) view).setChecked(false, true);
            } else {
                this.selectedStoriesIds.put(Integer.valueOf(id), messageObject.storyItem);
                item.checked = true;
                ((SharedPhotoVideoCell2) view).setChecked(true, true);
            }
            this.button.setEnabled(!this.selectedStoriesIds.isEmpty());
            this.button.setCount(this.selectedStoriesIds.size(), true);
        }
        return true;
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.StoriesAlbumMenuAddStories);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.SelectStoriesBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.storiesList == null) {
            return;
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(16.0f)));
        int i = this.columnsCount;
        ArrayList arrayList2 = this.storiesList.messageObjects;
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            MessageObject messageObject = (MessageObject) obj;
            arrayList.add(StoryCellFactory.asStory(0, messageObject, this.columnsCount, true).setChecked(this.selectedStoriesIds.containsKey(Integer.valueOf(messageObject.getId()))).setSpanCount(1));
            i--;
            if (i == 0) {
                i = this.columnsCount;
            }
        }
        if (this.storiesList.isLoading() || !this.storiesList.isFull()) {
            while (true) {
                if (i2 >= (i <= 0 ? this.columnsCount : i)) {
                    break;
                }
                i2++;
                arrayList.add(UItem.asFlicker(i2, 34).setSpanCount(1));
            }
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(68.0f)));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesListUpdated && ((StoriesController.StoriesList) objArr[0]) == this.storiesList) {
            this.adapter.update(false);
            checkLoadMoreScroll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadMoreScroll() {
        int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
        int iAbs = iFindFirstVisibleItemPosition == -1 ? 0 : Math.abs(this.layoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1;
        StoriesController.StoriesList storiesList = this.storiesList;
        if (storiesList != null) {
            int i = iFindFirstVisibleItemPosition + iAbs;
            int loadedCount = storiesList.getLoadedCount();
            int i2 = this.columnsCount;
            if (i > loadedCount - i2) {
                int iMax = Math.max(1, i2 / 2);
                int i3 = this.columnsCount;
                this.storiesList.load(false, Math.min(100, iMax * i3 * i3));
            }
        }
    }
}
