package org.telegram.p029ui;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.boosts.BoostRepository;
import org.telegram.p029ui.Components.Premium.boosts.adapters.SelectorAdapter;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorSearchCell;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorUserCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class MultiContactsSelectorBottomSheet extends BottomSheetWithRecyclerListView {
    private static MultiContactsSelectorBottomSheet instance;
    private final ButtonWithCounterView actionButton;
    private final HashMap allSelectedObjects;
    private final SelectorBtnCell buttonContainer;
    private final List contacts;
    private final List contactsLetters;
    private final Map contactsMap;
    private Boolean filterBots;
    private Boolean filterPremium;
    private final List foundUsers;
    private final SelectorHeaderCell headerView;
    private final List hints;
    private final ArrayList items;
    private int lastRequestId;
    private int listPaddingTop;
    private int maxCount;
    private final ArrayList oldItems;
    private String query;
    private float recipientsBtnExtraSpace;
    private ReplacementSpan recipientsBtnSpaceSpan;
    private final Runnable remoteSearchRunnable;
    private final SelectorSearchCell searchField;
    private final View sectionCell;
    private final HashSet selectedIds;
    private SelectorAdapter selectorAdapter;
    private SelectorListener selectorListener;

    public interface SelectorListener {
        void onUserSelected(List list);
    }

    public static void open(Boolean bool, Boolean bool2, int i, SelectorListener selectorListener) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null && instance == null) {
            MultiContactsSelectorBottomSheet multiContactsSelectorBottomSheet = new MultiContactsSelectorBottomSheet(lastFragment, true, i, bool, bool2, selectorListener);
            multiContactsSelectorBottomSheet.show();
            instance = multiContactsSelectorBottomSheet;
        }
    }

    private boolean filter(TLRPC.User user) {
        if (user == null) {
            return false;
        }
        if (this.filterBots != null && UserObject.isBot(user) != this.filterBots.booleanValue()) {
            return false;
        }
        Boolean bool = this.filterPremium;
        return bool == null || user.premium == bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData(final String str) {
        if (this.lastRequestId >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.lastRequestId, true);
            this.lastRequestId = -1;
        }
        Boolean bool = this.filterBots;
        BoostRepository.searchContactsLocally(str, bool != null && bool.booleanValue(), new Utilities.Callback() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadData$1(str, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadData$1(String str, List list) {
        final HashSet hashSet = new HashSet();
        this.foundUsers.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TLRPC.User user = (TLRPC.User) it.next();
                if (user != null && !hashSet.contains(Long.valueOf(user.f1825id)) && filter(user)) {
                    this.foundUsers.add(user);
                    hashSet.add(Long.valueOf(user.f1825id));
                }
            }
        }
        Boolean bool = this.filterBots;
        if (bool != null && bool.booleanValue()) {
            this.lastRequestId = BoostRepository.searchContacts(str, true, new Utilities.Callback() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$loadData$0(hashSet, (List) obj);
                }
            });
        } else {
            updateList(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadData$0(HashSet hashSet, List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TLRPC.User user = (TLRPC.User) it.next();
                if (user != null && !hashSet.contains(Long.valueOf(user.f1825id)) && filter(user)) {
                    this.foundUsers.add(user);
                    hashSet.add(Long.valueOf(user.f1825id));
                }
            }
        }
        updateList(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createRecipientsBtnSpaceSpan() {
        this.recipientsBtnSpaceSpan = new ReplacementSpan() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.2
            @Override // android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            }

            @Override // android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
                return (int) MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace;
            }
        };
    }

    public MultiContactsSelectorBottomSheet(BaseFragment baseFragment, boolean z, final int i, Boolean bool, Boolean bool2, SelectorListener selectorListener) {
        super(baseFragment, z, false, false, baseFragment.getResourceProvider());
        this.oldItems = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.items = arrayList;
        HashSet hashSet = new HashSet();
        this.selectedIds = hashSet;
        ArrayList arrayList2 = new ArrayList();
        this.contacts = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        this.hints = arrayList3;
        this.foundUsers = new ArrayList();
        HashMap map = new HashMap();
        this.contactsMap = map;
        ArrayList arrayList4 = new ArrayList();
        this.contactsLetters = arrayList4;
        this.allSelectedObjects = new LinkedHashMap();
        this.listPaddingTop = AndroidUtilities.m1124dp(120.0f);
        this.lastRequestId = -1;
        this.remoteSearchRunnable = new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.1
            @Override // java.lang.Runnable
            public void run() {
                String str = MultiContactsSelectorBottomSheet.this.query;
                if (str != null) {
                    MultiContactsSelectorBottomSheet.this.loadData(str);
                }
            }
        };
        this.maxCount = i;
        this.filterBots = bool;
        this.filterPremium = bool2;
        this.selectorListener = selectorListener;
        this.actionBar.setTitle(getTitle());
        SelectorHeaderCell selectorHeaderCell = new SelectorHeaderCell(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.3
            @Override // org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell
            protected int getHeaderHeight() {
                if (getResources().getConfiguration().orientation == 2) {
                    return AndroidUtilities.m1124dp(48.0f);
                }
                return AndroidUtilities.m1124dp(54.0f);
            }
        };
        this.headerView = selectorHeaderCell;
        selectorHeaderCell.setOnCloseClickListener(new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        selectorHeaderCell.setText(getTitle());
        selectorHeaderCell.setCloseImageVisible(false);
        selectorHeaderCell.backDrawable.setRotation(0.0f, false);
        createRecipientsBtnSpaceSpan();
        SelectorSearchCell selectorSearchCell = new SelectorSearchCell(getContext(), this.resourcesProvider, null) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.4
            private boolean isKeyboardVisible;

            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                super.onLayout(z2, i2, i3, i4, i5);
                MultiContactsSelectorBottomSheet.this.listPaddingTop = getMeasuredHeight() + AndroidUtilities.m1124dp(64.0f);
                MultiContactsSelectorBottomSheet.this.selectorAdapter.notifyChangedLast();
                if (this.isKeyboardVisible != MultiContactsSelectorBottomSheet.this.isKeyboardVisible()) {
                    boolean zIsKeyboardVisible = MultiContactsSelectorBottomSheet.this.isKeyboardVisible();
                    this.isKeyboardVisible = zIsKeyboardVisible;
                    if (zIsKeyboardVisible) {
                        MultiContactsSelectorBottomSheet.this.scrollToTop(true);
                    }
                }
            }
        };
        this.searchField = selectorSearchCell;
        int i2 = Theme.key_dialogBackground;
        selectorSearchCell.setBackgroundColor(getThemedColor(i2));
        selectorSearchCell.setOnSearchTextChange(new Utilities.Callback() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.onSearch((String) obj);
            }
        });
        selectorSearchCell.setHintText(LocaleController.getString(C2888R.string.Search), false);
        View view = new View(getContext()) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.5
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.drawColor(MultiContactsSelectorBottomSheet.this.getThemedColor(Theme.key_graySection));
            }
        };
        this.sectionCell = view;
        ViewGroup viewGroup = this.containerView;
        int i3 = this.backgroundPaddingLeft;
        viewGroup.addView(selectorHeaderCell, 0, LayoutHelper.createFrameMarginPx(-1, -2.0f, 55, i3, 0, i3, 0));
        ViewGroup viewGroup2 = this.containerView;
        int i4 = this.backgroundPaddingLeft;
        viewGroup2.addView(selectorSearchCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 55, i4, 0, i4, 0));
        ViewGroup viewGroup3 = this.containerView;
        int i5 = this.backgroundPaddingLeft;
        viewGroup3.addView(view, LayoutHelper.createFrameMarginPx(-1, 1.0f, 55, i5, 0, i5, 0));
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, null);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        selectorBtnCell.setOrientation(1);
        selectorBtnCell.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        selectorBtnCell.setBackgroundColor(Theme.getColor(i2, this.resourcesProvider));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.6
            @Override // org.telegram.p029ui.Stories.recorder.ButtonWithCounterView
            protected float calculateCounterWidth(float f, float f2) {
                boolean z2 = MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace == 0.0f;
                MultiContactsSelectorBottomSheet.this.recipientsBtnExtraSpace = f;
                if (z2) {
                    MultiContactsSelectorBottomSheet.this.createRecipientsBtnSpaceSpan();
                    MultiContactsSelectorBottomSheet.this.updateActionButton(false);
                }
                return f;
            }
        };
        this.actionButton = buttonWithCounterView;
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        selectorBtnCell.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup4 = this.containerView;
        int i6 = this.backgroundPaddingLeft;
        viewGroup4.addView(selectorBtnCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i6, 0, i6, 0));
        this.selectorAdapter.setData(arrayList, this.recyclerListView);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i7 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i7, 0, i7, AndroidUtilities.m1124dp(60.0f));
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.7
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i8) {
                if (i8 == 1) {
                    AndroidUtilities.hideKeyboard(MultiContactsSelectorBottomSheet.this.searchField.getEditText());
                }
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view2, int i8) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view2, i8);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view2, int i8, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view2, i8, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view2, int i8, float f, float f2) {
                this.f$0.lambda$new$4(i, view2, i8, f, f2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet.8
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view2, RecyclerView recyclerView, RecyclerView.State state) {
                super.getItemOffsets(rect, view2, recyclerView, state);
                if (recyclerView.getChildAdapterPosition(view2) == MultiContactsSelectorBottomSheet.this.items.size()) {
                    rect.bottom = MultiContactsSelectorBottomSheet.this.listPaddingTop;
                }
            }
        });
        selectorSearchCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        selectorSearchCell.spansContainer.removeAllSpans(false);
        selectorSearchCell.updateSpans(false, hashSet, new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5();
            }
        }, null);
        selectorHeaderCell.setText(getTitle());
        updateActionButton(false);
        arrayList2.addAll(ContactsController.getInstance(this.currentAccount).contacts);
        map.putAll(ContactsController.getInstance(this.currentAccount).usersSectionsDict);
        arrayList4.addAll(ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray);
        arrayList3.addAll(MediaDataController.getInstance(this.currentAccount).hints);
        Boolean bool3 = this.filterBots;
        if (bool3 != null && bool3.booleanValue()) {
            arrayList3.addAll(MediaDataController.getInstance(this.currentAccount).webapps);
        }
        updateList(false, true);
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        next();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(int i, View view, int i2, float f, float f2) {
        if (view instanceof SelectorUserCell) {
            TLRPC.User user = ((SelectorUserCell) view).getUser();
            long j = user.f1825id;
            if (this.selectedIds.contains(Long.valueOf(j))) {
                this.selectedIds.remove(Long.valueOf(j));
            } else {
                this.selectedIds.add(Long.valueOf(j));
                this.allSelectedObjects.put(Long.valueOf(j), user);
            }
            if (this.selectedIds.size() == i + 1) {
                this.selectedIds.remove(Long.valueOf(j));
                showMaximumUsersToast();
            } else {
                this.searchField.updateSpans(true, this.selectedIds, new Runnable() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3();
                    }
                }, null);
                updateList(true, false);
                clearSearchAfterSelect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        updateList(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        updateList(true, false);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected void onPreDraw(Canvas canvas, int i, float f) {
        this.headerView.setTranslationY(Math.max(i, AndroidUtilities.statusBarHeight + (((this.headerView.getMeasuredHeight() - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(40.0f)) / 2.0f)) + AndroidUtilities.m1124dp(8.0f));
        this.searchField.setTranslationY(this.headerView.getTranslationY() + this.headerView.getMeasuredHeight());
        this.sectionCell.setTranslationY(this.searchField.getTranslationY() + this.searchField.getMeasuredHeight());
        this.recyclerListView.setTranslationY(((this.headerView.getMeasuredHeight() + this.searchField.getMeasuredHeight()) + this.sectionCell.getMeasuredHeight()) - AndroidUtilities.m1124dp(8.0f));
    }

    private void next() {
        if (this.selectedIds.size() == 0 || this.selectorListener == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (TLRPC.User user : this.allSelectedObjects.values()) {
            if (this.selectedIds.contains(Long.valueOf(user.f1825id))) {
                arrayList.add(Long.valueOf(user.f1825id));
            }
        }
        this.selectorListener.onUserSelected(arrayList);
        lambda$new$0();
    }

    public void scrollToTop(boolean z) {
        if (z) {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2, 0.6f);
            linearSmoothScrollerCustom.setTargetPosition(1);
            linearSmoothScrollerCustom.setOffset(AndroidUtilities.m1124dp(36.0f));
            this.recyclerListView.getLayoutManager().startSmoothScroll(linearSmoothScrollerCustom);
            return;
        }
        this.recyclerListView.scrollToPosition(0);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        instance = null;
        AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
    }

    private void showMaximumUsersToast() {
        BulletinFactory.m1245of(this.container, this.resourcesProvider).createSimpleBulletin(C2888R.raw.chats_infotip, LocaleController.formatPluralString("BotMultiContactsSelectorLimit", this.maxCount, new Object[0])).show(true);
        try {
            this.container.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
    }

    private void updateList(boolean z, boolean z2) {
        updateItems(z, z2);
        updateCheckboxes(z);
        updateActionButton(z);
    }

    private void updateCheckboxes(boolean z) {
        int childAdapterPosition;
        int i = -1;
        int i2 = 0;
        for (int i3 = 0; i3 < this.recyclerListView.getChildCount(); i3++) {
            View childAt = this.recyclerListView.getChildAt(i3);
            if ((childAt instanceof SelectorUserCell) && (childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt)) > 0) {
                if (i == -1) {
                    i = childAdapterPosition;
                }
                int i4 = childAdapterPosition - 1;
                if (i4 >= 0 && i4 < this.items.size()) {
                    SelectorAdapter.Item item = (SelectorAdapter.Item) this.items.get(i4);
                    SelectorUserCell selectorUserCell = (SelectorUserCell) childAt;
                    selectorUserCell.setChecked(item.checked, z);
                    TLRPC.Chat chat = item.chat;
                    if (chat != null) {
                        selectorUserCell.setCheckboxAlpha(this.selectorAdapter.getParticipantsCount(chat) > 200 ? 0.3f : 1.0f, z);
                    } else {
                        selectorUserCell.setCheckboxAlpha(1.0f, z);
                    }
                }
                i2 = childAdapterPosition;
            }
        }
        if (z) {
            this.selectorAdapter.notifyItemRangeChanged(0, i);
            SelectorAdapter selectorAdapter = this.selectorAdapter;
            selectorAdapter.notifyItemRangeChanged(i2, selectorAdapter.getItemCount() - i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionButton(boolean z) {
        this.actionButton.setShowZero(false);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (this.selectedIds.size() == 0) {
            spannableStringBuilder.append((CharSequence) "d").setSpan(this.recipientsBtnSpaceSpan, 0, 1, 33);
            Boolean bool = this.filterBots;
            if (bool == null || !bool.booleanValue()) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.ChooseUsers));
            } else {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(this.maxCount > 1 ? C2888R.string.ChooseBots : C2888R.string.ChooseBot));
            }
        } else {
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.GiftPremiumProceedBtn));
        }
        this.actionButton.setCount(this.selectedIds.size(), true);
        this.actionButton.setText(spannableStringBuilder, z, false);
        this.actionButton.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSearch(String str) {
        this.query = str;
        AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
        AndroidUtilities.runOnUIThread(this.remoteSearchRunnable, 100L);
    }

    private void clearSearchAfterSelect() {
        if (isSearching()) {
            this.query = null;
            this.searchField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            AndroidUtilities.cancelRunOnUIThread(this.remoteSearchRunnable);
            updateItems(true, true);
        }
    }

    private void updateSectionCell(boolean z) {
        HashSet hashSet = this.selectedIds;
        if (hashSet == null) {
            return;
        }
        if (hashSet.size() > 0) {
            this.selectorAdapter.setTopSectionClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateSectionCell$6(view);
                }
            });
        } else {
            this.selectorAdapter.setTopSectionClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSectionCell$6(View view) {
        this.selectedIds.clear();
        this.searchField.spansContainer.removeAllSpans(true);
        updateList(true, false);
    }

    private boolean isSearching() {
        return !TextUtils.isEmpty(this.query);
    }

    public void updateItems(boolean z, boolean z2) {
        int iM1124dp;
        int iM1124dp2;
        SelectorAdapter selectorAdapter;
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        if (isSearching()) {
            iM1124dp2 = 0;
            for (TLRPC.User user : this.foundUsers) {
                iM1124dp2 += AndroidUtilities.m1124dp(56.0f);
                this.items.add(SelectorAdapter.Item.asUser(user, this.selectedIds.contains(Long.valueOf(user.f1825id))));
            }
        } else {
            if (this.hints.isEmpty()) {
                iM1124dp = 0;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = this.hints.iterator();
                iM1124dp = 0;
                while (it.hasNext()) {
                    TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(((TLRPC.TL_topPeer) it.next()).peer.user_id));
                    if (!user2.self && !user2.bot && !UserObject.isService(user2.f1825id) && !UserObject.isDeleted(user2) && filter(user2)) {
                        iM1124dp += AndroidUtilities.m1124dp(56.0f);
                        arrayList.add(SelectorAdapter.Item.asUser(user2, this.selectedIds.contains(Long.valueOf(user2.f1825id))));
                    }
                }
                if (!arrayList.isEmpty()) {
                    iM1124dp += AndroidUtilities.m1124dp(32.0f);
                    this.items.add(SelectorAdapter.Item.asTopSection(LocaleController.getString(C2888R.string.GiftPremiumFrequentContacts)));
                    this.items.addAll(arrayList);
                }
            }
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            Boolean bool = this.filterBots;
            if (bool != null && bool.booleanValue()) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList<TLRPC.Dialog> allDialogs = MessagesController.getInstance(this.currentAccount).getAllDialogs();
                int size = allDialogs.size();
                int i = 0;
                while (i < size) {
                    TLRPC.Dialog dialog = allDialogs.get(i);
                    i++;
                    TLRPC.Dialog dialog2 = dialog;
                    if (dialog2.f1666id >= 0) {
                        TLRPC.User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(dialog2.f1666id));
                        if (filter(user3)) {
                            iM1124dp += AndroidUtilities.m1124dp(56.0f);
                            arrayList2.add(SelectorAdapter.Item.asUser(user3, this.selectedIds.contains(Long.valueOf(user3.f1825id))));
                        }
                    }
                }
                if (!arrayList2.isEmpty()) {
                    iM1124dp += AndroidUtilities.m1124dp(32.0f);
                    this.items.add(SelectorAdapter.Item.asTopSection(LocaleController.getString(C2888R.string.SearchApps)));
                    this.items.addAll(arrayList2);
                }
            }
            for (String str : this.contactsLetters) {
                ArrayList arrayList3 = new ArrayList();
                List<TLRPC.TL_contact> list = (List) this.contactsMap.get(str);
                if (list != null) {
                    for (TLRPC.TL_contact tL_contact : list) {
                        if (tL_contact.user_id != clientUserId) {
                            TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_contact.user_id));
                            if (filter(user4)) {
                                iM1124dp += AndroidUtilities.m1124dp(56.0f);
                                arrayList3.add(SelectorAdapter.Item.asUser(user4, this.selectedIds.contains(Long.valueOf(user4.f1825id))));
                            }
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        iM1124dp += AndroidUtilities.m1124dp(32.0f);
                        this.items.add(SelectorAdapter.Item.asLetter(str.toUpperCase()));
                        this.items.addAll(arrayList3);
                    }
                }
            }
            iM1124dp2 = iM1124dp;
        }
        if (this.items.isEmpty()) {
            this.items.add(SelectorAdapter.Item.asNoUsers());
            iM1124dp2 += AndroidUtilities.m1124dp(150.0f);
        }
        this.items.add(SelectorAdapter.Item.asPad(Math.max(0, ((int) (AndroidUtilities.displaySize.y * 0.6f)) - iM1124dp2)));
        updateSectionCell(z);
        if (!z2 || (selectorAdapter = this.selectorAdapter) == null) {
            return;
        }
        if (z) {
            selectorAdapter.setItems(this.oldItems, this.items);
        } else {
            selectorAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateItems(false, true);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        Boolean bool = this.filterBots;
        if (bool == null || !bool.booleanValue()) {
            return LocaleController.getString(C2888R.string.ChooseUsers);
        }
        return LocaleController.getString(this.maxCount > 1 ? C2888R.string.ChooseBots : C2888R.string.ChooseBot);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        SelectorAdapter selectorAdapter = new SelectorAdapter(getContext(), true, this.resourcesProvider);
        this.selectorAdapter = selectorAdapter;
        selectorAdapter.setGreenSelector(true);
        return this.selectorAdapter;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        AndroidUtilities.hideKeyboard(this.searchField.getEditText());
        super.lambda$new$0();
    }
}
