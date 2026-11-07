package org.telegram.ui.web;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.NumberTextView;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.web.AddressBarList;
import org.telegram.ui.web.BookmarksFragment;
import org.telegram.ui.web.WebMetadataCache;

/* JADX INFO: loaded from: classes8.dex */
public class BookmarksFragment extends UniversalFragment {
    private final Runnable closeToTabs;
    private ActionBarMenuItem gotoItem;
    private String query;
    private ActionBarMenuItem searchItem;
    public AddressBarList.BookmarksList searchList;
    private NumberTextView selectedCount;
    private final Utilities.Callback<String> whenClicked;
    public AddressBarList.BookmarksList list = new AddressBarList.BookmarksList(this.currentAccount, new Runnable() { // from class: org.telegram.ui.web.BookmarksFragment$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateWithOffset();
        }
    });
    public HashSet<Integer> selected = new HashSet<>();
    private final HashSet<String> addedUrls = new HashSet<>();

    public boolean isSelected(MessageObject messageObject) {
        return messageObject != null && this.selected.contains(Integer.valueOf(messageObject.getId()));
    }

    public void setSelected(MessageObject messageObject, boolean z) {
        if (messageObject == null) {
            return;
        }
        HashSet<Integer> hashSet = this.selected;
        if (z) {
            hashSet.add(Integer.valueOf(messageObject.getId()));
        } else {
            hashSet.remove(Integer.valueOf(messageObject.getId()));
        }
    }

    public void deleteSelectedMessages() {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        final HashSet hashSet2 = new HashSet();
        Iterator<Integer> it = this.selected.iterator();
        while (true) {
            MessageObject messageObject = null;
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = it.next().intValue();
            ArrayList<MessageObject> arrayList2 = this.list.links;
            int size = arrayList2.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                MessageObject messageObject2 = arrayList2.get(i2);
                i2++;
                MessageObject messageObject3 = messageObject2;
                if (messageObject3 != null && messageObject3.getId() == iIntValue) {
                    messageObject = messageObject3;
                    break;
                }
            }
            AddressBarList.BookmarksList bookmarksList = this.searchList;
            if (bookmarksList != null && messageObject == null) {
                ArrayList<MessageObject> arrayList3 = bookmarksList.links;
                int size2 = arrayList3.size();
                while (true) {
                    if (i >= size2) {
                        break;
                    }
                    MessageObject messageObject4 = arrayList3.get(i);
                    i++;
                    MessageObject messageObject5 = messageObject4;
                    if (messageObject5 != null && messageObject5.getId() == iIntValue) {
                        messageObject = messageObject5;
                        break;
                    }
                }
            }
            if (messageObject != null) {
                arrayList.add(messageObject);
                hashSet2.add(Integer.valueOf(messageObject.getId()));
                hashSet.add(AddressBarList.getLink(messageObject));
            }
        }
        new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.formatPluralString("DeleteOptionsTitle", hashSet2.size(), new Object[0])).setMessage(LocaleController.getString(hashSet2.size() == 1 ? "AreYouSureUnsaveSingleMessage" : "AreYouSureUnsaveFewMessages")).setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.web.BookmarksFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                this.f$0.lambda$deleteSelectedMessages$0(hashSet2, alertDialog, i3);
            }
        }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteSelectedMessages$0(HashSet hashSet, AlertDialog alertDialog, int i) {
        MessagesController.getInstance(this.currentAccount).deleteMessages(new ArrayList<>(hashSet), null, null, UserConfig.getInstance(this.currentAccount).getClientUserId(), 0, true, 0);
        this.list.delete(new ArrayList<>(hashSet));
        AddressBarList.BookmarksList bookmarksList = this.searchList;
        if (bookmarksList != null) {
            bookmarksList.delete(new ArrayList<>(hashSet));
        }
        this.selected.clear();
        this.actionBar.hideActionMode();
        this.listView.adapter.update(true);
    }

    public void gotoMessage() {
        if (this.selected.size() != 1) {
            return;
        }
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final int iIntValue = this.selected.iterator().next().intValue();
        finishFragment();
        Runnable runnable = this.closeToTabs;
        if (runnable != null) {
            runnable.run();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.BookmarksFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BookmarksFragment.$r8$lambda$9pLNWt4i1abWYTli34IBZry2f6c(clientUserId, iIntValue);
            }
        }, 80L);
    }

    public static /* synthetic */ void $r8$lambda$9pLNWt4i1abWYTli34IBZry2f6c(long j, int i) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j, i));
        }
    }

    public BookmarksFragment(Runnable runnable, Utilities.Callback<String> callback) {
        this.closeToTabs = runnable;
        this.whenClicked = callback;
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.fragmentView = super.createView(context);
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhite;
        actionBar.setBackgroundColor(getThemedColor(i));
        this.actionBar.setActionModeColor(Theme.getColor(i));
        this.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        ActionBar actionBar2 = this.actionBar;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        actionBar2.setTitleColor(getThemedColor(i2));
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setItemsColor(getThemedColor(i2), false);
        this.actionBar.setItemsColor(getThemedColor(i2), true);
        this.actionBar.setCastShadows(true);
        this.actionBar.setActionBarMenuOnItemClick(new C67001());
        ActionBarMenu actionBarMenuCreateActionMode = this.actionBar.createActionMode();
        NumberTextView numberTextView = new NumberTextView(actionBarMenuCreateActionMode.getContext());
        this.selectedCount = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedCount.setTypeface(AndroidUtilities.bold());
        this.selectedCount.setTextColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon));
        this.selectedCount.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.web.BookmarksFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return BookmarksFragment.m24309$r8$lambda$0Ef0Z7zGzug8jwvT6D_zo0aJ0(view, motionEvent);
            }
        });
        actionBarMenuCreateActionMode.addView(this.selectedCount, LayoutHelper.createLinear(0, -1, 1.0f, 65, 0, 0, 0));
        this.gotoItem = actionBarMenuCreateActionMode.addItemWithWidth(C2807R.id.menu_link, C2807R.drawable.msg_message, AndroidUtilities.dp(54.0f), LocaleController.getString(C2807R.string.AccDescrGoToMessage));
        actionBarMenuCreateActionMode.addItemWithWidth(C2807R.id.menu_delete, C2807R.drawable.msg_delete, AndroidUtilities.dp(54.0f), LocaleController.getString(C2807R.string.Delete));
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2807R.drawable.outline_header_search, getResourceProvider()).setIsSearchField(true).setActionBarMenuItemSearchListener(new C67012());
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2807R.string.Search));
        this.searchItem.setContentDescription(LocaleController.getString(C2807R.string.Search));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        searchField.setTextColor(getThemedColor(i2));
        searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
        searchField.setCursorColor(getThemedColor(i2));
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.web.BookmarksFragment.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                if (!BookmarksFragment.this.listView.canScrollVertically(1)) {
                    boolean zIsEmpty = TextUtils.isEmpty(BookmarksFragment.this.query);
                    BookmarksFragment bookmarksFragment = BookmarksFragment.this;
                    if (zIsEmpty) {
                        bookmarksFragment.list.load();
                    } else {
                        AddressBarList.BookmarksList bookmarksList = bookmarksFragment.searchList;
                        if (bookmarksList != null) {
                            bookmarksList.load();
                        }
                    }
                }
                BookmarksFragment bookmarksFragment2 = BookmarksFragment.this;
                if (bookmarksFragment2.listView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(bookmarksFragment2.fragmentView);
                }
            }
        });
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, null, 1);
        stickerEmptyView.title.setText(LocaleController.getString(C2807R.string.WebNoBookmarks));
        stickerEmptyView.subtitle.setVisibility(8);
        stickerEmptyView.showProgress(false, false);
        stickerEmptyView.setAnimateLayoutChange(true);
        ((FrameLayout) this.fragmentView).addView(stickerEmptyView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setEmptyView(stickerEmptyView);
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.web.BookmarksFragment$1 */
    public class C67001 extends ActionBar.ActionBarMenuOnItemClick {
        public C67001() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                boolean zIsActionModeShowed = ((BaseFragment) BookmarksFragment.this).actionBar.isActionModeShowed();
                BookmarksFragment bookmarksFragment = BookmarksFragment.this;
                if (zIsActionModeShowed) {
                    ((BaseFragment) bookmarksFragment).actionBar.hideActionMode();
                    BookmarksFragment.this.selected.clear();
                    AndroidUtilities.forEachViews((RecyclerView) BookmarksFragment.this.listView, (Utilities.Callback<View>) new Utilities.Callback() { // from class: org.telegram.ui.web.BookmarksFragment$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            BookmarksFragment.C67001.$r8$lambda$jRavSu1nuJIA_feq_rh8X4U3_FE((View) obj);
                        }
                    });
                    return;
                }
                bookmarksFragment.finishFragment();
                return;
            }
            if (i == C2807R.id.menu_delete) {
                BookmarksFragment.this.deleteSelectedMessages();
            } else if (i == C2807R.id.menu_link) {
                BookmarksFragment.this.gotoMessage();
            }
        }

        public static /* synthetic */ void $r8$lambda$jRavSu1nuJIA_feq_rh8X4U3_FE(View view) {
            if (view instanceof AddressBarList.BookmarkView) {
                ((AddressBarList.BookmarkView) view).setChecked(false);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$0Ef0Z-7zGzug8jwvT6D_zo0-aJ0, reason: not valid java name */
    public static /* synthetic */ boolean m24309$r8$lambda$0Ef0Z7zGzug8jwvT6D_zo0aJ0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.web.BookmarksFragment$2 */
    public class C67012 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        private Runnable applySearch = new Runnable() { // from class: org.telegram.ui.web.BookmarksFragment$2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$$0();
            }
        };

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
        }

        public C67012() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            BookmarksFragment.this.query = null;
            AndroidUtilities.cancelRunOnUIThread(this.applySearch);
            AddressBarList.BookmarksList bookmarksList = BookmarksFragment.this.searchList;
            if (bookmarksList != null) {
                bookmarksList.detach();
                BookmarksFragment.this.searchList = null;
            }
            UniversalRecyclerView universalRecyclerView = BookmarksFragment.this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                BookmarksFragment.this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            boolean z = !TextUtils.isEmpty(BookmarksFragment.this.query);
            String string = editText.getText().toString();
            if (!TextUtils.equals(BookmarksFragment.this.query, string)) {
                BookmarksFragment.this.query = string;
                AddressBarList.BookmarksList bookmarksList = BookmarksFragment.this.searchList;
                if (bookmarksList != null) {
                    bookmarksList.detach();
                }
                BookmarksFragment bookmarksFragment = BookmarksFragment.this;
                int i = ((BaseFragment) bookmarksFragment).currentAccount;
                final BookmarksFragment bookmarksFragment2 = BookmarksFragment.this;
                bookmarksFragment.searchList = new AddressBarList.BookmarksList(i, string, new Runnable() { // from class: org.telegram.ui.web.BookmarksFragment$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        bookmarksFragment2.updateWithOffset();
                    }
                });
                BookmarksFragment.this.searchList.attach();
                scheduleSearch();
            }
            UniversalRecyclerView universalRecyclerView = BookmarksFragment.this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                if (z != (!TextUtils.isEmpty(string))) {
                    BookmarksFragment.this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
                }
            }
        }

        private void scheduleSearch() {
            AndroidUtilities.cancelRunOnUIThread(this.applySearch);
            AndroidUtilities.runOnUIThread(this.applySearch, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$0() {
            AddressBarList.BookmarksList bookmarksList = BookmarksFragment.this.searchList;
            if (bookmarksList != null) {
                bookmarksList.load();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.list.attach();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        this.list.detach();
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2807R.string.WebBookmarks);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        this.addedUrls.clear();
        boolean zIsEmpty = TextUtils.isEmpty(this.query);
        AddressBarList.BookmarksList bookmarksList = this.list;
        if (zIsEmpty) {
            ArrayList<MessageObject> arrayList2 = bookmarksList.links;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                MessageObject messageObject = arrayList2.get(i);
                i++;
                MessageObject messageObject2 = messageObject;
                String link = AddressBarList.getLink(messageObject2);
                if (!TextUtils.isEmpty(link) && !link.startsWith("#") && !link.startsWith("$") && !link.startsWith("@")) {
                    this.addedUrls.add(link);
                    arrayList.add(AddressBarList.BookmarkView.Factory.as(messageObject2, false).setChecked(isSelected(messageObject2)));
                }
            }
            if (!this.list.endReached) {
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
            }
        } else {
            ArrayList<MessageObject> arrayList3 = bookmarksList.links;
            int size2 = arrayList3.size();
            int i2 = 0;
            while (i2 < size2) {
                MessageObject messageObject3 = arrayList3.get(i2);
                i2++;
                MessageObject messageObject4 = messageObject3;
                String link2 = AddressBarList.getLink(messageObject4);
                if (!TextUtils.isEmpty(link2) && !link2.startsWith("#") && !link2.startsWith("$") && !link2.startsWith("@")) {
                    this.addedUrls.add(link2);
                    String hostAuthority = AndroidUtilities.getHostAuthority(link2, true);
                    WebMetadataCache.WebMetadata webMetadata = WebMetadataCache.getInstance().get(hostAuthority);
                    TLRPC.WebPage webPage = (messageObject4 == null || (message = messageObject4.messageOwner) == null || (messageMedia = message.media) == null) ? null : messageMedia.webpage;
                    String str = (webPage == null || TextUtils.isEmpty(webPage.site_name)) ? (webMetadata == null || TextUtils.isEmpty(webMetadata.sitename)) ? null : webMetadata.sitename : webPage.site_name;
                    String str2 = (webPage == null || TextUtils.isEmpty(webPage.title)) ? null : webPage.title;
                    if (matches(hostAuthority, this.query) || matches(str, this.query) || matches(str2, this.query)) {
                        arrayList.add(AddressBarList.BookmarkView.Factory.as(messageObject4, false, this.query).setChecked(isSelected(messageObject4)));
                    }
                }
            }
            ArrayList<MessageObject> arrayList4 = this.searchList.links;
            int size3 = arrayList4.size();
            int i3 = 0;
            while (i3 < size3) {
                MessageObject messageObject5 = arrayList4.get(i3);
                i3++;
                MessageObject messageObject6 = messageObject5;
                String link3 = AddressBarList.getLink(messageObject6);
                if (!TextUtils.isEmpty(link3) && !link3.startsWith("#") && !link3.startsWith("$") && !link3.startsWith("@")) {
                    this.addedUrls.add(link3);
                    arrayList.add(AddressBarList.BookmarkView.Factory.as(messageObject6, false, this.query).setChecked(isSelected(messageObject6)));
                }
            }
            if (!this.searchList.endReached) {
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
                arrayList.add(UItem.asFlicker(arrayList.size(), 32));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asShadow(null));
    }

    public static boolean matches(String str, String str2) {
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

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.instanceOf(AddressBarList.BookmarkView.Factory.class)) {
            if (this.actionBar.isActionModeShowed()) {
                clickSelect(uItem, view);
            } else {
                finishFragment();
                this.whenClicked.run(AddressBarList.getLink((MessageObject) uItem.object2));
            }
        }
    }

    public void clickSelect(UItem uItem, View view) {
        AddressBarList.BookmarkView bookmarkView = (AddressBarList.BookmarkView) view;
        MessageObject messageObject = (MessageObject) uItem.object2;
        if (isSelected(messageObject)) {
            setSelected(messageObject, false);
            bookmarkView.setChecked(false);
        } else {
            setSelected(messageObject, true);
            bookmarkView.setChecked(true);
        }
        this.selectedCount.setNumber(this.selected.size(), true);
        boolean zIsEmpty = this.selected.isEmpty();
        ActionBar actionBar = this.actionBar;
        if (zIsEmpty) {
            actionBar.hideActionMode();
        } else {
            actionBar.showActionMode();
        }
        AndroidUtilities.updateViewShow(this.gotoItem, this.selected.size() == 1, true, true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        if (!uItem.instanceOf(AddressBarList.BookmarkView.Factory.class)) {
            return false;
        }
        clickSelect(uItem, view);
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_windowBackgroundWhite)) > 0.721f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWithOffset() {
        int top;
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= this.listView.getChildCount()) {
                top = 0;
                break;
            }
            View childAt = this.listView.getChildAt(i2);
            int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0) {
                top = childAt.getTop();
                i = childAdapterPosition;
                break;
            } else {
                i2++;
                i = childAdapterPosition;
            }
        }
        this.listView.adapter.update(true);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (i >= 0) {
            universalRecyclerView.layoutManager.scrollToPositionWithOffset(i, top);
        } else {
            universalRecyclerView.layoutManager.scrollToPositionWithOffset(0, 0);
        }
    }
}
