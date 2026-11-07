package org.telegram.ui.Gifts;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ExtendedGridLayoutManager;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.BlurredBackgroundWithFadeDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes7.dex */
public class SelectGiftsBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private UniversalAdapter adapter;
    private final ButtonWithCounterView button;
    private final FrameLayout buttonContainer;
    private final FrameLayout buttonContainerInternal;
    private final int collectionId;
    private final long dialogId;
    private final BlurredBackgroundDrawableViewFactory iBlur3BackgroundFactory;
    private final BlurredBackgroundDrawableViewFactory iBlur3ButtonFactory;
    private final BlurredBackgroundSourceColor iBlur3SourceBackgroundColor;
    private final BlurredBackgroundSourceColor iBlur3SourceButtonColor;
    private Insets insets;
    private ItemOptions lastMenu;
    private final ExtendedGridLayoutManager layoutManager;
    private final StarsController.GiftsList list;
    private final HashSet<Long> selectedGiftIds;

    public SelectGiftsBottomSheet(BaseFragment baseFragment, long j, int i, final Utilities.Callback<ArrayList<TL_stars.SavedStarGift>> callback) {
        super(baseFragment.getParentActivity(), baseFragment, new BottomSheetWithRecyclerListView.Params.Builder().actionBarType(BottomSheetWithRecyclerListView.ActionBarType.SLIDING).edgeToEdge(BottomSheet.EdgeToEdge.V2).resourcesProvider(baseFragment.getResourceProvider()).build());
        this.selectedGiftIds = new HashSet<>();
        this.insets = Insets.NONE;
        Context context = getContext();
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceButtonColor = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        this.iBlur3ButtonFactory = blurredBackgroundDrawableViewFactory;
        BlurredBackgroundSourceColor blurredBackgroundSourceColor2 = new BlurredBackgroundSourceColor();
        this.iBlur3SourceBackgroundColor = blurredBackgroundSourceColor2;
        int i2 = Theme.key_windowBackgroundGray;
        blurredBackgroundSourceColor2.setColor(getThemedColor(i2));
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor2);
        this.iBlur3BackgroundFactory = blurredBackgroundDrawableViewFactory2;
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.dp(12.0f);
        setBackgroundColor(getThemedColor(i2));
        setSlidingActionBar();
        this.dialogId = j;
        this.collectionId = i;
        this.list = new StarsController.GiftsList(this.currentAccount, j);
        this.actionBar.setActionBarMenuOnItemClick(new C50271(this.actionBar.createMenu().addItem(1, C2665R.drawable.ic_ab_other), j));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setText(LocaleController.getString(C2665R.string.Gift2CollectionAddGiftsButton), false);
        buttonWithCounterView.setEnabled(false);
        buttonWithCounterView.setStateListAnimator(null);
        buttonWithCounterView.setRound();
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        int i3 = this.backgroundPaddingLeft;
        frameLayout.setPadding(i3, 0, i3, 0);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.buttonContainerInternal = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        frameLayout2.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, -1.0f));
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(callback, view);
            }
        });
        frameLayout2.setBackground(blurredBackgroundDrawableViewFactory.create(frameLayout2).setColorProvider(BlurredBackgroundProviderImpl.premiumButton(this.resourcesProvider)).setRadius(AndroidUtilities.dp(28.0f)).setPadding(AndroidUtilities.dp(5.0f)));
        ScaleStateListAnimator.apply(frameLayout2, 0.02f, 1.5f);
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 64.0f, 80, 4.0f, 0.0f, 4.0f, 0.0f));
        BlurredBackgroundWithFadeDrawable blurredBackgroundWithFadeDrawable = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory2.create(frameLayout));
        blurredBackgroundWithFadeDrawable.setFadeHeight(AndroidUtilities.dp(40.0f), true);
        blurredBackgroundWithFadeDrawable.setAlpha(Opcodes.REM_INT_LIT8);
        frameLayout.setBackground(blurredBackgroundWithFadeDrawable);
        this.containerView.addView(frameLayout, LayoutHelper.createFrame(-1, -2, 80));
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(getContext(), 3);
        this.layoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet.2
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i4) {
                int i5;
                UniversalAdapter universalAdapter = SelectGiftsBottomSheet.this.adapter;
                SelectGiftsBottomSheet selectGiftsBottomSheet = SelectGiftsBottomSheet.this;
                if (universalAdapter == null) {
                    return selectGiftsBottomSheet.layoutManager.getSpanCount();
                }
                UItem item = selectGiftsBottomSheet.adapter.getItem(i4 - 1);
                return (item == null || (i5 = item.spanCount) == -1) ? SelectGiftsBottomSheet.this.layoutManager.getSpanCount() : i5;
            }
        });
        this.recyclerListView.setPadding(this.backgroundPaddingLeft + AndroidUtilities.dp(9.0f), 0, this.backgroundPaddingLeft + AndroidUtilities.dp(9.0f), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setSelectorType(9);
        this.recyclerListView.setSelectorDrawableColor(0);
        this.recyclerListView.setLayoutManager(extendedGridLayoutManager);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                this.f$0.lambda$new$1(view, i4);
            }
        });
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                if (SelectGiftsBottomSheet.this.isLoadingVisible()) {
                    SelectGiftsBottomSheet.this.list.load();
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.adapter.update(true);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        checkUi_insets();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Gifts.SelectGiftsBottomSheet$1 */
    public class C50271 extends ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ long val$dialogId;
        final /* synthetic */ ActionBarMenuItem val$other;

        public C50271(ActionBarMenuItem actionBarMenuItem, long j) {
            this.val$other = actionBarMenuItem;
            this.val$dialogId = j;
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            final boolean zCanUserDoAction;
            final ActionBarMenuSubItem actionBarMenuSubItem;
            final ActionBarMenuSubItem actionBarMenuSubItem2;
            if (i != 1) {
                if (i == -1) {
                    SelectGiftsBottomSheet.this.lambda$new$0();
                    return;
                }
                return;
            }
            if (SelectGiftsBottomSheet.this.lastMenu != null) {
                SelectGiftsBottomSheet.this.lastMenu.dismiss();
            }
            SelectGiftsBottomSheet selectGiftsBottomSheet = SelectGiftsBottomSheet.this;
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(selectGiftsBottomSheet.container, ((BottomSheet) selectGiftsBottomSheet).resourcesProvider, this.val$other);
            selectGiftsBottomSheet.lastMenu = itemOptionsMakeOptions;
            if (this.val$dialogId == UserConfig.getInstance(((BottomSheet) SelectGiftsBottomSheet.this).currentAccount).getClientUserId()) {
                zCanUserDoAction = true;
            } else {
                zCanUserDoAction = this.val$dialogId >= 0 ? false : ChatObject.canUserDoAction(MessagesController.getInstance(((BottomSheet) SelectGiftsBottomSheet.this).currentAccount).getChat(Long.valueOf(-this.val$dialogId)), 5);
            }
            final ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsMakeOptions.add();
            itemOptionsMakeOptions.addGap();
            final ActionBarMenuSubItem actionBarMenuSubItemAddChecked = itemOptionsMakeOptions.addChecked();
            actionBarMenuSubItemAddChecked.setText(LocaleController.getString(C2665R.string.Gift2FilterUnlimited));
            final ActionBarMenuSubItem actionBarMenuSubItemAddChecked2 = itemOptionsMakeOptions.addChecked();
            actionBarMenuSubItemAddChecked2.setText(LocaleController.getString(C2665R.string.Gift2FilterLimited));
            final ActionBarMenuSubItem actionBarMenuSubItemAddChecked3 = itemOptionsMakeOptions.addChecked();
            actionBarMenuSubItemAddChecked3.setText(LocaleController.getString(C2665R.string.Gift2FilterUpgradable));
            final ActionBarMenuSubItem actionBarMenuSubItemAddChecked4 = itemOptionsMakeOptions.addChecked();
            actionBarMenuSubItemAddChecked4.setText(LocaleController.getString(C2665R.string.Gift2FilterUnique));
            if (zCanUserDoAction) {
                itemOptionsMakeOptions.addGap();
                ActionBarMenuSubItem actionBarMenuSubItemAddChecked5 = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked5.setText(LocaleController.getString(C2665R.string.Gift2FilterDisplayed));
                ActionBarMenuSubItem actionBarMenuSubItemAddChecked6 = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked6.setText(LocaleController.getString(C2665R.string.Gift2FilterHidden));
                actionBarMenuSubItem = actionBarMenuSubItemAddChecked5;
                actionBarMenuSubItem2 = actionBarMenuSubItemAddChecked6;
            } else {
                actionBarMenuSubItem = null;
                actionBarMenuSubItem2 = null;
            }
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onItemClick$0(actionBarMenuSubItemAdd, actionBarMenuSubItemAddChecked, actionBarMenuSubItemAddChecked2, actionBarMenuSubItemAddChecked3, actionBarMenuSubItemAddChecked4, zCanUserDoAction, actionBarMenuSubItem, actionBarMenuSubItem2);
                }
            };
            runnable.run();
            if (actionBarMenuSubItemAdd != null) {
                actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet$1$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onItemClick$1(runnable, view);
                    }
                });
            }
            ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked, SelectGiftsBottomSheet.this.list, runnable, 1);
            ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked2, SelectGiftsBottomSheet.this.list, runnable, 2);
            ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked3, SelectGiftsBottomSheet.this.list, runnable, 4);
            ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked4, SelectGiftsBottomSheet.this.list, runnable, 8);
            if (zCanUserDoAction) {
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItem, SelectGiftsBottomSheet.this.list, runnable, 256);
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItem2, SelectGiftsBottomSheet.this.list, runnable, 512);
            }
            itemOptionsMakeOptions.setOnTopOfScrim().setDismissWithButtons(false).setDimAlpha(0).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, ActionBarMenuSubItem actionBarMenuSubItem3, ActionBarMenuSubItem actionBarMenuSubItem4, ActionBarMenuSubItem actionBarMenuSubItem5, boolean z, ActionBarMenuSubItem actionBarMenuSubItem6, ActionBarMenuSubItem actionBarMenuSubItem7) {
            if (actionBarMenuSubItem != null) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(SelectGiftsBottomSheet.this.list.sort_by_date ? C2665R.string.Gift2FilterSortByValue : C2665R.string.Gift2FilterSortByDate), SelectGiftsBottomSheet.this.list.sort_by_date ? C2665R.drawable.menu_sort_value : C2665R.drawable.menu_sort_date);
            }
            actionBarMenuSubItem2.setChecked(SelectGiftsBottomSheet.this.list.isInclude_unlimited());
            actionBarMenuSubItem3.setChecked(SelectGiftsBottomSheet.this.list.isInclude_limited());
            actionBarMenuSubItem4.setChecked(SelectGiftsBottomSheet.this.list.isInclude_upgradable());
            actionBarMenuSubItem5.setChecked(SelectGiftsBottomSheet.this.list.isInclude_unique());
            if (z) {
                actionBarMenuSubItem6.setChecked(SelectGiftsBottomSheet.this.list.isInclude_displayed());
                actionBarMenuSubItem7.setChecked(SelectGiftsBottomSheet.this.list.isInclude_hidden());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(Runnable runnable, View view) {
            SelectGiftsBottomSheet.this.list.sort_by_date = !SelectGiftsBottomSheet.this.list.sort_by_date;
            runnable.run();
            SelectGiftsBottomSheet.this.list.invalidate(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Utilities.Callback callback, View view) {
        TL_stars.SavedStarGift savedStarGift;
        if (this.selectedGiftIds.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Long> it = this.selectedGiftIds.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            ArrayList<TL_stars.SavedStarGift> arrayList2 = this.list.gifts;
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    savedStarGift = null;
                    break;
                }
                TL_stars.SavedStarGift savedStarGift2 = arrayList2.get(i);
                i++;
                savedStarGift = savedStarGift2;
                int i2 = savedStarGift.msg_id;
                if ((i2 != 0 && i2 == jLongValue) || savedStarGift.saved_id == jLongValue) {
                    break;
                }
            }
            if (savedStarGift != null) {
                arrayList.add(savedStarGift);
            }
        }
        callback.run(arrayList);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        UItem item;
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter == null || (item = universalAdapter.getItem(i - 1)) == null) {
            return;
        }
        Object obj = item.object;
        if (obj instanceof TL_stars.SavedStarGift) {
            TL_stars.SavedStarGift savedStarGift = (TL_stars.SavedStarGift) obj;
            int i2 = savedStarGift.msg_id;
            long j = i2 == 0 ? savedStarGift.saved_id : i2;
            boolean zContains = this.selectedGiftIds.contains(Long.valueOf(j));
            HashSet<Long> hashSet = this.selectedGiftIds;
            if (zContains) {
                hashSet.remove(Long.valueOf(j));
                ((GiftSheet.GiftCell) view).setChecked(false, true);
                item.checked = false;
            } else {
                hashSet.add(Long.valueOf(j));
                ((GiftSheet.GiftCell) view).setChecked(true, true);
                item.checked = true;
            }
            this.button.setEnabled(this.selectedGiftIds.size() > 0);
            this.button.setCount(this.selectedGiftIds.size(), true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i != NotificationCenter.starUserGiftsLoaded || (universalAdapter = this.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
        if (isLoadingVisible()) {
            this.list.load();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoadingVisible() {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView != null && recyclerListView.isAttachedToWindow()) {
            for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
                if (this.recyclerListView.getChildAt(i) instanceof FlickerLoadingView) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
        super.lambda$new$0();
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return LocaleController.getString(C2665R.string.Gift2CollectionAddGiftsTitle);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.SelectGiftsBottomSheet$$ExternalSyntheticLambda0
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
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        if (this.list == null) {
            return;
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(16.0f)));
        StarsController.GiftsList giftsList = this.list;
        if (giftsList.loading && giftsList.gifts.isEmpty()) {
            arrayList.add(UItem.asFlicker(1, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(2, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(3, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(4, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(5, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(6, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(7, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(8, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(9, 34).setSpanCount(1));
        } else {
            ArrayList<TL_stars.SavedStarGift> arrayList2 = this.list.gifts;
            int size = arrayList2.size();
            int i = 0;
            int i2 = 3;
            int i3 = 0;
            while (i3 < size) {
                TL_stars.SavedStarGift savedStarGift = arrayList2.get(i3);
                i3++;
                TL_stars.SavedStarGift savedStarGift2 = savedStarGift;
                if (!savedStarGift2.collection_id.contains(Integer.valueOf(this.collectionId))) {
                    UItem uItemAsStarGift = GiftSheet.GiftCell.Factory.asStarGift(0, savedStarGift2, true, true, false);
                    HashSet<Long> hashSet = this.selectedGiftIds;
                    int i4 = savedStarGift2.msg_id;
                    arrayList.add(uItemAsStarGift.setChecked(hashSet.contains(Long.valueOf(i4 == 0 ? savedStarGift2.saved_id : i4))).setSpanCount(1));
                    i2--;
                    if (i2 == 0) {
                        i2 = 3;
                    }
                }
            }
            StarsController.GiftsList giftsList2 = this.list;
            if (giftsList2.loading || !giftsList2.endReached) {
                while (true) {
                    if (i >= (i2 <= 0 ? 3 : i2)) {
                        break;
                    }
                    i++;
                    arrayList.add(UItem.asFlicker(i, 34).setSpanCount(1));
                }
            }
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(68.0f)));
    }

    private void checkUi_insets() {
        this.recyclerListView.setPadding(this.insets.left + this.backgroundPaddingLeft + AndroidUtilities.dp(9.0f), 0, this.insets.right + this.backgroundPaddingLeft + AndroidUtilities.dp(9.0f), this.insets.bottom);
        FrameLayout frameLayout = this.buttonContainer;
        Insets insets = this.insets;
        int i = insets.left;
        int i2 = this.backgroundPaddingLeft;
        frameLayout.setPadding(i + i2, 0, insets.right + i2, insets.bottom);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public WindowInsetsCompat onApplyWindowInsetsToRoot(View view, WindowInsetsCompat windowInsetsCompat) {
        this.insets = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false);
        checkUi_insets();
        return WindowInsetsCompat.CONSUMED;
    }
}
