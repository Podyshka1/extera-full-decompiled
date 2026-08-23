package org.telegram.p029ui.web;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import de.robv.android.xposed.callbacks.XCallback;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.TimeZone;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.NumberTextView;
import org.telegram.p029ui.Components.StickerEmptyView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalFragment;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.web.AddressBarList;
import org.telegram.p029ui.web.BrowserHistory;
import org.telegram.p029ui.web.HistoryFragment;
import org.telegram.p029ui.web.WebMetadataCache;

/* JADX INFO: loaded from: classes7.dex */
public class HistoryFragment extends UniversalFragment {
    private final Runnable closeToTabs;
    private StickerEmptyView emptyView;
    private String query;
    private ActionBarMenuItem searchItem;
    private boolean searchLoading;
    private NumberTextView selectedCount;
    private final Utilities.Callback whenClicked;
    private ArrayList history = BrowserHistory.getHistory(new Utilities.Callback() { // from class: org.telegram.ui.web.HistoryFragment$$ExternalSyntheticLambda0
        @Override // org.telegram.messenger.Utilities.Callback
        public final void run(Object obj) {
            this.f$0.lambda$new$0((ArrayList) obj);
        }
    });
    private final ArrayList searchResults = new ArrayList();
    public HashSet selected = new HashSet();

    public void clickSelect(UItem uItem, View view) {
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ArrayList arrayList) {
        this.history = arrayList;
        if (this.listView.isAttachedToWindow()) {
            this.listView.adapter.update(true);
        }
    }

