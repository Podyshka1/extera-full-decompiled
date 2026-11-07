package org.telegram.ui.Gifts;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.CallLogActivity$$ExternalSyntheticLambda6;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProviderThemed;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PeerColorActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.ProfileGiftsView;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ProfileGiftsContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final HashMap<Pair<Integer, Long>, CharSequence> cachedLastEmojis = new HashMap<>();
    private CharSequence addCollectionTabText;
    private final CharSequence addGiftsText;
    private final BoolAnimator animatorBottomButtonVisibility;
    private int backgroundColor;
    private final FrameLayout bulletinContainer;
    private final ButtonWithCounterView button;
    private final FrameLayout buttonContainer;
    private int buttonContainerHeightDp;
    private int buttonContainerOffset;
    private final CheckBox2 checkbox;
    private final LinearLayout checkboxLayout;
    private int checkboxRequestId;
    private final TextView checkboxTextView;
    public final StarsController.GiftsCollections collections;
    private final int currentAccount;
    public ItemOptions currentMenu;
    private final long dialogId;
    private int externalPaddingTop;
    private final BaseFragment fragment;
    public IBlur3Capture iBlur3Capture;
    private ViewGroup iBlur3CaptureParent;
    private final StarsController.GiftsList list;
    private int pendingScrollToCollectionId;
    private boolean reorderingCollections;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Runnable sendCollectionsOrder;
    private final CharSequence sendGiftsToFriendsText;
    private final ViewPagerFixed.TabsView tabsView;
    private final ViewPagerFixed viewPager;
    private int visibleHeight;

    public boolean canFilter() {
        return true;
    }

    public abstract int processColor(int i);

    public abstract void updatedReordering(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public void fillTabs(boolean z) {
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed == null || this.tabsView == null) {
            return;
        }
        viewPagerFixed.fillTabs(z);
        checkScrollToCollection();
    }

    public void setPaddingTop(int i) {
        if (this.externalPaddingTop != i) {
            this.externalPaddingTop = i;
            for (View view : this.viewPager.getViewPages()) {
                if (view instanceof Page) {
                    final Page page = (Page) view;
                    int paddingTop = page.listView.getPaddingTop();
                    page.listView.setPadding(AndroidUtilities.dp(9.0f), this.externalPaddingTop, AndroidUtilities.dp(9.0f), AndroidUtilities.dp(86.0f));
                    final int paddingTop2 = paddingTop - page.listView.getPaddingTop();
                    AndroidUtilities.doOnLayout(page.listView, new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            page.listView.scrollBy(0, paddingTop2);
                        }
                    });
                }
            }
            updateTabsY();
            updateButton();
        }
    }

    public static class Page extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private final int currentAccount;
        private FrameLayout emptyView1;
        private TextView emptyView1Button;
        private LinearLayout emptyView1Layout;
        private TextView emptyView1Title;
        private FrameLayout emptyView2;
        private ButtonWithCounterView emptyView2Button;
        private LinearLayout emptyView2Layout;
        private TextView emptyView2Subtitle;
        private TextView emptyView2Title;
        private boolean hasTabs;
        public IBlur3Capture iBlur3Capture;
        public boolean isCollection;
        public StarsController.GiftsList list;
        private final UniversalRecyclerView listView;
        private final ProfileGiftsContainer parent;
        private final ItemTouchHelper reorder;
        private boolean reordering;
        private final Theme.ResourcesProvider resourcesProvider;
        private int visibleHeight;

        public void update(boolean z) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView == null || universalRecyclerView.adapter == null) {
                return;
            }
            boolean zCanScrollVertically = universalRecyclerView.canScrollVertically(-1);
            this.listView.adapter.update(z);
            if (zCanScrollVertically) {
                return;
            }
            this.listView.scrollToPosition(0);
        }

        public Page(final ProfileGiftsContainer profileGiftsContainer, int i, Theme.ResourcesProvider resourcesProvider) {
            super(profileGiftsContainer.getContext());
            this.visibleHeight = AndroidUtilities.displaySize.y;
            Context context = profileGiftsContainer.getContext();
            this.parent = profileGiftsContainer;
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i, 0, false, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
                }
            }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback5Return
                public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    return Boolean.valueOf(this.f$0.onItemLongPress((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
                }
            }, resourcesProvider, 3, 1) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.1
                @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                    super.onLayout(z, i2, i3, i4, i5);
                    profileGiftsContainer.updateTabsY();
                }
            };
            this.listView = universalRecyclerView;
            universalRecyclerView.adapter.setApplyBackground(false);
            universalRecyclerView.setSelectorType(9);
            universalRecyclerView.setSelectorDrawableColor(0);
            universalRecyclerView.setPadding(AndroidUtilities.dp(9.0f), profileGiftsContainer.externalPaddingTop, AndroidUtilities.dp(9.0f), AndroidUtilities.dp(86.0f));
            universalRecyclerView.setClipToPadding(false);
            universalRecyclerView.setClipChildren(false);
            addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1, 119));
            universalRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    if (Page.this.isAttachedToWindow() && (!Page.this.listView.canScrollVertically(1) || Page.this.isLoadingVisible())) {
                        Page.this.list.load();
                    }
                    profileGiftsContainer.updateTabsY();
                }
            });
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.3
                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    super.onMoveAnimationUpdate(viewHolder);
                    profileGiftsContainer.updateTabsY();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onAddAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    super.onAddAnimationUpdate(viewHolder);
                    profileGiftsContainer.updateTabsY();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    super.onChangeAnimationUpdate(viewHolder);
                    profileGiftsContainer.updateTabsY();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onRemoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    super.onRemoveAnimationUpdate(viewHolder);
                    profileGiftsContainer.updateTabsY();
                }
            };
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            universalRecyclerView.setItemAnimator(defaultItemAnimator);
            ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.4
                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void onSwiped(RecyclerView.ViewHolder viewHolder, int i2) {
                }

                private TL_stars.SavedStarGift getSavedGift(RecyclerView.ViewHolder viewHolder) {
                    View view = viewHolder.itemView;
                    if (view instanceof GiftSheet.GiftCell) {
                        return ((GiftSheet.GiftCell) view).getSavedGift();
                    }
                    return null;
                }

                private boolean canReorder(TL_stars.SavedStarGift savedStarGift) {
                    if (!Page.this.reordering) {
                        return false;
                    }
                    if (Page.this.list == profileGiftsContainer.list) {
                        return savedStarGift != null && savedStarGift.pinned_to_top;
                    }
                    return true;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public boolean isLongPressDragEnabled() {
                    return Page.this.reordering;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public boolean isItemViewSwipeEnabled() {
                    return Page.this.reordering;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                    if (canReorder(getSavedGift(viewHolder))) {
                        return ItemTouchHelper.Callback.makeMovementFlags(15, 0);
                    }
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                    ProfileGiftsView profileGiftsView;
                    Page page = Page.this;
                    if (page.list == null || !page.reordering || !canReorder(getSavedGift(viewHolder)) || !canReorder(getSavedGift(viewHolder2))) {
                        return false;
                    }
                    int adapterPosition = viewHolder.getAdapterPosition();
                    int adapterPosition2 = viewHolder2.getAdapterPosition();
                    Page page2 = Page.this;
                    if (page2.isCollection) {
                        page2.list.reorder(adapterPosition, adapterPosition2);
                        profileGiftsContainer.collections.updateIcon(Page.this.list.collectionId);
                    } else {
                        page2.list.reorderPinned(adapterPosition, adapterPosition2);
                    }
                    Page.this.listView.adapter.notifyItemMoved(adapterPosition, adapterPosition2);
                    Page.this.listView.adapter.updateWithoutNotify();
                    if (Page.this.isCollection) {
                        profileGiftsContainer.fillTabs(true);
                    }
                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if ((safeLastFragment instanceof ProfileActivity) && (profileGiftsView = ((ProfileActivity) safeLastFragment).giftsView) != null) {
                        profileGiftsView.update();
                    }
                    return true;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i2) {
                    Page page = Page.this;
                    if (i2 == 0) {
                        StarsController.GiftsList giftsList = page.list;
                        if (giftsList != null) {
                            giftsList.reorderDone();
                        }
                    } else {
                        if (page.listView != null) {
                            Page.this.listView.cancelClickRunnables(false);
                        }
                        if (viewHolder != null) {
                            viewHolder.itemView.setPressed(true);
                        }
                    }
                    super.onSelectedChanged(viewHolder, i2);
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                    super.clearView(recyclerView, viewHolder);
                    viewHolder.itemView.setPressed(false);
                }
            });
            this.reorder = itemTouchHelper;
            itemTouchHelper.attachToRecyclerView(universalRecyclerView);
            updateEmptyView();
        }

        public void bind(boolean z, StarsController.GiftsList giftsList) {
            this.isCollection = z;
            this.list = giftsList;
            if (giftsList != null) {
                giftsList.load();
            }
            update(false);
            LinearLayout linearLayout = this.emptyView2Layout;
            if (linearLayout != null) {
                linearLayout.setVisibility(this.parent.collections.isMine() ? 0 : 8);
            }
        }

        public void setVisibleHeight(int i) {
            this.visibleHeight = i;
            float fClamp01 = Utilities.clamp01(AndroidUtilities.ilerp(i, AndroidUtilities.dp(150.0f), AndroidUtilities.dp(220.0f)));
            float fLerp = AndroidUtilities.lerp(0.6f, 1.0f, fClamp01);
            LinearLayout linearLayout = this.emptyView1Layout;
            if (linearLayout != null) {
                linearLayout.setAlpha(fClamp01);
                this.emptyView1Layout.setScaleX(fLerp);
                this.emptyView1Layout.setScaleY(fLerp);
            }
            FrameLayout frameLayout = this.emptyView1;
            if (frameLayout != null) {
                frameLayout.setTranslationY((-(getMeasuredHeight() - this.visibleHeight)) / 2.0f);
            }
            LinearLayout linearLayout2 = this.emptyView2Layout;
            if (linearLayout2 != null) {
                linearLayout2.setAlpha(fClamp01);
                this.emptyView2Layout.setScaleX(fLerp);
                this.emptyView2Layout.setScaleY(fLerp);
            }
            FrameLayout frameLayout2 = this.emptyView2;
            if (frameLayout2 != null) {
                frameLayout2.setTranslationY((-(getMeasuredHeight() - this.visibleHeight)) / 2.0f);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            setVisibleHeight(this.visibleHeight);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.starUserGiftsLoaded && objArr[1] == this.list) {
                update(true);
                if (this.list == null || !isAttachedToWindow()) {
                    return;
                }
                if (!this.listView.canScrollVertically(1) || isLoadingVisible()) {
                    this.list.load();
                }
            }
        }

        private void updateEmptyView() {
            FrameLayout frameLayout = this.emptyView1;
            if (frameLayout != null) {
                removeView(frameLayout);
            }
            FrameLayout frameLayout2 = this.emptyView2;
            if (frameLayout2 != null) {
                removeView(frameLayout2);
            }
            if (this.parent.list == this.list) {
                this.emptyView2 = null;
                this.emptyView2Title = null;
                this.emptyView2Subtitle = null;
                this.emptyView2Button = null;
                this.emptyView2Layout = null;
                this.emptyView1 = new FrameLayout(getContext());
                LinearLayout linearLayout = new LinearLayout(getContext());
                this.emptyView1Layout = linearLayout;
                linearLayout.setOrientation(1);
                this.emptyView1.addView(this.emptyView1Layout, LayoutHelper.createFrame(-2, -2, 17));
                BackupImageView backupImageView = new BackupImageView(getContext());
                backupImageView.setImageDrawable(new RLottieDrawable(C2665R.raw.utyan_empty, AndroidUtilities.dp(120.0f), AndroidUtilities.dp(120.0f)));
                this.emptyView1Layout.addView(backupImageView, LayoutHelper.createLinear(120, 120, 1, 0, 0, 0, 0));
                TextView textView = new TextView(getContext());
                this.emptyView1Title = textView;
                textView.setTextSize(1, 17.0f);
                this.emptyView1Title.setTypeface(AndroidUtilities.bold());
                this.emptyView1Title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
                this.emptyView1Title.setText(LocaleController.getString(C2665R.string.ProfileGiftsNotFoundTitle));
                this.emptyView1Layout.addView(this.emptyView1Title, LayoutHelper.createLinear(-2, -2, 1, 0, 12, 0, 0));
                TextView textView2 = new TextView(getContext());
                this.emptyView1Button = textView2;
                textView2.setTextSize(1, 14.0f);
                TextView textView3 = this.emptyView1Button;
                int i = Theme.key_featuredStickers_addButton;
                textView3.setTextColor(Theme.getColor(i, this.resourcesProvider));
                this.emptyView1Button.setText(LocaleController.getString(C2665R.string.ProfileGiftsNotFoundButton));
                this.emptyView1Button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateEmptyView$0(view);
                    }
                });
                this.emptyView1Button.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(4.0f));
                this.emptyView1Button.setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.1f), 4, 4));
                ScaleStateListAnimator.apply(this.emptyView1Button);
                this.emptyView1Layout.addView(this.emptyView1Button, LayoutHelper.createLinear(-2, -2, 1, 0, 8, 0, 0));
                addView(this.emptyView1, LayoutHelper.createFrame(-1, -1, 119));
                this.listView.setEmptyView(this.emptyView1);
                return;
            }
            this.emptyView1 = null;
            this.emptyView1Title = null;
            this.emptyView1Button = null;
            this.emptyView1Layout = null;
            this.emptyView2 = new FrameLayout(getContext());
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            this.emptyView2Layout = linearLayout2;
            linearLayout2.setOrientation(1);
            this.emptyView2.addView(this.emptyView2Layout, LayoutHelper.createFrame(-2, -2, 17));
            TextView textView4 = new TextView(getContext());
            this.emptyView2Title = textView4;
            textView4.setTextSize(1, 20.0f);
            this.emptyView2Title.setTypeface(AndroidUtilities.bold());
            this.emptyView2Title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.emptyView2Title.setText(LocaleController.getString(C2665R.string.Gift2CollectionEmptyTitle));
            this.emptyView2Layout.addView(this.emptyView2Title, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 0));
            TextView textView5 = new TextView(getContext());
            this.emptyView2Subtitle = textView5;
            textView5.setTextSize(1, 14.0f);
            this.emptyView2Subtitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
            this.emptyView2Subtitle.setText(LocaleController.getString(C2665R.string.Gift2CollectionEmptyText));
            this.emptyView2Layout.addView(this.emptyView2Subtitle, LayoutHelper.createLinear(-2, -2, 1, 0, 10, 0, 0));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourcesProvider);
            this.emptyView2Button = buttonWithCounterView;
            buttonWithCounterView.setText(LocaleController.getString(C2665R.string.Gift2CollectionEmptyButton), false);
            this.emptyView2Layout.addView(this.emptyView2Button, LayoutHelper.createLinear(200, 44, 1, 0, 19, 0, 12));
            this.emptyView2Button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateEmptyView$1(view);
                }
            });
            addView(this.emptyView2, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, -12.0f, 0.0f, 0.0f));
            this.listView.setEmptyView(this.emptyView2);
            LinearLayout linearLayout3 = this.emptyView2Layout;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(this.parent.collections.isMine() ? 0 : 8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateEmptyView$0(View view) {
            StarsController.GiftsList giftsList = this.list;
            if (giftsList != null) {
                giftsList.resetFilters();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateEmptyView$1(View view) {
            this.parent.addGifts();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isLoadingVisible() {
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                if (this.listView.getChildAt(i) instanceof FlickerLoadingView) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReordering(boolean z) {
            UniversalRecyclerView universalRecyclerView;
            if (this.reordering == z) {
                return;
            }
            this.reordering = z;
            ProfileGiftsContainer profileGiftsContainer = this.parent;
            profileGiftsContainer.updatedReordering(profileGiftsContainer.isReordering());
            int i = 0;
            while (true) {
                int childCount = this.listView.getChildCount();
                universalRecyclerView = this.listView;
                if (i >= childCount) {
                    break;
                }
                View childAt = universalRecyclerView.getChildAt(i);
                if (childAt instanceof GiftSheet.GiftCell) {
                    ((GiftSheet.GiftCell) childAt).setReordering(z, true);
                }
                i++;
            }
            UniversalAdapter universalAdapter = universalRecyclerView.adapter;
            if (universalAdapter != null) {
                universalAdapter.updateWithoutNotify();
            }
            if (z) {
                final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment instanceof ProfileActivity) {
                    ((ProfileActivity) safeLastFragment).scrollToSharedMedia(false);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((ProfileActivity) safeLastFragment).scrollToSharedMedia(true);
                        }
                    });
                }
            }
        }

        public void resetReordering() {
            if (this.reordering) {
                StarsController.GiftsList giftsList = this.list;
                if (giftsList != null) {
                    giftsList.sendPinnedOrder();
                }
                setReordering(false);
            }
        }

        public void setHasTabs(boolean z) {
            if (this.hasTabs == z) {
                return;
            }
            this.hasTabs = z;
            boolean zCanScrollVertically = this.listView.canScrollVertically(-1);
            this.listView.adapter.update(true);
            if (!zCanScrollVertically) {
                this.listView.scrollToPosition(0);
            }
            this.parent.updateTabsY();
        }

        public float getTabsHeight() {
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
                if (childAt instanceof GiftSheet.GiftCell) {
                    if (childAdapterPosition == 0) {
                        return Math.max(0.0f, childAt.getY());
                    }
                } else if (childAdapterPosition == 0) {
                    return Math.max(0.0f, childAt.getY() + (childAt.getHeight() * childAt.getAlpha()));
                }
            }
            return 0.0f;
        }

        public boolean isReordering() {
            return this.reordering;
        }

        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            int i;
            StarsController.GiftsList giftsList = this.list;
            if (giftsList == null) {
                return;
            }
            if (giftsList.hasFilters() && this.list.gifts.size() <= 0) {
                StarsController.GiftsList giftsList2 = this.list;
                if (giftsList2.endReached && !giftsList2.loading) {
                    return;
                }
            }
            StarsController.GiftsList giftsList3 = this.list;
            final int iMax = Math.max(1, (giftsList3 == null || (i = giftsList3.totalCount) == 0) ? 3 : Math.min(3, i));
            StarsController.GiftsList giftsList4 = this.list;
            if (giftsList4 != null) {
                ArrayList<TL_stars.SavedStarGift> arrayList2 = giftsList4.gifts;
                int size = arrayList2.size();
                int i2 = 3;
                int i3 = 0;
                while (i3 < size) {
                    TL_stars.SavedStarGift savedStarGift = arrayList2.get(i3);
                    i3++;
                    TL_stars.SavedStarGift savedStarGift2 = savedStarGift;
                    arrayList.add(GiftSheet.GiftCell.Factory.asStarGift(0, savedStarGift2, true, false, this.isCollection).setReordering(this.reordering && (this.list != this.parent.list || savedStarGift2.pinned_to_top)));
                    i2--;
                    if (i2 == 0) {
                        i2 = 3;
                    }
                }
                StarsController.GiftsList giftsList5 = this.list;
                if (giftsList5.loading || !giftsList5.endReached) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= (i2 <= 0 ? 3 : i2)) {
                            break;
                        }
                        i4++;
                        arrayList.add(UItem.asFlicker(i4, 34).setSpanCount(1));
                    }
                }
            }
            if (this.parent.list == this.list) {
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(20.0f)));
                if (this.parent.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    arrayList.add(TextFactory.asText(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), 17, 14.0f, LocaleController.getString(C2665R.string.ProfileGiftsInfo), false, AndroidUtilities.dp(24.0f), 0));
                }
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(82.0f)));
            } else if (!arrayList.isEmpty()) {
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(82.0f)));
            }
            if (!arrayList.isEmpty()) {
                arrayList.add(0, UItem.asSpace(AndroidUtilities.dp(this.hasTabs ? 42.0f : 12.0f)));
            }
            if (this.listView.getSpanCount() != iMax) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fillItems$3(iMax);
                    }
                });
            }
            ProfileGiftsContainer profileGiftsContainer = this.parent;
            if (profileGiftsContainer != null) {
                profileGiftsContainer.updateTabsY();
                final ProfileGiftsContainer profileGiftsContainer2 = this.parent;
                Objects.requireNonNull(profileGiftsContainer2);
                profileGiftsContainer2.post(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        profileGiftsContainer2.updateTabsY();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fillItems$3(int i) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.setSpanCount(i);
            }
        }

        public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
            if (this.list == null) {
                return;
            }
            Object obj = uItem.object;
            if (obj instanceof TL_stars.SavedStarGift) {
                final TL_stars.SavedStarGift savedStarGift = (TL_stars.SavedStarGift) obj;
                if (this.reordering) {
                    if (!this.isCollection && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
                        boolean z = savedStarGift.pinned_to_top;
                        boolean z2 = !z;
                        if (!z && savedStarGift.unsaved) {
                            savedStarGift.unsaved = false;
                            TL_stars.saveStarGift savestargift = new TL_stars.saveStarGift();
                            savestargift.stargift = this.list.getInput(savedStarGift);
                            savestargift.unsave = savedStarGift.unsaved;
                            ConnectionsManager.getInstance(this.currentAccount).sendRequest(savestargift, null, 64);
                        }
                        if (this.list.togglePinned(savedStarGift, z2, true)) {
                            BulletinFactory.of(this.parent.fragment).createSimpleBulletin(C2665R.raw.chats_infotip, LocaleController.formatPluralStringComma("GiftsPinLimit", MessagesController.getInstance(this.currentAccount).stargiftsPinnedToTopLimit)).show();
                        }
                        if (z) {
                            return;
                        }
                        this.listView.scrollToPosition(0);
                        return;
                    }
                    return;
                }
                new StarGiftSheet(getContext(), this.currentAccount, this.parent.dialogId, this.resourcesProvider).setOnGiftUpdatedListener(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onItemClick$4();
                    }
                }).setOnBoughtGift(new StarGiftSheet.BoughtGiftCallback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda5
                    @Override // org.telegram.ui.Stars.StarGiftSheet.BoughtGiftCallback
                    public final void onBoughtGift(TL_stars.TL_starGiftUnique tL_starGiftUnique, long j, boolean z3) {
                        this.f$0.lambda$onItemClick$5(savedStarGift, tL_starGiftUnique, j, z3);
                    }
                }).set(savedStarGift, this.list).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4() {
            update(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$5(TL_stars.SavedStarGift savedStarGift, TL_stars.TL_starGiftUnique tL_starGiftUnique, long j, boolean z) {
            this.list.gifts.remove(savedStarGift);
            update(true);
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            ProfileGiftsContainer profileGiftsContainer = this.parent;
            if (j == clientUserId) {
                BulletinFactory.of(profileGiftsContainer.fragment).createSimpleBulletin(tL_starGiftUnique.getDocument(), LocaleController.getString(C2665R.string.BoughtResoldGiftTitle), LocaleController.formatString(C2665R.string.BoughtResoldGiftText, tL_starGiftUnique.title + " #" + LocaleController.formatNumber(tL_starGiftUnique.num, ','))).hideAfterBottomSheet(false).show();
            } else {
                BulletinFactory.of(profileGiftsContainer.fragment).createSimpleBulletin(tL_starGiftUnique.getDocument(), LocaleController.getString(C2665R.string.BoughtResoldGiftToTitle), LocaleController.formatString(C2665R.string.BoughtResoldGiftToText, DialogObject.getShortName(this.currentAccount, j))).hideAfterBottomSheet(false).show();
            }
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity != null) {
                launchActivity.getFireworksOverlay().start(true);
            }
        }

        public boolean onItemLongPress(UItem uItem, final View view, int i, float f, float f2) {
            boolean z;
            boolean z2;
            final String str;
            float f3;
            int i2 = 0;
            if (this.list == null) {
                return false;
            }
            if (view instanceof GiftSheet.GiftCell) {
                Object obj = uItem.object;
                if (obj instanceof TL_stars.SavedStarGift) {
                    final GiftSheet.GiftCell giftCell = (GiftSheet.GiftCell) view;
                    final TL_stars.SavedStarGift savedStarGift = (TL_stars.SavedStarGift) obj;
                    final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.parent.fragment, view, true);
                    ProfileGiftsContainer profileGiftsContainer = this.parent;
                    profileGiftsContainer.currentMenu = itemOptionsMakeOptions;
                    if (profileGiftsContainer.collections.isMine()) {
                        if (!this.isCollection) {
                            this.parent.collections.getCollections().size();
                        }
                        final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
                        itemOptionsMakeSwipeback.add(C2665R.drawable.ic_ab_back, LocaleController.getString(C2665R.string.Back), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                itemOptionsMakeOptions.closeSwipeback();
                            }
                        });
                        itemOptionsMakeSwipeback.addGap();
                        ScrollView scrollView = new ScrollView(getContext()) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.5
                            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
                            public void onMeasure(int i3, int i4) {
                                super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(260.0f), View.MeasureSpec.getSize(i4)), View.MeasureSpec.getMode(i4)));
                            }
                        };
                        LinearLayout linearLayout = new LinearLayout(getContext());
                        scrollView.addView(linearLayout);
                        linearLayout.setOrientation(1);
                        itemOptionsMakeSwipeback.addView(scrollView, LayoutHelper.createLinear(-1, -2));
                        if (this.parent.collections.getCollections().size() + 1 < MessagesController.getInstance(this.currentAccount).config.stargiftsCollectionsLimit.get()) {
                            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), false, false, this.resourcesProvider);
                            actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
                            int i3 = Theme.key_actionBarDefaultSubmenuItem;
                            f3 = 18.0f;
                            actionBarMenuSubItem.setColors(Theme.getColor(i3, this.resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, this.resourcesProvider));
                            actionBarMenuSubItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.12f));
                            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2665R.string.Gift2NewCollection), C2665R.drawable.menu_folder_add);
                            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda11
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    this.f$0.lambda$onItemLongPress$9(itemOptionsMakeOptions, savedStarGift, view2);
                                }
                            });
                            linearLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
                        } else {
                            f3 = 18.0f;
                        }
                        ArrayList<TL_stars.TL_starGiftCollection> collections = this.parent.collections.getCollections();
                        int size = collections.size();
                        int i4 = 0;
                        while (i4 < size) {
                            int i5 = i4 + 1;
                            final TL_stars.TL_starGiftCollection tL_starGiftCollection = collections.get(i4);
                            final boolean zContains = this.parent.collections.getListById(tL_starGiftCollection.collection_id).contains(savedStarGift);
                            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), 2, false, false, this.resourcesProvider);
                            actionBarMenuSubItem2.setChecked(zContains);
                            actionBarMenuSubItem2.setPadding(AndroidUtilities.dp(f3), i2, AndroidUtilities.dp(f3), i2);
                            int i6 = Theme.key_actionBarDefaultSubmenuItem;
                            actionBarMenuSubItem2.setColors(Theme.getColor(i6, this.resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, this.resourcesProvider));
                            actionBarMenuSubItem2.setSelectorColor(Theme.multAlpha(Theme.getColor(i6, this.resourcesProvider), 0.12f));
                            if (tL_starGiftCollection.icon != null) {
                                AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(3, this.currentAccount, tL_starGiftCollection.icon) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.6
                                    @Override // org.telegram.ui.Components.AnimatedEmojiDrawable, android.graphics.drawable.Drawable
                                    public int getIntrinsicHeight() {
                                        return AndroidUtilities.dp(24.0f);
                                    }

                                    @Override // org.telegram.ui.Components.AnimatedEmojiDrawable, android.graphics.drawable.Drawable
                                    public int getIntrinsicWidth() {
                                        return AndroidUtilities.dp(24.0f);
                                    }
                                };
                                animatedEmojiDrawable.addViewListening(actionBarMenuSubItem2.getImageView());
                                actionBarMenuSubItem2.setTextAndIcon(tL_starGiftCollection.title, 0, animatedEmojiDrawable);
                            } else {
                                actionBarMenuSubItem2.setTextAndIcon(tL_starGiftCollection.title, C2665R.drawable.msg_folders);
                            }
                            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda12
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    this.f$0.lambda$onItemLongPress$10(zContains, tL_starGiftCollection, savedStarGift, itemOptionsMakeOptions, view2);
                                }
                            });
                            linearLayout.addView(actionBarMenuSubItem2, LayoutHelper.createLinear(-1, -2));
                            i4 = i5;
                            i2 = 0;
                        }
                        itemOptionsMakeOptions.add(C2665R.drawable.msg_addfolder, LocaleController.getString(C2665R.string.Gift2AddToCollection), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                itemOptionsMakeOptions.openSwipeback(itemOptionsMakeSwipeback);
                            }
                        });
                        itemOptionsMakeOptions.addGap();
                    }
                    boolean z3 = savedStarGift.gift instanceof TL_stars.TL_starGiftUnique;
                    ProfileGiftsContainer profileGiftsContainer2 = this.parent;
                    if (z3) {
                        if (profileGiftsContainer2.canReorder() && !this.isCollection && (!savedStarGift.unsaved || !savedStarGift.pinned_to_top)) {
                            boolean z4 = savedStarGift.pinned_to_top;
                            itemOptionsMakeOptions.add(z4 ? C2665R.drawable.msg_unpin : C2665R.drawable.msg_pin, LocaleController.getString(z4 ? C2665R.string.Gift2Unpin : C2665R.string.Gift2Pin), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda14
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemLongPress$13(savedStarGift, giftCell, view);
                                }
                            });
                            itemOptionsMakeOptions.addIf(savedStarGift.pinned_to_top, C2665R.drawable.tabs_reorder, LocaleController.getString(C2665R.string.Gift2Reorder), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda15
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemLongPress$14();
                                }
                            });
                        } else if (this.parent.canReorder() && this.isCollection) {
                            itemOptionsMakeOptions.add(C2665R.drawable.tabs_reorder, LocaleController.getString(C2665R.string.Gift2Reorder), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda16
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemLongPress$15();
                                }
                            });
                        }
                        TL_stars.StarGift starGift = savedStarGift.gift;
                        TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift;
                        if (starGift.slug != null) {
                            str = MessagesController.getInstance(this.currentAccount).linkPrefix + "/nft/" + savedStarGift.gift.slug;
                        } else {
                            str = null;
                        }
                        if (StarGiftSheet.isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id))) {
                            boolean zIsWorn = StarGiftSheet.isWorn(this.currentAccount, tL_starGiftUnique);
                            itemOptionsMakeOptions.add(zIsWorn ? C2665R.drawable.menu_takeoff : C2665R.drawable.menu_wear, LocaleController.getString(zIsWorn ? C2665R.string.Gift2Unwear : C2665R.string.Gift2Wear), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda17
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onItemLongPress$16(savedStarGift);
                                }
                            });
                        }
                        itemOptionsMakeOptions.addIf(str != null, C2665R.drawable.msg_link2, LocaleController.getString(C2665R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda18
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$17(str);
                            }
                        });
                        itemOptionsMakeOptions.addIf(str != null, C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.ShareFile), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda19
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$18(savedStarGift);
                            }
                        });
                    } else if (profileGiftsContainer2.canReorder() && this.isCollection) {
                        itemOptionsMakeOptions.add(C2665R.drawable.tabs_reorder, LocaleController.getString(C2665R.string.Gift2Reorder), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$19();
                            }
                        });
                    }
                    if (StarGiftSheet.isMineWithActions(this.currentAccount, this.parent.dialogId)) {
                        boolean z5 = savedStarGift.unsaved;
                        itemOptionsMakeOptions.add(z5 ? C2665R.drawable.msg_message : C2665R.drawable.menu_hide_gift, LocaleController.getString(z5 ? C2665R.string.Gift2ShowGift : C2665R.string.Gift2HideGift), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$20(savedStarGift, giftCell);
                            }
                        });
                    }
                    TL_stars.StarGift starGift2 = savedStarGift.gift;
                    if (starGift2 instanceof TL_stars.TL_starGiftUnique) {
                        itemOptionsMakeOptions.addIf(DialogObject.getPeerDialogId(((TL_stars.TL_starGiftUnique) starGift2).owner_id) == UserConfig.getInstance(this.currentAccount).getClientUserId(), C2665R.drawable.menu_transfer, LocaleController.getString(C2665R.string.Gift2TransferOption), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda9
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$21(savedStarGift);
                            }
                        });
                    }
                    if (this.parent.collections.isMine() && this.isCollection) {
                        z = true;
                        z2 = false;
                        itemOptionsMakeOptions.add(C2665R.drawable.msg_removefolder, (CharSequence) LocaleController.getString(C2665R.string.Gift2RemoveFromCollection), true, new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda10
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongPress$22(savedStarGift, itemOptionsMakeOptions);
                            }
                        }).makeMultiline(false).cutTextInFancyHalf();
                    } else {
                        z = true;
                        z2 = false;
                    }
                    if (itemOptionsMakeOptions.getItemsCount() <= 0) {
                        return z2;
                    }
                    itemOptionsMakeOptions.setGravity(5);
                    itemOptionsMakeOptions.setBlur(z);
                    itemOptionsMakeOptions.allowMoveScrim();
                    Point point = AndroidUtilities.displaySize;
                    int iMin = Math.min(point.x, point.y);
                    itemOptionsMakeOptions.animateToSize(iMin - AndroidUtilities.dp(32.0f), (int) (iMin * 0.6f));
                    itemOptionsMakeOptions.hideScrimUnder();
                    itemOptionsMakeOptions.forceBottom(true);
                    itemOptionsMakeOptions.show();
                    giftCell.imageView.getImageReceiver().startAnimation(true);
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$9(ItemOptions itemOptions, final TL_stars.SavedStarGift savedStarGift, View view) {
            itemOptions.dismiss();
            this.parent.openEnterNameAlert(null, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onItemLongPress$8(savedStarGift, (String) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$8(final TL_stars.SavedStarGift savedStarGift, String str) {
            this.parent.collections.createCollection(str, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda26
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onItemLongPress$7(savedStarGift, (TL_stars.TL_starGiftCollection) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$7(TL_stars.SavedStarGift savedStarGift, TL_stars.TL_starGiftCollection tL_starGiftCollection) {
            this.parent.collections.addGift(tL_starGiftCollection.collection_id, savedStarGift, true);
            this.parent.fillTabs(true);
            ViewPagerFixed.TabsView tabsView = this.parent.tabsView;
            int i = tL_starGiftCollection.collection_id;
            tabsView.scrollToTab(i, this.parent.collections.indexOf(i) + 1);
            if (this.parent.fragment instanceof ProfileActivity) {
                ((ProfileActivity) this.parent.fragment).scrollToSharedMedia(true);
            }
            this.parent.updateTabsShown(true);
            BulletinFactory.of(this.parent.fragment).createSimpleMultiBulletin(savedStarGift.gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.Gift2AddedToCollection, StarGiftSheet.getGiftName(savedStarGift.gift), tL_starGiftCollection.title))).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$10(boolean z, TL_stars.TL_starGiftCollection tL_starGiftCollection, TL_stars.SavedStarGift savedStarGift, ItemOptions itemOptions, View view) {
            ProfileGiftsContainer profileGiftsContainer = this.parent;
            if (!z) {
                profileGiftsContainer.collections.addGift(tL_starGiftCollection.collection_id, savedStarGift, true);
                BulletinFactory.of(this.parent.fragment).createSimpleMultiBulletin(savedStarGift.gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.Gift2AddedToCollection, StarGiftSheet.getGiftName(savedStarGift.gift), tL_starGiftCollection.title))).show();
            } else {
                profileGiftsContainer.collections.removeGift(tL_starGiftCollection.collection_id, savedStarGift);
                BulletinFactory.of(this.parent.fragment).createSimpleMultiBulletin(savedStarGift.gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.Gift2RemovedFromCollection, StarGiftSheet.getGiftName(savedStarGift.gift), tL_starGiftCollection.title))).show();
            }
            itemOptions.dismiss();
            this.parent.updateTabsShown(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$13(TL_stars.SavedStarGift savedStarGift, GiftSheet.GiftCell giftCell, final View view) {
            if (savedStarGift.unsaved) {
                savedStarGift.unsaved = false;
                giftCell.setStarsGift(savedStarGift, true, false);
                TL_stars.saveStarGift savestargift = new TL_stars.saveStarGift();
                savestargift.stargift = this.list.getInput(savedStarGift);
                savestargift.unsave = savedStarGift.unsaved;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(savestargift, null, 64);
            }
            boolean z = savedStarGift.pinned_to_top;
            final boolean z2 = !z;
            if (this.list.togglePinned(savedStarGift, z2, false)) {
                new UnpinSheet(getContext(), this.parent.dialogId, savedStarGift, this.resourcesProvider, new Utilities.Callback0Return() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$Page$$ExternalSyntheticLambda25
                    @Override // org.telegram.messenger.Utilities.Callback0Return
                    public final Object run() {
                        return this.f$0.lambda$onItemLongPress$12(view, z2);
                    }
                }).show();
                return;
            }
            ProfileGiftsContainer profileGiftsContainer = this.parent;
            if (!z) {
                BulletinFactory.of(profileGiftsContainer.fragment).createSimpleBulletin(C2665R.raw.ic_pin, LocaleController.getString(C2665R.string.Gift2PinnedTitle), LocaleController.getString(C2665R.string.Gift2PinnedSubtitle)).show();
            } else {
                BulletinFactory.of(profileGiftsContainer.fragment).createSimpleBulletin(C2665R.raw.ic_unpin, LocaleController.getString(C2665R.string.Gift2Unpinned)).show();
            }
            ((GiftSheet.GiftCell) view).setPinned(z2, true);
            this.listView.scrollToPosition(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ BulletinFactory lambda$onItemLongPress$12(View view, boolean z) {
            ((GiftSheet.GiftCell) view).setPinned(z, true);
            this.listView.scrollToPosition(0);
            return BulletinFactory.of(this.parent.fragment);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$14() {
            setReordering(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$15() {
            setReordering(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$16(TL_stars.SavedStarGift savedStarGift) {
            new StarGiftSheet(getContext(), this.currentAccount, this.parent.dialogId, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.7
                @Override // org.telegram.ui.Stars.StarGiftSheet, org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
                public BulletinFactory getBulletinFactory() {
                    return BulletinFactory.of(Page.this.parent.fragment);
                }
            }.set(savedStarGift, (StarsController.IGiftsList) null).toggleWear(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$17(String str) {
            AndroidUtilities.addToClipboard(str);
            BulletinFactory.of(this.parent.fragment).createCopyLinkBulletin(false).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$18(TL_stars.SavedStarGift savedStarGift) {
            new StarGiftSheet(getContext(), this.currentAccount, this.parent.dialogId, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.8
                @Override // org.telegram.ui.Stars.StarGiftSheet, org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
                public BulletinFactory getBulletinFactory() {
                    return BulletinFactory.of(Page.this.parent.fragment);
                }
            }.set(savedStarGift, (StarsController.IGiftsList) null).onSharePressed(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$19() {
            setReordering(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$20(TL_stars.SavedStarGift savedStarGift, GiftSheet.GiftCell giftCell) {
            if (!this.isCollection && savedStarGift.pinned_to_top && !savedStarGift.unsaved) {
                giftCell.setPinned(false, true);
                this.list.togglePinned(savedStarGift, false, false);
            }
            savedStarGift.unsaved = !savedStarGift.unsaved;
            giftCell.setStarsGift(savedStarGift, true, this.isCollection);
            this.parent.collections.updateGiftsUnsaved(savedStarGift, savedStarGift.unsaved);
            TL_stars.saveStarGift savestargift = new TL_stars.saveStarGift();
            savestargift.stargift = this.list.getInput(savedStarGift);
            savestargift.unsave = savedStarGift.unsaved;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(savestargift, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$21(TL_stars.SavedStarGift savedStarGift) {
            new StarGiftSheet(getContext(), this.currentAccount, this.parent.dialogId, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.Page.9
                @Override // org.telegram.ui.Stars.StarGiftSheet, org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
                public BulletinFactory getBulletinFactory() {
                    return BulletinFactory.of(Page.this.parent.fragment);
                }
            }.set(savedStarGift, (StarsController.IGiftsList) null).openTransfer();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongPress$22(TL_stars.SavedStarGift savedStarGift, ItemOptions itemOptions) {
            this.parent.collections.removeGift(this.list.collectionId, savedStarGift);
            itemOptions.dismiss();
            this.parent.updateTabsShown(true);
            TL_stars.TL_starGiftCollection tL_starGiftCollectionFindById = this.parent.collections.findById(this.list.collectionId);
            if (tL_starGiftCollectionFindById != null) {
                BulletinFactory.of(this.parent.fragment).createSimpleMultiBulletin(savedStarGift.gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.Gift2RemovedFromCollection, StarGiftSheet.getGiftName(savedStarGift.gift), tL_starGiftCollectionFindById.title))).show();
            }
        }

        public void updateColors() {
            if (this.emptyView1 != null) {
                this.emptyView1Title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
                TextView textView = this.emptyView1Button;
                int i = Theme.key_featuredStickers_addButton;
                textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
                this.emptyView1Button.setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.1f), 4, 4));
                return;
            }
            this.emptyView2Title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.emptyView2Subtitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
            this.emptyView2Button.updateColors();
        }
    }

    public boolean canScroll(boolean z) {
        ViewPagerFixed viewPagerFixed = this.viewPager;
        return z ? viewPagerFixed.getCurrentPosition() >= this.collections.getCollections().size() : viewPagerFixed.getCurrentPosition() <= 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ProfileGiftsContainer(final BaseFragment baseFragment, final Context context, final int i, long j, final Theme.ResourcesProvider resourcesProvider) {
        int i2;
        String string;
        TLRPC.EncryptedChat encryptedChat;
        super(context);
        this.checkboxRequestId = -1;
        this.sendCollectionsOrder = new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$12();
            }
        };
        this.animatorBottomButtonVisibility = new BoolAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda4
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i3, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.lambda$new$14(i3, f, f2, factorAnimator);
            }
        }, CubicBezierInterpolator.EASE_OUT_QUINT, 380L, true);
        this.visibleHeight = AndroidUtilities.displaySize.y;
        this.fragment = baseFragment;
        this.currentAccount = i;
        if (DialogObject.isEncryptedDialog(j) && (encryptedChat = MessagesController.getInstance(i).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)))) != null) {
            this.dialogId = encryptedChat.user_id;
        } else {
            this.dialogId = j;
        }
        StarsController.getInstance(i).invalidateProfileGifts(this.dialogId);
        StarsController.GiftsList profileGiftsList = StarsController.getInstance(i).getProfileGiftsList(this.dialogId);
        this.list = profileGiftsList;
        StarsController.GiftsCollections profileGiftCollectionsList = StarsController.getInstance(i).getProfileGiftCollectionsList(this.dialogId, true);
        this.collections = profileGiftCollectionsList;
        profileGiftCollectionsList.all = profileGiftsList;
        profileGiftsList.shown = true;
        if ((baseFragment instanceof ProfileActivity) && ((ProfileActivity) baseFragment).openGiftsUpgradable) {
            profileGiftsList.setFilters(4);
        } else {
            profileGiftsList.resetFilters();
        }
        profileGiftsList.load();
        this.resourcesProvider = resourcesProvider;
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.1
            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z) {
                super.onTabAnimationUpdate(z);
                ProfileGiftsContainer.this.updateButton();
                BaseFragment baseFragment2 = baseFragment;
                if (baseFragment2 instanceof ProfileActivity) {
                    ((ProfileActivity) baseFragment2).updateSelectedMediaTabText();
                    View fragmentView = baseFragment.getFragmentView();
                    if (fragmentView != null) {
                        fragmentView.invalidate();
                    }
                }
                ProfileGiftsContainer.this.updateTabsY();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void onTabScrollEnd(int i3) {
                super.onTabScrollEnd(i3);
                ProfileGiftsContainer.this.updateButton();
                BaseFragment baseFragment2 = baseFragment;
                if (baseFragment2 instanceof ProfileActivity) {
                    ((ProfileActivity) baseFragment2).updateSelectedMediaTabText();
                }
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed
            public boolean canScroll(MotionEvent motionEvent) {
                return !ProfileGiftsContainer.this.isReordering();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void addMoreTabs() {
                if (!ProfileGiftsContainer.this.canAdd() || ProfileGiftsContainer.this.tabsView == null) {
                    return;
                }
                if (ProfileGiftsContainer.this.addCollectionTabText == null) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("+ " + LocaleController.getString(C2665R.string.Gift2NewCollection));
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2665R.drawable.poll_add_plus);
                    coloredImageSpan.spaceScaleX = 0.8f;
                    spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
                    ProfileGiftsContainer.this.addCollectionTabText = spannableStringBuilder;
                }
                ProfileGiftsContainer.this.tabsView.addTab(-1, ProfileGiftsContainer.this.addCollectionTabText);
            }
        };
        this.viewPager = viewPagerFixed;
        viewPagerFixed.setAllowDisallowInterceptTouch(true);
        viewPagerFixed.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.2
            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public boolean canReorder(int i3) {
                return i3 != 0;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i3) {
                return i3 == 0 ? 0 : 1;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return ProfileGiftsContainer.this.collections.getCollections().size() + 1;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i3) {
                if (i3 == -1) {
                    return null;
                }
                return new Page(ProfileGiftsContainer.this, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemId(int i3) {
                if (i3 == 0) {
                    return -2;
                }
                return ProfileGiftsContainer.this.collections.getCollections().get(i3 - 1).collection_id;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i3, int i4) {
                StarsController.GiftsList listByIndex;
                boolean z;
                Page page = (Page) view;
                ProfileGiftsContainer profileGiftsContainer = ProfileGiftsContainer.this;
                if (i4 == 0) {
                    listByIndex = profileGiftsContainer.list;
                    z = false;
                } else {
                    listByIndex = profileGiftsContainer.collections.getListByIndex(i3 - 1);
                    z = true;
                }
                page.bind(z, listByIndex);
                page.setVisibleHeight(ProfileGiftsContainer.this.visibleHeight);
                page.setHasTabs(!ProfileGiftsContainer.this.collections.getCollections().isEmpty());
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public CharSequence getItemTitle(int i3) {
                if (i3 == 0) {
                    return LocaleController.getString(C2665R.string.Gift2CollectionAll);
                }
                TL_stars.TL_starGiftCollection tL_starGiftCollection = ProfileGiftsContainer.this.collections.getCollections().get(i3 - 1);
                if (tL_starGiftCollection == null) {
                    return null;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_starGiftCollection.title);
                if (tL_starGiftCollection.icon != null) {
                    TextPaint textPaint = new TextPaint(1);
                    textPaint.setTextSize(AndroidUtilities.dp(16.0f));
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("e ");
                    spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(tL_starGiftCollection.icon, textPaint.getFontMetricsInt()), 0, 1, 33);
                    spannableStringBuilder.insert(0, (CharSequence) spannableStringBuilder2);
                }
                return spannableStringBuilder;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void applyReorder(ArrayList<Integer> arrayList) {
                ArrayList<Integer> arrayList2 = new ArrayList<>();
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Integer num = arrayList.get(i3);
                    i3++;
                    Integer num2 = num;
                    int iIntValue = num2.intValue();
                    if (iIntValue != -1 && iIntValue != -2) {
                        arrayList2.add(num2);
                    }
                }
                ProfileGiftsContainer.this.collections.reorder(arrayList2);
                Page currentPage = ProfileGiftsContainer.this.getCurrentPage();
                if (currentPage != null) {
                    int iIndexOf = currentPage.isCollection ? ProfileGiftsContainer.this.collections.indexOf(currentPage.list.collectionId) + 1 : 0;
                    ProfileGiftsContainer.this.tabsView.selectTab(iIndexOf, iIndexOf, 0.0f);
                }
                AndroidUtilities.cancelRunOnUIThread(ProfileGiftsContainer.this.sendCollectionsOrder);
                AndroidUtilities.runOnUIThread(ProfileGiftsContainer.this.sendCollectionsOrder, 1000L);
            }
        });
        addView(viewPagerFixed, LayoutHelper.createFrame(-1, -1, 119));
        ViewPagerFixed.TabsView tabsViewCreateTabsView = viewPagerFixed.createTabsView(true, 10);
        this.tabsView = tabsViewCreateTabsView;
        tabsViewCreateTabsView.setColors(Theme.key_profile_tabSelectedLine, Theme.key_windowBackgroundWhiteBlackText, Theme.key_profile_tabText, Theme.key_profile_tabSelector, Theme.key_actionBarDefault);
        tabsViewCreateTabsView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        tabsViewCreateTabsView.setClipToPadding(false);
        tabsViewCreateTabsView.tabMarginDp = 12;
        tabsViewCreateTabsView.setPreTabClick(new Utilities.Callback2Return() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2Return
            public final Object run(Object obj, Object obj2) {
                return this.f$0.lambda$new$1((Integer) obj, (Integer) obj2);
            }
        });
        tabsViewCreateTabsView.setOnTabLongClick(new Utilities.Callback2Return() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2Return
            public final Object run(Object obj, Object obj2) {
                return this.f$0.lambda$new$7(i, baseFragment, context, resourcesProvider, (Integer) obj, (View) obj2);
            }
        });
        addView(tabsViewCreateTabsView, LayoutHelper.createFrame(-1, 42, 48));
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        int i3 = Theme.key_windowBackgroundWhite;
        blurredBackgroundSourceColor.setColor(Theme.getColor(i3, resourcesProvider));
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        ProfileActivity.Button2 button2 = new ProfileActivity.Button2(context);
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(button2, new BlurredBackgroundColorProviderThemed(resourcesProvider, i3));
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(8.0f));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(22.0f));
        button2.setBackground(blurredBackgroundDrawableCreate);
        ScaleStateListAnimator.apply(button2, 0.02f, 1.2f);
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 60, 87);
        layoutParamsCreateFrame.bottomMargin += AndroidUtilities.navigationBarHeight;
        addView(frameLayout, layoutParamsCreateFrame);
        frameLayout.addView(button2, LayoutHelper.createFrame(-2, 60, 1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.bulletinContainer = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context);
        this.checkboxLayout = linearLayout;
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f));
        linearLayout.setClipToPadding(false);
        linearLayout.setOrientation(0);
        linearLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 24, 24));
        CheckBox2 checkBox2 = new CheckBox2(context, 24, resourcesProvider);
        this.checkbox = checkBox2;
        checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setChecked(false, false);
        checkBox2.setDrawBackgroundAsArc(10);
        linearLayout.addView(checkBox2, LayoutHelper.createLinear(26, 26, 16, 0, 0, 0, 0));
        TextView textView = new TextView(context);
        this.checkboxTextView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString(C2665R.string.Gift2ChannelNotify));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 16, 9, 0, 0, 0));
        button2.addView(linearLayout, LayoutHelper.createFrame(-2, 38.0f, 17, 0.0f, 6.0f, 0.0f, 6.0f));
        ScaleStateListAnimator.apply(linearLayout, 0.025f, 1.5f);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$10(baseFragment, i, view);
            }
        });
        Boolean bool = profileGiftsList.chat_notifications_enabled;
        if (bool != null) {
            checkBox2.setChecked(bool.booleanValue(), false);
        }
        TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(this.dialogId));
        final boolean z = this.dialogId < 0 || !(user == null || UserObject.isUserSelf(user) || UserObject.isBot(user));
        StringBuilder sb = new StringBuilder("G ");
        if (z) {
            long j2 = this.dialogId;
            if (j2 >= 0) {
                string = LocaleController.formatString(C2665R.string.ProfileGiftsSendUser, DialogObject.getShortName(j2));
                sb.append(string);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb.toString());
                spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.filled_gift_simple), 0, 1, 33);
                this.sendGiftsToFriendsText = spannableStringBuilder;
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("+ " + LocaleController.getString(C2665R.string.ProfileGiftsAdd));
                spannableStringBuilder2.setSpan(new ColoredImageSpan(C2665R.drawable.filled_add_album), 0, 1, 33);
                this.addGiftsText = spannableStringBuilder2;
                ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                this.button = buttonWithCounterView;
                buttonWithCounterView.setUseWrapContent(true);
                buttonWithCounterView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
                buttonWithCounterView.setRoundRadius(AndroidUtilities.dp(19.0f));
                buttonWithCounterView.setText(spannableStringBuilder, false);
                buttonWithCounterView.setStateListAnimator(null);
                button2.addView(buttonWithCounterView, LayoutHelper.createFrame(-2, -1, 17));
                button2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$11(z, i, view);
                    }
                });
                buttonWithCounterView.setVisibility(!canSwitchNotify() ? 8 : 0);
                linearLayout.setVisibility(canSwitchNotify() ? 0 : 8);
                this.buttonContainerHeightDp = 60;
                addView(frameLayout2, LayoutHelper.createFrame(-1, 200, 87));
                updateColors();
                updateTabsShown(false);
            }
            i2 = C2665R.string.ProfileGiftsSendChannel;
        } else {
            i2 = C2665R.string.ProfileGiftsSend;
        }
        string = LocaleController.getString(i2);
        sb.append(string);
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(sb.toString());
        spannableStringBuilder3.setSpan(new ColoredImageSpan(C2665R.drawable.filled_gift_simple), 0, 1, 33);
        this.sendGiftsToFriendsText = spannableStringBuilder3;
        SpannableStringBuilder spannableStringBuilder22 = new SpannableStringBuilder("+ " + LocaleController.getString(C2665R.string.ProfileGiftsAdd));
        spannableStringBuilder22.setSpan(new ColoredImageSpan(C2665R.drawable.filled_add_album), 0, 1, 33);
        this.addGiftsText = spannableStringBuilder22;
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, resourcesProvider);
        this.button = buttonWithCounterView2;
        buttonWithCounterView2.setUseWrapContent(true);
        buttonWithCounterView2.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        buttonWithCounterView2.setRoundRadius(AndroidUtilities.dp(19.0f));
        buttonWithCounterView2.setText(spannableStringBuilder3, false);
        buttonWithCounterView2.setStateListAnimator(null);
        button2.addView(buttonWithCounterView2, LayoutHelper.createFrame(-2, -1, 17));
        button2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$11(z, i, view);
            }
        });
        buttonWithCounterView2.setVisibility(!canSwitchNotify() ? 8 : 0);
        linearLayout.setVisibility(canSwitchNotify() ? 0 : 8);
        this.buttonContainerHeightDp = 60;
        addView(frameLayout2, LayoutHelper.createFrame(-1, 200, 87));
        updateColors();
        updateTabsShown(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$new$1(Integer num, Integer num2) {
        resetReordering();
        if (num.intValue() == -1) {
            createCollection();
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$new$7(final int i, final BaseFragment baseFragment, final Context context, final Theme.ResourcesProvider resourcesProvider, Integer num, View view) {
        final TL_stars.TL_starGiftCollection tL_starGiftCollection;
        final int i2 = -1;
        if (num.intValue() == -1 || num.intValue() == -2 || num.intValue() == 0 || this.reorderingCollections) {
            return Boolean.FALSE;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.collections.getCollections().size()) {
                tL_starGiftCollection = null;
                break;
            }
            if (this.collections.getCollections().get(i3).collection_id == num.intValue()) {
                tL_starGiftCollection = this.collections.getCollections().get(i3);
                i2 = i3;
                break;
            }
            i3++;
        }
        final String publicUsername = DialogObject.getPublicUsername(MessagesController.getInstance(i).getUserOrChat(this.dialogId));
        boolean zIsMine = this.collections.isMine();
        if (TextUtils.isEmpty(publicUsername) && !zIsMine) {
            return Boolean.FALSE;
        }
        ItemOptions itemOptionsAddIf = ItemOptions.makeOptions(baseFragment, view).setScrimViewBackground(new Drawable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.3
            private final Drawable bg;
            private final Rect bgBounds = new Rect();

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            {
                this.bg = Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), ProfileGiftsContainer.this.backgroundColor);
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                this.bgBounds.set(getBounds());
                this.bgBounds.inset(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(8.0f));
                this.bg.setBounds(this.bgBounds);
                this.bg.draw(canvas);
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i4) {
                this.bg.setAlpha(i4);
            }
        }).addIf(zIsMine, C2665R.drawable.menu_gift_add, LocaleController.getString(C2665R.string.Gift2CollectionsAdd), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.addGifts();
            }
        }).addIf(!TextUtils.isEmpty(publicUsername), C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.Gift2CollectionsShare), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(i, publicUsername, tL_starGiftCollection, context, resourcesProvider, baseFragment);
            }
        }).addIf(zIsMine, C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.Gift2CollectionsRename), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$4(tL_starGiftCollection);
            }
        }).addIf(zIsMine, C2665R.drawable.tabs_reorder, LocaleController.getString(C2665R.string.Gift2CollectionsReorder), new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5();
            }
        }).addIf(zIsMine, C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.Gift2CollectionsDelete), true, new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(i2, tL_starGiftCollection);
            }
        });
        this.currentMenu = itemOptionsAddIf;
        itemOptionsAddIf.show();
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i, String str, TL_stars.TL_starGiftCollection tL_starGiftCollection, Context context, Theme.ResourcesProvider resourcesProvider, final BaseFragment baseFragment) {
        String str2 = MessagesController.getInstance(i).linkPrefix + "/" + str + "/c/" + tL_starGiftCollection.collection_id;
        new ShareAlert(context, null, str2, false, str2, false, resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.4
            @Override // org.telegram.ui.Components.ShareAlert
            public void onSend(LongSparseArray<TLRPC.Dialog> longSparseArray, int i2, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                BulletinFactory bulletinFactoryOf;
                if (z && (bulletinFactoryOf = BulletinFactory.of(baseFragment)) != null) {
                    if (longSparseArray.size() == 1) {
                        long jKeyAt = longSparseArray.keyAt(0);
                        if (jKeyAt == UserConfig.getInstance(this.currentAccount).clientUserId) {
                            bulletinFactoryOf.createSimpleBulletin(C2665R.raw.saved_messages, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.GiftCollectionSharedToSavedMessages, new Object[0])), 5000).hideAfterBottomSheet(false).show();
                        } else {
                            int i3 = this.currentAccount;
                            if (jKeyAt < 0) {
                                bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.GiftCollectionSharedTo, tL_forumTopic != null ? tL_forumTopic.title : MessagesController.getInstance(i3).getChat(Long.valueOf(-jKeyAt)).title)), 5000).hideAfterBottomSheet(false).show();
                            } else {
                                bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.GiftCollectionSharedTo, MessagesController.getInstance(i3).getUser(Long.valueOf(jKeyAt)).first_name)), 5000).hideAfterBottomSheet(false).show();
                            }
                        }
                    } else {
                        bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftCollectionSharedToManyChats", longSparseArray.size(), Integer.valueOf(longSparseArray.size())))).hideAfterBottomSheet(false).show();
                    }
                    try {
                        ProfileGiftsContainer.this.performHapticFeedback(3);
                    } catch (Exception unused) {
                    }
                }
            }
        }.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final TL_stars.TL_starGiftCollection tL_starGiftCollection) {
        openEnterNameAlert(tL_starGiftCollection.title, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$3(tL_starGiftCollection, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TL_stars.TL_starGiftCollection tL_starGiftCollection, String str) {
        this.collections.rename(tL_starGiftCollection.collection_id, str);
        tL_starGiftCollection.title = str;
        fillTabs(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        setReorderingCollections(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(int i, TL_stars.TL_starGiftCollection tL_starGiftCollection) {
        if (i != -1) {
            this.collections.removeCollection(tL_starGiftCollection.collection_id);
            fillTabs(true);
            ViewPagerFixed.TabsView tabsView = this.tabsView;
            if (i < this.collections.getCollections().size()) {
                i++;
            }
            tabsView.scrollToTab(-1, i);
            updateTabsShown(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final BaseFragment baseFragment, int i, View view) {
        this.checkbox.setChecked(!r7.isChecked(), true);
        boolean zIsChecked = this.checkbox.isChecked();
        BulletinFactory.of(baseFragment).createSimpleBulletinDetail(zIsChecked ? C2665R.raw.silent_unmute : C2665R.raw.silent_mute, LocaleController.getString(zIsChecked ? C2665R.string.Gift2ChannelNotifyChecked : C2665R.string.Gift2ChannelNotifyNotChecked)).show();
        this.list.chat_notifications_enabled = Boolean.valueOf(zIsChecked);
        if (this.checkboxRequestId >= 0) {
            ConnectionsManager.getInstance(i).cancelRequest(this.checkboxRequestId, true);
            this.checkboxRequestId = -1;
        }
        TL_stars.toggleChatStarGiftNotifications togglechatstargiftnotifications = new TL_stars.toggleChatStarGiftNotifications();
        togglechatstargiftnotifications.peer = MessagesController.getInstance(i).getInputPeer(this.dialogId);
        togglechatstargiftnotifications.enabled = zIsChecked;
        ConnectionsManager.getInstance(i).sendRequest(togglechatstargiftnotifications, new RequestDelegate() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$9(baseFragment, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(final BaseFragment baseFragment, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$8(tL_error, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(TLRPC.TL_error tL_error, BaseFragment baseFragment) {
        this.checkboxRequestId = -1;
        if (tL_error != null) {
            BulletinFactory.of(baseFragment).showForError(tL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(boolean z, int i, View view) {
        if (this.collections.isMine() && this.viewPager.getCurrentPosition() != 0) {
            addGifts();
        } else if (z) {
            new GiftSheet(getContext(), i, this.dialogId, null, null).setBirthday(BirthdayController.getInstance(i).isToday(this.dialogId)).show();
        } else {
            UserSelectorBottomSheet.open(2, 0L, BirthdayController.getInstance(i).getState());
        }
    }

    public void updateTabsShown(boolean z) {
        boolean z2 = !this.collections.getCollections().isEmpty() || canAdd();
        if (this.viewPager.getViewPages() != null) {
            for (View view : this.viewPager.getViewPages()) {
                if (view instanceof Page) {
                    ((Page) view).setHasTabs(z2);
                }
            }
        }
    }

    public float getTabsHeight() {
        float translationX = 0.0f;
        if (this.viewPager.getViewPages() != null) {
            for (View view : this.viewPager.getViewPages()) {
                if (view instanceof Page) {
                    translationX += (1.0f - (view.getTranslationX() / view.getWidth())) * ((Page) view).getTabsHeight();
                }
            }
        }
        return translationX;
    }

    private float hasTabs() {
        float f;
        if (this.viewPager.getViewPages() != null) {
            f = 0.0f;
            for (View view : this.viewPager.getViewPages()) {
                if (view instanceof Page) {
                    f += ((Page) view).hasTabs ? 1.0f : 0.0f;
                }
            }
        } else {
            f = 0.0f;
        }
        return MathUtils.clamp(f, 0.0f, 1.0f);
    }

    public void updateTabsY() {
        if (this.tabsView == null) {
            return;
        }
        float fMin = Math.min(this.externalPaddingTop, getTabsHeight() - AndroidUtilities.dp(42.0f));
        float fClamp01 = Utilities.clamp01(AndroidUtilities.ilerp(fMin - this.externalPaddingTop, -AndroidUtilities.dp(42.0f), 0.0f));
        float fLerp = AndroidUtilities.lerp(0.9f, 1.0f, fClamp01);
        this.tabsView.setTranslationY(fMin);
        this.tabsView.setScaleX(fLerp);
        this.tabsView.setScaleY(fLerp);
        this.tabsView.setAlpha(fClamp01 * hasTabs());
    }

    public float getTabsVisibility() {
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            return tabsView.getAlpha();
        }
        return 0.0f;
    }

    public boolean isReordering() {
        if (this.reorderingCollections) {
            return true;
        }
        Page currentPage = getCurrentPage();
        return currentPage != null && currentPage.isReordering();
    }

    public void setReordering(boolean z) {
        Page currentPage = getCurrentPage();
        if (currentPage != null) {
            currentPage.setReordering(z);
        }
    }

    public void scrollToCollectionId(int i) {
        this.pendingScrollToCollectionId = i;
        checkScrollToCollection();
    }

    private void checkScrollToCollection() {
        TL_stars.TL_starGiftCollection tL_starGiftCollection;
        if (this.pendingScrollToCollectionId <= 0) {
            return;
        }
        ArrayList<TL_stars.TL_starGiftCollection> collections = this.collections.getCollections();
        int i = 0;
        while (true) {
            if (i >= collections.size()) {
                i = -1;
                tL_starGiftCollection = null;
                break;
            } else {
                if (collections.get(i).collection_id == this.pendingScrollToCollectionId) {
                    tL_starGiftCollection = collections.get(i);
                    break;
                }
                i++;
            }
        }
        if (i < 0 || tL_starGiftCollection == null) {
            return;
        }
        this.pendingScrollToCollectionId = 0;
        this.tabsView.scrollToTab(tL_starGiftCollection.collection_id, i + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        this.collections.sendOrder();
    }

    public void setReorderingCollections(boolean z) {
        if (this.reorderingCollections == z) {
            return;
        }
        this.reorderingCollections = z;
        updatedReordering(isReordering());
        this.tabsView.setReordering(z);
        if (z) {
            final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment instanceof ProfileActivity) {
                ((ProfileActivity) safeLastFragment).scrollToSharedMedia(false);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((ProfileActivity) safeLastFragment).scrollToSharedMedia(true);
                    }
                });
            }
        }
        if (z) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.sendCollectionsOrder);
        AndroidUtilities.runOnUIThread(this.sendCollectionsOrder);
    }

    public void resetReordering() {
        Page currentPage = getCurrentPage();
        if (currentPage != null) {
            currentPage.resetReordering();
        }
        setReorderingCollections(false);
    }

    public boolean canAdd() {
        return this.collections.isMine() && this.collections.getCollections().size() < MessagesController.getInstance(this.currentAccount).config.stargiftsCollectionsLimit.get();
    }

    private boolean shouldHideButton(int i) {
        StarsController.GiftsList listByIndex;
        if (i == 0) {
            return false;
        }
        int i2 = i - 1;
        if (i2 < 0 || i2 >= this.collections.getCollections().size() || (listByIndex = this.collections.getListByIndex(i2)) == null) {
            return true;
        }
        return listByIndex.gifts.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(int i, float f, float f2, FactorAnimator factorAnimator) {
        updateButton();
    }

    public void updateButton() {
        float currentPositionAlpha;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed == null) {
            return;
        }
        int currentPosition = viewPagerFixed.getCurrentPosition();
        int nextPosition = this.viewPager.getNextPosition();
        ViewPagerFixed viewPagerFixed2 = this.viewPager;
        if (currentPosition == nextPosition) {
            currentPositionAlpha = (AndroidUtilities.dp(68.0f) + 2) * (shouldHideButton(viewPagerFixed2.getCurrentPosition()) ? 1.0f : 0.0f);
        } else {
            currentPositionAlpha = (((shouldHideButton(viewPagerFixed2.getCurrentPosition()) ? 1.0f : 0.0f) * this.viewPager.getCurrentPositionAlpha()) + ((shouldHideButton(this.viewPager.getNextPosition()) ? 1.0f : 0.0f) * this.viewPager.getNextPositionAlpha())) * (AndroidUtilities.dp(68.0f) + 2);
        }
        float fDp = currentPositionAlpha + ((((-this.buttonContainer.getTop()) + this.visibleHeight) - AndroidUtilities.dp(this.buttonContainerHeightDp)) - 1);
        this.animatorBottomButtonVisibility.setValue(this.visibleHeight > AndroidUtilities.dp(184.0f), true);
        float floatValue = this.animatorBottomButtonVisibility.getFloatValue();
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(60.0f) + fDp, fDp, floatValue);
        this.bulletinContainer.setTranslationY(fLerp - AndroidUtilities.dp(200.0f));
        this.buttonContainer.setTranslationY(fLerp - this.buttonContainerOffset);
        this.buttonContainer.setAlpha(floatValue);
        this.buttonContainer.setVisibility(floatValue <= 0.0f ? 4 : 0);
        this.button.setText((!this.collections.isMine() || this.viewPager.getPositionAnimated() < 0.5f) ? this.sendGiftsToFriendsText : this.addGiftsText, true);
        Bulletin.updateCurrentPosition();
    }

    public void setButtonOffset(int i) {
        if (this.buttonContainerOffset != i) {
            this.buttonContainerOffset = i;
            updateButton();
        }
    }

    public int getBottomOffset() {
        float translationY = this.buttonContainer.getTranslationY() - ((((-this.buttonContainer.getTop()) + Math.max(AndroidUtilities.dp(240.0f), this.visibleHeight)) - AndroidUtilities.dp(this.buttonContainerHeightDp)) - 1);
        if (this.visibleHeight < AndroidUtilities.dp(240.0f)) {
            translationY += Math.min(AndroidUtilities.dp(240.0f) - this.visibleHeight, AndroidUtilities.dp(this.buttonContainerHeightDp));
        }
        return (int) (AndroidUtilities.dp(this.buttonContainerHeightDp) - translationY);
    }

    public boolean canFilterHidden() {
        if (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return true;
        }
        if (this.dialogId >= 0) {
            return false;
        }
        return ChatObject.canUserDoAction(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId)), 5);
    }

    public boolean canReorder() {
        long j = this.dialogId;
        if (j >= 0) {
            return j == 0 || j == UserConfig.getInstance(this.currentAccount).getClientUserId();
        }
        return ChatObject.canUserDoAction(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId)), 5);
    }

    public boolean canSwitchNotify() {
        return this.dialogId < 0 && this.list.chat_notifications_enabled != null;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.starUserGiftsLoaded) {
            if (((Long) objArr[0]).longValue() != this.dialogId) {
                return;
            }
            this.button.setVisibility(canSwitchNotify() ? 8 : 0);
            this.checkboxLayout.setVisibility(canSwitchNotify() ? 0 : 8);
            this.buttonContainerHeightDp = 60;
            Boolean bool = this.list.chat_notifications_enabled;
            if (bool != null) {
                this.checkbox.setChecked(bool.booleanValue(), true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.starUserGiftCollectionsLoaded) {
            if (((Long) objArr[0]).longValue() != this.dialogId) {
                return;
            }
            fillTabs(true);
            updateTabsShown(true);
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            this.button.setVisibility(canSwitchNotify() ? 8 : 0);
            this.checkboxLayout.setVisibility(canSwitchNotify() ? 0 : 8);
            this.buttonContainerHeightDp = 60;
            setVisibleHeight(this.visibleHeight);
        }
    }

    public Page getCurrentPage() {
        View currentView = this.viewPager.getCurrentView();
        if (currentView == null) {
            return null;
        }
        return (Page) currentView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftCollectionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        Page currentPage = getCurrentPage();
        if (currentPage != null) {
            currentPage.update(false);
        }
        fillTabs(false);
        updateTabsShown(false);
        StarsController.GiftsList giftsList = this.list;
        if (giftsList != null) {
            giftsList.shown = true;
            giftsList.load();
        }
        StarsController.GiftsCollections giftsCollections = this.collections;
        if (giftsCollections != null) {
            giftsCollections.shown = true;
            giftsCollections.load();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        Page currentPage = getCurrentPage();
        resetReordering();
        if (currentPage != null) {
            currentPage.resetReordering();
        }
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftCollectionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        StarsController.GiftsList giftsList = this.list;
        if (giftsList != null) {
            giftsList.shown = false;
        }
        StarsController.GiftsCollections giftsCollections = this.collections;
        if (giftsCollections != null) {
            giftsCollections.shown = false;
        }
    }

    public StarsController.GiftsList getCurrentList() {
        Page currentPage = getCurrentPage();
        if (currentPage != null) {
            return currentPage.list;
        }
        return this.list;
    }

    public int getGiftsCount() {
        int i;
        StarsController.GiftsList giftsList;
        int i2;
        Page currentPage = getCurrentPage();
        if (currentPage == null || (giftsList = currentPage.list) == this.list) {
            StarsController.GiftsList giftsList2 = this.list;
            if (giftsList2 != null && (i = giftsList2.totalCount) > 0) {
                return i;
            }
        } else if (giftsList != null && (i2 = giftsList.totalCount) > 0) {
            return i2;
        }
        long j = this.dialogId;
        int i3 = this.currentAccount;
        if (j >= 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(i3).getUserFull(this.dialogId);
            if (userFull != null) {
                return userFull.stargifts_count;
            }
            return 0;
        }
        TLRPC.ChatFull chatFull = MessagesController.getInstance(i3).getChatFull(-this.dialogId);
        if (chatFull != null) {
            return chatFull.stargifts_count;
        }
        return 0;
    }

    public CharSequence getLastEmojis(Paint.FontMetricsInt fontMetricsInt) {
        CharSequence charSequence;
        if (this.list == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        Pair<Integer, Long> pair = new Pair<>(Integer.valueOf(UserConfig.selectedAccount), Long.valueOf(this.dialogId));
        if (this.list.gifts.isEmpty()) {
            return (!this.list.loading || (charSequence = cachedLastEmojis.get(pair)) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; arrayList.size() < 3 && i < this.list.gifts.size(); i++) {
            TLRPC.Document document = this.list.gifts.get(i).gift.getDocument();
            if (document != null && !hashSet.contains(Long.valueOf(document.id))) {
                hashSet.add(Long.valueOf(document.id));
                arrayList.add(document);
            }
        }
        if (arrayList.isEmpty()) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(" ");
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC.Document document2 = (TLRPC.Document) arrayList.get(i2);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(MessageObject.getEmoji(document2));
            spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(document2, 0.9f, fontMetricsInt), 0, spannableStringBuilder2.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableStringBuilder2);
        }
        cachedLastEmojis.put(pair, spannableStringBuilder);
        return spannableStringBuilder;
    }

    public long getLastEmojisHash() {
        StarsController.GiftsList giftsList = this.list;
        long jHash = 0;
        if (giftsList != null && !giftsList.gifts.isEmpty()) {
            HashSet hashSet = new HashSet();
            int i = 0;
            for (int i2 = 0; i < 3 && i2 < this.list.gifts.size(); i2++) {
                TLRPC.Document document = this.list.gifts.get(i2).gift.getDocument();
                if (document != null) {
                    hashSet.add(Long.valueOf(document.id));
                    jHash = Objects.hash(Long.valueOf(jHash), Long.valueOf(document.id));
                    i++;
                }
            }
        }
        return jHash;
    }

    public void setVisibleHeight(int i) {
        this.visibleHeight = i;
        updateButton();
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed != null) {
            for (View view : viewPagerFixed.getViewPages()) {
                if (view instanceof Page) {
                    ((Page) view).setVisibleHeight(this.visibleHeight);
                }
            }
        }
    }

    public RecyclerListView getCurrentListView() {
        Page currentPage = getCurrentPage();
        if (currentPage != null) {
            return currentPage.listView;
        }
        return null;
    }

    public static class TextFactory extends UItem.UItemFactory<LinkSpanDrawable.LinksTextView> {
        static {
            UItem.UItemFactory.setup(new TextFactory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public LinkSpanDrawable.LinksTextView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.TextFactory.1
                @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
                public void onMeasure(int i3, int i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), TLObject.FLAG_30), i4);
                }
            };
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            LinkSpanDrawable.LinksTextView linksTextView = (LinkSpanDrawable.LinksTextView) view;
            linksTextView.setGravity(uItem.intValue);
            linksTextView.setTextColor((int) uItem.longValue);
            linksTextView.setTextSize(1, uItem.floatValue);
            linksTextView.setTypeface(uItem.accent ? AndroidUtilities.bold() : null);
            int i = uItem.pad;
            linksTextView.setPadding(i, 0, i, uItem.iconResId);
            linksTextView.setText(uItem.text);
        }

        public static UItem asText(int i, int i2, float f, CharSequence charSequence, boolean z, int i3, int i4) {
            UItem uItemOfFactory = UItem.ofFactory(TextFactory.class);
            uItemOfFactory.text = charSequence;
            uItemOfFactory.intValue = i2;
            uItemOfFactory.longValue = i;
            uItemOfFactory.floatValue = f;
            uItemOfFactory.pad = i3;
            uItemOfFactory.iconResId = i4;
            uItemOfFactory.accent = z;
            return uItemOfFactory;
        }
    }

    public void updateColors() {
        this.button.updateColors();
        this.button.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(19.0f), processColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider))));
        View[] viewPages = this.viewPager.getViewPages();
        if (viewPages != null) {
            for (View view : viewPages) {
                if (view != null) {
                    ((Page) view).updateColors();
                }
            }
        }
        this.checkboxTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        this.checkboxLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 24, 24));
    }

    public static class UnpinSheet extends BottomSheet {
        long selectedGift;

        public UnpinSheet(Context context, long j, final TL_stars.SavedStarGift savedStarGift, Theme.ResourcesProvider resourcesProvider, final Utilities.Callback0Return<BulletinFactory> callback0Return) {
            super(context, false, resourcesProvider);
            this.selectedGift = 0L;
            fixNavigationBar();
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, Theme.key_windowBackgroundWhiteBlackText, true, resourcesProvider);
            textViewMakeTextView.setText(LocaleController.getString(C2665R.string.Gift2UnpinAlertTitle));
            linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 22.0f, 12.0f, 22.0f, 0.0f));
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText, false, resourcesProvider);
            textViewMakeTextView2.setText(LocaleController.getString(C2665R.string.Gift2UnpinAlertSubtitle));
            linearLayout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 22.0f, 4.33f, 22.0f, 10.0f));
            final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            final StarsController.GiftsList profileGiftsList = StarsController.getInstance(this.currentAccount).getProfileGiftsList(j);
            UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$0(profileGiftsList, (ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$new$1(buttonWithCounterView, (UItem) obj, (View) obj2, (Integer) obj3, (Float) obj4, (Float) obj5);
                }
            }, null, resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.UnpinSheet.1
                @Override // org.telegram.ui.Components.RecyclerListView
                public Integer getSelectorColor(int i) {
                    return 0;
                }
            };
            universalRecyclerView.setSpanCount(3);
            universalRecyclerView.setOverScrollMode(2);
            universalRecyclerView.setScrollEnabled(false);
            linearLayout.addView(universalRecyclerView, LayoutHelper.createLinear(-1, -2, 11.0f, 0.0f, 11.0f, 0.0f));
            buttonWithCounterView.setText(LocaleController.getString(C2665R.string.Gift2UnpinAlertButton), false);
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 22.0f, 9.0f, 22.0f, 9.0f));
            buttonWithCounterView.setEnabled(false);
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(profileGiftsList, savedStarGift, callback0Return, view);
                }
            });
            setCustomView(linearLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(StarsController.GiftsList giftsList, ArrayList arrayList, UniversalAdapter universalAdapter) {
            ArrayList<TL_stars.SavedStarGift> arrayList2 = giftsList.gifts;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                TL_stars.SavedStarGift savedStarGift = arrayList2.get(i);
                i++;
                TL_stars.SavedStarGift savedStarGift2 = savedStarGift;
                if (savedStarGift2.pinned_to_top) {
                    arrayList.add(PeerColorActivity.GiftCell.Factory.asGiftCell(savedStarGift2).setChecked(this.selectedGift == savedStarGift2.gift.id).setSpanCount(1));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(ButtonWithCounterView buttonWithCounterView, UItem uItem, View view, Integer num, Float f, Float f2) {
            long j = ((TL_stars.SavedStarGift) uItem.object).gift.id;
            if (this.selectedGift == j) {
                this.selectedGift = 0L;
            } else {
                this.selectedGift = j;
            }
            buttonWithCounterView.setEnabled(this.selectedGift != 0);
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof PeerColorActivity.GiftCell) {
                        PeerColorActivity.GiftCell giftCell = (PeerColorActivity.GiftCell) childAt;
                        giftCell.setSelected(this.selectedGift == giftCell.getGiftId(), true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(StarsController.GiftsList giftsList, TL_stars.SavedStarGift savedStarGift, Utilities.Callback0Return callback0Return, View view) {
            TL_stars.SavedStarGift savedStarGift2;
            ArrayList<TL_stars.SavedStarGift> pinned = giftsList.getPinned();
            int i = 0;
            while (true) {
                if (i >= pinned.size()) {
                    i = -1;
                    savedStarGift2 = null;
                    break;
                } else {
                    if (pinned.get(i).gift.id == this.selectedGift) {
                        savedStarGift2 = pinned.get(i);
                        break;
                    }
                    i++;
                }
            }
            if (savedStarGift2 == null) {
                return;
            }
            savedStarGift2.pinned_to_top = false;
            pinned.set(i, savedStarGift);
            savedStarGift.pinned_to_top = true;
            giftsList.setPinned(pinned);
            lambda$new$0();
            ((BulletinFactory) callback0Return.run()).createSimpleBulletin(C2665R.raw.ic_pin, LocaleController.formatString(C2665R.string.Gift2ReplacedPinTitle, StarGiftSheet.getGiftName(savedStarGift.gift)), LocaleController.formatString(C2665R.string.Gift2ReplacedPinSubtitle, StarGiftSheet.getGiftName(savedStarGift2.gift))).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openEnterNameAlert(String str, final Utilities.Callback<String> callback) {
        ActionBarPopupWindow actionBarPopupWindow;
        Context context = getContext();
        final Activity activityFindActivity = AndroidUtilities.findActivity(context);
        final View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        AlertDialog.Builder builder = new AlertDialog.Builder(context, this.resourcesProvider);
        if (str != null) {
            builder.setTitle(LocaleController.getString(C2665R.string.Gift2EditCollectionNameTitle));
        } else {
            builder.setTitle(LocaleController.getString(C2665R.string.Gift2NewCollectionTitle));
            builder.setMessage(LocaleController.getString(C2665R.string.Gift2NewCollectionText));
        }
        final EditTextCaption editTextCaption = new EditTextCaption(context, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.5
            AnimatedTextView.AnimatedTextDrawable limit;
            AnimatedColor limitColor = new AnimatedColor(this);
            private int limitCount;

            {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                this.limit = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.limit.setTextSize(AndroidUtilities.dp(15.33f));
                this.limit.setCallback(this);
                this.limit.setGravity(5);
            }

            @Override // android.widget.TextView, android.view.View
            public boolean verifyDrawable(Drawable drawable) {
                return drawable == this.limit || super.verifyDrawable(drawable);
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                super.onTextChanged(charSequence, i, i2, i3);
                if (this.limit != null) {
                    this.limitCount = 12 - charSequence.length();
                    this.limit.cancelAnimation();
                    AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                    int i4 = this.limitCount;
                    String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (i4 <= 4) {
                        str2 = _UrlKt.FRAGMENT_ENCODE_SET + this.limitCount;
                    }
                    animatedTextDrawable.setText(str2);
                }
            }

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.limitCount < 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, ProfileGiftsContainer.this.resourcesProvider)));
                this.limit.setBounds(getScrollX(), 0, getScrollX() + getWidth(), getHeight());
                this.limit.draw(canvas);
            }
        };
        editTextCaption.lineYFix = true;
        editTextCaption.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.6
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                String string = editTextCaption.getText().toString();
                if (string.length() <= 0 || string.length() > 12) {
                    AndroidUtilities.shakeView(editTextCaption);
                    return true;
                }
                callback.run(string);
                AlertDialog alertDialog = alertDialogArr[0];
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                View view = currentFocus;
                if (view != null) {
                    view.requestFocus();
                }
                return true;
            }
        });
        MediaDataController.getInstance(this.currentAccount).fetchNewEmojiKeywords(AndroidUtilities.getCurrentKeyboardLanguage(), true);
        editTextCaption.setTextSize(1, 18.0f);
        editTextCaption.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        editTextCaption.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourcesProvider));
        editTextCaption.setHintText(LocaleController.getString(C2665R.string.Gift2NewCollectionHint));
        editTextCaption.setFocusable(true);
        editTextCaption.setInputType(147457);
        editTextCaption.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourcesProvider), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, this.resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourcesProvider));
        editTextCaption.setImeOptions(6);
        editTextCaption.setBackgroundDrawable(null);
        editTextCaption.setPadding(0, AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f));
        editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer.7
            boolean ignoreTextChange;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!this.ignoreTextChange && editable.length() > 12) {
                    this.ignoreTextChange = true;
                    editable.delete(12, editable.length());
                    AndroidUtilities.shakeView(editTextCaption);
                    try {
                        editTextCaption.performHapticFeedback(3, 2);
                    } catch (Exception unused) {
                    }
                    this.ignoreTextChange = false;
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        editTextCaption.setText(str);
        linearLayout.addView(editTextCaption, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setPositiveButton(LocaleController.getString(str != null ? C2665R.string.Edit : C2665R.string.Create), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                ProfileGiftsContainer.$r8$lambda$HGXLJ2bQdDYNtuoDGUnONnEuUXI(editTextCaption, callback, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        alertDialogArr[0] = builder.create();
        ItemOptions itemOptions = this.currentMenu;
        if (itemOptions != null && (actionBarPopupWindow = itemOptions.actionBarPopupWindow) != null) {
            actionBarPopupWindow.setSoftInputMode(48);
        }
        AndroidUtilities.requestAdjustNothing(activityFindActivity, this.fragment.getClassGuid());
        alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda21
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openEnterNameAlert$17(editTextCaption, activityFindActivity, dialogInterface);
            }
        });
        alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda22
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                ProfileGiftsContainer.m15992$r8$lambda$Y_hy7wxb_R6l3jqf9bz9a6WDA(editTextCaption, dialogInterface);
            }
        });
        alertDialogArr[0].show();
        alertDialogArr[0].setDismissDialogByButtons(false);
        alertDialogArr[0].getButton(-1);
        editTextCaption.setSelection(editTextCaption.getText().length());
    }

    public static /* synthetic */ void $r8$lambda$HGXLJ2bQdDYNtuoDGUnONnEuUXI(EditTextCaption editTextCaption, Utilities.Callback callback, AlertDialog alertDialog, int i) {
        String string = editTextCaption.getText().toString();
        if (string.length() <= 0 || string.length() > 12) {
            AndroidUtilities.shakeView(editTextCaption);
        } else {
            callback.run(string);
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openEnterNameAlert$17(EditTextCaption editTextCaption, Activity activity, DialogInterface dialogInterface) {
        AndroidUtilities.hideKeyboard(editTextCaption);
        AndroidUtilities.requestAdjustResize(activity, this.fragment.getClassGuid());
    }

    /* JADX INFO: renamed from: $r8$lambda$Y_hy7wx-b_R6l3jq-f9bz9a6WDA, reason: not valid java name */
    public static /* synthetic */ void m15992$r8$lambda$Y_hy7wxb_R6l3jqf9bz9a6WDA(EditTextCaption editTextCaption, DialogInterface dialogInterface) {
        editTextCaption.requestFocus();
        AndroidUtilities.showKeyboard(editTextCaption);
    }

    public void createCollection() {
        openEnterNameAlert(null, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createCollection$20((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCollection$20(String str) {
        this.collections.createCollection(str, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createCollection$19((TL_stars.TL_starGiftCollection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCollection$19(TL_stars.TL_starGiftCollection tL_starGiftCollection) {
        fillTabs(true);
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        int i = tL_starGiftCollection.collection_id;
        tabsView.scrollToTab(i, this.collections.indexOf(i) + 1);
        BaseFragment baseFragment = this.fragment;
        if (baseFragment instanceof ProfileActivity) {
            ((ProfileActivity) baseFragment).scrollToSharedMedia(true);
        }
        updateTabsShown(true);
    }

    public void addGifts() {
        StarsController.GiftsList giftsList;
        final Page currentPage = getCurrentPage();
        if (currentPage == null || (giftsList = currentPage.list) == null || !currentPage.isCollection) {
            return;
        }
        final int i = giftsList.collectionId;
        new SelectGiftsBottomSheet(this.fragment, this.dialogId, i, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$addGifts$21(i, currentPage, (ArrayList) obj);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addGifts$21(int i, Page page, ArrayList arrayList) {
        this.collections.addGifts(i, arrayList, true);
        page.update(true);
        fillTabs(true);
        updateTabsShown(true);
        TL_stars.TL_starGiftCollection tL_starGiftCollectionFindById = this.collections.findById(i);
        if (tL_starGiftCollectionFindById != null) {
            if (arrayList.size() > 1) {
                Bulletin bulletinCreateSimpleMultiBulletin = BulletinFactory.of(this.fragment).createSimpleMultiBulletin(((TL_stars.SavedStarGift) arrayList.get(0)).gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2AddedToCollectionMany", arrayList.size(), tL_starGiftCollectionFindById.title)));
                bulletinCreateSimpleMultiBulletin.hideAfterBottomSheet = false;
                bulletinCreateSimpleMultiBulletin.show();
                return;
            }
            if (arrayList.size() == 1) {
                TL_stars.SavedStarGift savedStarGift = (TL_stars.SavedStarGift) arrayList.get(0);
                Bulletin bulletinCreateSimpleMultiBulletin2 = BulletinFactory.of(this.fragment).createSimpleMultiBulletin(savedStarGift.gift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.Gift2AddedToCollection, StarGiftSheet.getGiftName(savedStarGift.gift), tL_starGiftCollectionFindById.title)));
                bulletinCreateSimpleMultiBulletin2.hideAfterBottomSheet = false;
                bulletinCreateSimpleMultiBulletin2.show();
            }
        }
    }

    public static void setGiftFilterOptionsClickListeners(View view, final StarsController.GiftsList giftsList, final Runnable runnable, final int i) {
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileGiftsContainer.$r8$lambda$tYVcLJaoSuZkHNIzrEi_rPUek2E(giftsList, i, runnable, view2);
            }
        });
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda10
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return ProfileGiftsContainer.$r8$lambda$bEzDNpga9c41IzwYlyeh3jZ7Fbo(giftsList, i, runnable, view2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$tYVcLJaoSuZkHNIzrEi_rPUek2E(StarsController.GiftsList giftsList, int i, Runnable runnable, View view) {
        giftsList.toggleTypeIncludeFlag(i);
        runnable.run();
    }

    public static /* synthetic */ boolean $r8$lambda$bEzDNpga9c41IzwYlyeh3jZ7Fbo(StarsController.GiftsList giftsList, int i, Runnable runnable, View view) {
        giftsList.forceTypeIncludeFlag(i, true);
        runnable.run();
        return true;
    }

    public void initBlurCapture(ViewGroup viewGroup) {
        this.iBlur3CaptureParent = viewGroup;
        this.iBlur3Capture = new IBlur3Capture() { // from class: org.telegram.ui.Gifts.ProfileGiftsContainer$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
            public final void capture(Canvas canvas, RectF rectF) {
                this.f$0.lambda$initBlurCapture$24(canvas, rectF);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initBlurCapture$24(Canvas canvas, RectF rectF) {
        for (View view : this.viewPager.getViewPages()) {
            if (view instanceof Page) {
                Page page = (Page) view;
                if (page.iBlur3Capture == null) {
                    UniversalRecyclerView universalRecyclerView = page.listView;
                    ViewGroup viewGroup = this.iBlur3CaptureParent;
                    UniversalRecyclerView universalRecyclerView2 = page.listView;
                    Objects.requireNonNull(universalRecyclerView2);
                    page.iBlur3Capture = new ViewGroupPartRenderer(universalRecyclerView, viewGroup, new CallLogActivity$$ExternalSyntheticLambda6(universalRecyclerView2));
                }
                page.iBlur3Capture.capture(canvas, rectF);
            }
        }
    }
}