    public HistoryFragment(Runnable runnable, Utilities.Callback callback) {
        this.closeToTabs = runnable;
        this.whenClicked = callback;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.fragmentView = super.createView(context);
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhite;
        actionBar.setBackgroundColor(getThemedColor(i));
        this.actionBar.setActionModeColor(Theme.getColor(i));
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        ActionBar actionBar2 = this.actionBar;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        actionBar2.setTitleColor(getThemedColor(i2));
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setItemsColor(getThemedColor(i2), false);
        this.actionBar.setItemsColor(getThemedColor(i2), true);
        this.actionBar.setCastShadows(true);
        this.actionBar.setActionBarMenuOnItemClick(new C74911());
        ActionBarMenu actionBarMenuCreateActionMode = this.actionBar.createActionMode();
        NumberTextView numberTextView = new NumberTextView(actionBarMenuCreateActionMode.getContext());
        this.selectedCount = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedCount.setTypeface(AndroidUtilities.bold());
        this.selectedCount.setTextColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon));
        this.selectedCount.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.web.HistoryFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return HistoryFragment.$r8$lambda$Qov0B6kozvKjSbGfcOAhy0fAaYk(view, motionEvent);
            }
        });
        actionBarMenuCreateActionMode.addView(this.selectedCount, LayoutHelper.createLinear(0, -1, 1.0f, 65, 0, 0, 0));
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2888R.drawable.outline_header_search, getResourceProvider()).setIsSearchField(true).setActionBarMenuItemSearchListener(new C74922());
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2888R.string.Search));
        this.searchItem.setContentDescription(LocaleController.getString(C2888R.string.Search));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        searchField.setTextColor(getThemedColor(i2));
        searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
        searchField.setCursorColor(getThemedColor(i2));
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, null, 1);
        this.emptyView = stickerEmptyView;
        stickerEmptyView.title.setText(LocaleController.getString(TextUtils.isEmpty(this.query) ? C2888R.string.WebNoHistory : C2888R.string.WebNoSearchedHistory));
        this.emptyView.subtitle.setVisibility(8);
        this.emptyView.showProgress(false, false);
        this.emptyView.setAnimateLayoutChange(true);
        ((FrameLayout) this.fragmentView).addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setEmptyView(this.emptyView);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.web.HistoryFragment.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                HistoryFragment historyFragment = HistoryFragment.this;
                if (historyFragment.listView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(historyFragment.fragmentView);
                }
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.web.HistoryFragment$1 */
    class C74911 extends ActionBar.ActionBarMenuOnItemClick {
        C74911() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                if (((BaseFragment) HistoryFragment.this).actionBar.isActionModeShowed()) {
                    ((BaseFragment) HistoryFragment.this).actionBar.hideActionMode();
                    HistoryFragment.this.selected.clear();
                    AndroidUtilities.forEachViews((RecyclerView) HistoryFragment.this.listView, new Consumer() { // from class: org.telegram.ui.web.HistoryFragment$1$$ExternalSyntheticLambda0
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            HistoryFragment.C74911.m20816$r8$lambda$KfK5PG5YTgdWSPyA_5pT_hC880((View) obj);
                        }
                    });
                    return;
                }
                HistoryFragment.this.finishFragment();
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$KfK5-PG5YTgdWSPyA_5pT_hC880, reason: not valid java name */
        public static /* synthetic */ void m20816$r8$lambda$KfK5PG5YTgdWSPyA_5pT_hC880(View view) {
            if (view instanceof AddressBarList.BookmarkView) {
                ((AddressBarList.BookmarkView) view).setChecked(false);
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$Qov0B6kozvKjSbGfcOAhy0fAaYk(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.web.HistoryFragment$2 */
    class C74922 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        private Runnable applySearch = new Runnable() { // from class: org.telegram.ui.web.HistoryFragment$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$$2();
            }
        };

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
        }

        C74922() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            HistoryFragment.this.query = null;
            HistoryFragment.this.searchLoading = false;
            AndroidUtilities.cancelRunOnUIThread(this.applySearch);
            UniversalRecyclerView universalRecyclerView = HistoryFragment.this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                HistoryFragment.this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
            }
            HistoryFragment.this.emptyView.title.setText(LocaleController.getString(TextUtils.isEmpty(HistoryFragment.this.query) ? C2888R.string.WebNoHistory : C2888R.string.WebNoSearchedHistory));
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            boolean z = !TextUtils.isEmpty(HistoryFragment.this.query);
            String string = editText.getText().toString();
            if (!TextUtils.equals(HistoryFragment.this.query, string)) {
                HistoryFragment.this.query = string;
                scheduleSearch();
                HistoryFragment.this.emptyView.title.setText(LocaleController.getString(TextUtils.isEmpty(string) ? C2888R.string.WebNoHistory : C2888R.string.WebNoSearchedHistory));
            }
            UniversalRecyclerView universalRecyclerView = HistoryFragment.this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                if (z != (!TextUtils.isEmpty(string))) {
                    HistoryFragment.this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
                }
            }
        }

        private void scheduleSearch() {
            HistoryFragment.this.searchLoading = true;
            AndroidUtilities.cancelRunOnUIThread(this.applySearch);
            AndroidUtilities.runOnUIThread(this.applySearch, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$2() {
            final ArrayList arrayList = new ArrayList(HistoryFragment.this.history);
            final String str = HistoryFragment.this.query;
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.web.HistoryFragment$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$$1(arrayList, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$1(ArrayList arrayList, String str) {
            WebMetadataCache.WebMetadata webMetadata;
            final ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < arrayList.size(); i++) {
                BrowserHistory.Entry entry = (BrowserHistory.Entry) arrayList.get(i);
                if (matches(entry.url, str) || ((webMetadata = entry.meta) != null && (matches(webMetadata.title, str) || matches(entry.meta.sitename, str)))) {
                    arrayList2.add(entry);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.HistoryFragment$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$$0(arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$0(ArrayList arrayList) {
            HistoryFragment.this.searchResults.clear();
            HistoryFragment.this.searchResults.addAll(arrayList);
            HistoryFragment.this.searchLoading = false;
            UniversalRecyclerView universalRecyclerView = HistoryFragment.this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
        }

        public boolean matches(String str, String str2) {
            if (str == null || str2 == null) {
                return false;
            }
            String lowerCase = str.toLowerCase();
            String lowerCase2 = str2.toLowerCase();
            if (!lowerCase.startsWith(lowerCase2)) {
                if (!lowerCase.contains(" " + lowerCase2)) {
                    if (!lowerCase.contains("." + lowerCase2)) {
                        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
                        String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                        if (!strTranslitSafe.startsWith(strTranslitSafe2)) {
                            if (!strTranslitSafe.contains(" " + strTranslitSafe2)) {
                                if (!strTranslitSafe.contains("." + strTranslitSafe2)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            return true;
        }
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.WebHistory);
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getDefault());
        int i = 0;
        if (TextUtils.isEmpty(this.query)) {
            ArrayList arrayList2 = this.history;
            if (arrayList2 != null) {
                for (int size = arrayList2.size() - 1; size >= 0; size--) {
                    BrowserHistory.Entry entry = (BrowserHistory.Entry) this.history.get(size);
                    calendar.setTimeInMillis(entry.time);
                    int i2 = (calendar.get(1) * XCallback.PRIORITY_HIGHEST) + (calendar.get(2) * 100) + calendar.get(5);
                    if (i != i2) {
                        arrayList.add(UItem.asGraySection(LocaleController.formatDateChat(entry.time / 1000)));
                        i = i2;
                    }
                    arrayList.add(AddressBarList.BookmarkView.Factory.m1348as(entry, this.query));
                }
            }
        } else {
            for (int size2 = this.searchResults.size() - 1; size2 >= 0; size2--) {
                BrowserHistory.Entry entry2 = (BrowserHistory.Entry) this.searchResults.get(size2);
                calendar.setTimeInMillis(entry2.time);
                int i3 = (calendar.get(1) * XCallback.PRIORITY_HIGHEST) + (calendar.get(2) * 100) + calendar.get(5);
                if (i != i3) {
                    arrayList.add(UItem.asGraySection(LocaleController.formatDateChat(entry2.time / 1000)));
                    i = i3;
                }
                arrayList.add(AddressBarList.BookmarkView.Factory.m1348as(entry2, this.query));
            }
            if (this.searchLoading) {
                arrayList.add(UItem.asFlicker(32));
                arrayList.add(UItem.asFlicker(32));
                arrayList.add(UItem.asFlicker(32));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asShadow(null));
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.instanceOf(AddressBarList.BookmarkView.Factory.class)) {
            if (this.actionBar.isActionModeShowed()) {
                clickSelect(uItem, view);
            } else {
                finishFragment();
                this.whenClicked.run((BrowserHistory.Entry) uItem.object2);
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_windowBackgroundWhite)) > 0.721f;
    }
}
