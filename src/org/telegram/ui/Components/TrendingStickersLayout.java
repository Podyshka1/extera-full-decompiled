package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.StickersSearchAdapter;
import org.telegram.ui.Cells.EmptyCell;
import org.telegram.ui.Cells.FeaturedStickerSetCell2;
import org.telegram.ui.Cells.FeaturedStickerSetInfoCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.StickerEmojiCell;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.StickersAlert;

/* JADX INFO: loaded from: classes7.dex */
public class TrendingStickersLayout extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final TrendingStickersAdapter adapter;
    private final int currentAccount;
    private final Delegate delegate;
    ValueAnimator glueToTopAnimator;
    private boolean gluedToTop;
    private long hash;
    private float highlightProgress;
    private boolean ignoreLayout;
    private final LongSparseArray<TLRPC.StickerSetCovered> installingStickerSets;
    private final GridLayoutManager layoutManager;
    private final RecyclerListView listView;
    private boolean loaded;
    private boolean motionEventCatchedByListView;
    private RecyclerView.OnScrollListener onScrollListener;
    Paint paint;
    private BaseFragment parentFragment;
    private final TLRPC.StickerSetCovered[] primaryInstallingStickerSets;
    private final LongSparseArray<TLRPC.StickerSetCovered> removingStickerSets;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean scrollFromAnimator;
    private TLRPC.StickerSetCovered scrollToSet;
    private final StickersSearchAdapter searchAdapter;
    private final FrameLayout searchLayout;
    private final SearchField searchView;
    private final View shadowView;
    private boolean shadowVisible;
    private int topOffset;
    private boolean wasLayout;

    public static abstract class Delegate {
        private String[] lastSearchKeyboardLanguage = new String[0];

        public boolean canSchedule() {
            return false;
        }

        public boolean canSendSticker() {
            return false;
        }

        public boolean isInScheduleMode() {
            return false;
        }

        public boolean onListViewInterceptTouchEvent(RecyclerListView recyclerListView, MotionEvent motionEvent) {
            return false;
        }

        public boolean onListViewTouchEvent(RecyclerListView recyclerListView, RecyclerListView.OnItemClickListener onItemClickListener, MotionEvent motionEvent) {
            return false;
        }

        public void onStickerSelected(TLRPC.Document document, Object obj, boolean z, boolean z2, int i) {
        }

        public abstract void onStickerSetAdd(TLRPC.StickerSetCovered stickerSetCovered, boolean z);

        public abstract void onStickerSetRemove(TLRPC.StickerSetCovered stickerSetCovered);

        public String[] getLastSearchKeyboardLanguage() {
            return this.lastSearchKeyboardLanguage;
        }

        public void setLastSearchKeyboardLanguage(String[] strArr) {
            this.lastSearchKeyboardLanguage = strArr;
        }
    }

    public TrendingStickersLayout(Context context, Delegate delegate) {
        this(context, delegate, new TLRPC.StickerSetCovered[10], new LongSparseArray(), new LongSparseArray(), null, null);
    }

    public TrendingStickersLayout(Context context, final Delegate delegate, TLRPC.StickerSetCovered[] stickerSetCoveredArr, LongSparseArray<TLRPC.StickerSetCovered> longSparseArray, LongSparseArray<TLRPC.StickerSetCovered> longSparseArray2, TLRPC.StickerSetCovered stickerSetCovered, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.highlightProgress = 1.0f;
        this.paint = new Paint();
        this.delegate = delegate;
        this.primaryInstallingStickerSets = stickerSetCoveredArr;
        this.installingStickerSets = longSparseArray;
        this.removingStickerSets = longSparseArray2;
        this.scrollToSet = stickerSetCovered;
        this.resourcesProvider = resourcesProvider;
        TrendingStickersAdapter trendingStickersAdapter = new TrendingStickersAdapter(context);
        this.adapter = trendingStickersAdapter;
        this.searchAdapter = new StickersSearchAdapter(context, new StickersSearchAdapter.Delegate() { // from class: org.telegram.ui.Components.TrendingStickersLayout.1
            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void onSearchStart() {
                TrendingStickersLayout.this.searchView.getProgressDrawable().startAnimation();
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void onSearchStop() {
                TrendingStickersLayout.this.searchView.getProgressDrawable().stopAnimation();
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void setAdapterVisible(boolean z) {
                if (z && TrendingStickersLayout.this.listView.getAdapter() != TrendingStickersLayout.this.searchAdapter) {
                    TrendingStickersLayout.this.listView.setAdapter(TrendingStickersLayout.this.searchAdapter);
                } else if (z || TrendingStickersLayout.this.listView.getAdapter() == TrendingStickersLayout.this.adapter) {
                    return;
                } else {
                    TrendingStickersLayout.this.listView.setAdapter(TrendingStickersLayout.this.adapter);
                }
                if (TrendingStickersLayout.this.listView.getAdapter().getItemCount() > 0) {
                    TrendingStickersLayout.this.layoutManager.scrollToPositionWithOffset(0, (-TrendingStickersLayout.this.listView.getPaddingTop()) + AndroidUtilities.dp(58.0f) + TrendingStickersLayout.this.topOffset, false);
                }
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void onStickerSetAdd(TLRPC.StickerSetCovered stickerSetCovered2, boolean z) {
                delegate.onStickerSetAdd(stickerSetCovered2, z);
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void onStickerSetRemove(TLRPC.StickerSetCovered stickerSetCovered2) {
                delegate.onStickerSetRemove(stickerSetCovered2);
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public int getStickersPerRow() {
                return TrendingStickersLayout.this.adapter.stickersPerRow;
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public String[] getLastSearchKeyboardLanguage() {
                return delegate.getLastSearchKeyboardLanguage();
            }

            @Override // org.telegram.ui.Adapters.StickersSearchAdapter.Delegate
            public void setLastSearchKeyboardLanguage(String[] strArr) {
                delegate.setLastSearchKeyboardLanguage(strArr);
            }
        }, stickerSetCoveredArr, longSparseArray, longSparseArray2, resourcesProvider);
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchLayout = frameLayout;
        frameLayout.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        SearchField searchField = new SearchField(context, true, resourcesProvider) { // from class: org.telegram.ui.Components.TrendingStickersLayout.2
            @Override // org.telegram.ui.Components.SearchField
            public void onTextChange(String str) {
                TrendingStickersLayout.this.searchAdapter.search(str);
            }
        };
        this.searchView = searchField;
        searchField.setHint(LocaleController.getString(C2665R.string.SearchTrendingStickersHint));
        frameLayout.addView(searchField, LayoutHelper.createFrame(-1, -1, 48));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.TrendingStickersLayout.3
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return super.onInterceptTouchEvent(motionEvent) || delegate.onListViewInterceptTouchEvent(this, motionEvent);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                TrendingStickersLayout.this.motionEventCatchedByListView = true;
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (TrendingStickersLayout.this.glueToTopAnimator != null) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (TrendingStickersLayout.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // org.telegram.ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) (TrendingStickersLayout.this.topOffset + AndroidUtilities.dp(58.0f)));
            }
        };
        this.listView = recyclerListView;
        final RecyclerListView.OnItemClickListener onItemClickListener = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(view, i2);
            }
        };
        recyclerListView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$new$1(delegate, onItemClickListener, view, motionEvent);
            }
        });
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setItemAnimator(null);
        recyclerListView.setLayoutAnimation(null);
        FillLastGridLayoutManager fillLastGridLayoutManager = new FillLastGridLayoutManager(context, 5, AndroidUtilities.dp(58.0f), recyclerListView) { // from class: org.telegram.ui.Components.TrendingStickersLayout.4
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public boolean isLayoutRTL() {
                return LocaleController.isRTL;
            }

            @Override // org.telegram.ui.Components.FillLastGridLayoutManager
            public boolean shouldCalcLastItemHeight() {
                return TrendingStickersLayout.this.listView.getAdapter() == TrendingStickersLayout.this.searchAdapter;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
                int i3;
                View viewFindViewByPosition;
                if (TrendingStickersLayout.this.scrollFromAnimator) {
                    return super.scrollVerticallyBy(i2, recycler, state);
                }
                TrendingStickersLayout trendingStickersLayout = TrendingStickersLayout.this;
                int i4 = 0;
                if (trendingStickersLayout.glueToTopAnimator != null) {
                    return 0;
                }
                if (trendingStickersLayout.gluedToTop) {
                    while (true) {
                        i3 = 1;
                        if (i4 >= getChildCount()) {
                            break;
                        }
                        int childAdapterPosition = TrendingStickersLayout.this.listView.getChildAdapterPosition(getChildAt(i4));
                        if (childAdapterPosition < 1) {
                            i3 = childAdapterPosition;
                            break;
                        }
                        i4++;
                    }
                    if (i3 == 0 && (viewFindViewByPosition = TrendingStickersLayout.this.layoutManager.findViewByPosition(i3)) != null && viewFindViewByPosition.getTop() - i2 > AndroidUtilities.dp(58.0f)) {
                        i2 = viewFindViewByPosition.getTop() - AndroidUtilities.dp(58.0f);
                    }
                }
                return super.scrollVerticallyBy(i2, recycler, state);
            }
        };
        this.layoutManager = fillLastGridLayoutManager;
        recyclerListView.setLayoutManager(fillLastGridLayoutManager);
        fillLastGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.TrendingStickersLayout.5
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                RecyclerView.Adapter adapter = TrendingStickersLayout.this.listView.getAdapter();
                TrendingStickersAdapter trendingStickersAdapter2 = TrendingStickersLayout.this.adapter;
                TrendingStickersLayout trendingStickersLayout = TrendingStickersLayout.this;
                if (adapter == trendingStickersAdapter2) {
                    if ((trendingStickersLayout.adapter.cache.get(i2) instanceof Integer) || i2 >= TrendingStickersLayout.this.adapter.totalItems) {
                        return TrendingStickersLayout.this.adapter.stickersPerRow;
                    }
                    return 1;
                }
                return trendingStickersLayout.searchAdapter.getSpanSize(i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (TrendingStickersLayout.this.onScrollListener != null) {
                    TrendingStickersLayout.this.onScrollListener.onScrolled(TrendingStickersLayout.this.listView, i2, i3);
                }
                if (i3 <= 0 || TrendingStickersLayout.this.listView.getAdapter() != TrendingStickersLayout.this.adapter || !TrendingStickersLayout.this.loaded || TrendingStickersLayout.this.adapter.loadingMore || TrendingStickersLayout.this.adapter.endReached) {
                    return;
                }
                if (TrendingStickersLayout.this.layoutManager.findLastVisibleItemPosition() >= (TrendingStickersLayout.this.adapter.getItemCount() - ((TrendingStickersLayout.this.adapter.stickersPerRow + 1) * 10)) - 1) {
                    TrendingStickersLayout.this.adapter.loadMoreStickerSets();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (TrendingStickersLayout.this.onScrollListener != null) {
                    TrendingStickersLayout.this.onScrollListener.onScrollStateChanged(recyclerView, i2);
                }
            }
        });
        recyclerListView.setAdapter(trendingStickersAdapter);
        recyclerListView.setOnItemClickListener(onItemClickListener);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        View view = new View(context);
        this.shadowView = view;
        view.setBackgroundColor(getThemedColor(Theme.key_dialogShadowLine));
        view.setAlpha(0.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight());
        layoutParams.topMargin = AndroidUtilities.dp(58.0f);
        addView(view, layoutParams);
        addView(frameLayout, LayoutHelper.createFrame(-1, 58, 51));
        updateColors();
        NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
        notificationCenter.addObserver(this, NotificationCenter.stickersDidLoad);
        notificationCenter.addObserver(this, NotificationCenter.featuredStickersDidLoad);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        TLRPC.StickerSetCovered setForPosition;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        StickersSearchAdapter stickersSearchAdapter = this.searchAdapter;
        if (adapter == stickersSearchAdapter) {
            setForPosition = stickersSearchAdapter.getSetForPosition(i);
        } else {
            setForPosition = i < this.adapter.totalItems ? (TLRPC.StickerSetCovered) this.adapter.positionsToSets.get(i) : null;
        }
        if (setForPosition != null) {
            showStickerSet(setForPosition.set);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(Delegate delegate, RecyclerListView.OnItemClickListener onItemClickListener, View view, MotionEvent motionEvent) {
        return delegate.onListViewTouchEvent(this.listView, onItemClickListener, motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Integer num;
        super.onLayout(z, i, i2, i3, i4);
        if (this.wasLayout) {
            return;
        }
        this.wasLayout = true;
        this.adapter.refreshStickerSets();
        if (this.scrollToSet == null || (num = (Integer) this.adapter.setsToPosition.get(this.scrollToSet)) == null) {
            return;
        }
        this.layoutManager.scrollToPositionWithOffset(num.intValue(), (-this.listView.getPaddingTop()) + AndroidUtilities.dp(58.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        int y;
        int y2;
        float f = this.highlightProgress;
        if (f == 0.0f || this.scrollToSet == null) {
            canvas2 = canvas;
        } else {
            float f2 = f - 0.0053333333f;
            this.highlightProgress = f2;
            if (f2 < 0.0f) {
                this.highlightProgress = 0.0f;
            } else {
                invalidate();
            }
            Integer num = (Integer) this.adapter.setsToPosition.get(this.scrollToSet);
            if (num != null) {
                View viewFindViewByPosition = this.layoutManager.findViewByPosition(num.intValue());
                if (viewFindViewByPosition != null) {
                    y = (int) viewFindViewByPosition.getY();
                    y2 = ((int) viewFindViewByPosition.getY()) + viewFindViewByPosition.getMeasuredHeight();
                } else {
                    y = -1;
                    y2 = -1;
                }
                View viewFindViewByPosition2 = this.layoutManager.findViewByPosition(num.intValue() + 1);
                if (viewFindViewByPosition2 != null) {
                    if (viewFindViewByPosition == null) {
                        y = (int) viewFindViewByPosition2.getY();
                    }
                    y2 = ((int) viewFindViewByPosition2.getY()) + viewFindViewByPosition2.getMeasuredHeight();
                }
                if (viewFindViewByPosition != null || viewFindViewByPosition2 != null) {
                    this.paint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
                    float f3 = this.highlightProgress;
                    this.paint.setAlpha((int) ((f3 < 0.06f ? f3 / 0.06f : 1.0f) * 25.5f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, y, getMeasuredWidth(), y2, this.paint);
                }
            }
        }
        super.dispatchDraw(canvas2);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateLastItemInAdapter();
        this.wasLayout = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.motionEventCatchedByListView = false;
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (!this.motionEventCatchedByListView) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            this.listView.dispatchTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
        return zDispatchTouchEvent;
    }

    private void showStickerSet(TLRPC.StickerSet stickerSet) {
        showStickerSet(stickerSet, null);
    }

    public void showStickerSet(TLRPC.StickerSet stickerSet, TLRPC.InputStickerSet inputStickerSet) {
        if (stickerSet != null) {
            inputStickerSet = new TLRPC.TL_inputStickerSetID();
            inputStickerSet.access_hash = stickerSet.access_hash;
            inputStickerSet.id = stickerSet.id;
        }
        if (inputStickerSet != null) {
            showStickerSet(inputStickerSet);
        }
    }

    private void showStickerSet(final TLRPC.InputStickerSet inputStickerSet) {
        StickersAlert stickersAlert = new StickersAlert(getContext(), this.parentFragment, inputStickerSet, null, this.delegate.canSendSticker() ? new StickersAlert.StickersAlertDelegate() { // from class: org.telegram.ui.Components.TrendingStickersLayout.7
            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
            /* JADX INFO: renamed from: onStickerSelected */
            public void lambda$onStickerSelected$118(TLRPC.Document document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, boolean z2, int i, int i2) {
                TrendingStickersLayout.this.delegate.onStickerSelected(document, obj, z, z2, i);
            }

            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
            public boolean canSchedule() {
                return TrendingStickersLayout.this.delegate.canSchedule();
            }

            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertDelegate
            public boolean isInScheduleMode() {
                return TrendingStickersLayout.this.delegate.isInScheduleMode();
            }
        } : null, this.resourcesProvider, false);
        stickersAlert.setShowTooltipWhenToggle(false);
        stickersAlert.setInstallDelegate(new StickersAlert.StickersAlertInstallDelegate() { // from class: org.telegram.ui.Components.TrendingStickersLayout.8
            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertInstallDelegate
            public void onStickerSetUninstalled() {
            }

            @Override // org.telegram.ui.Components.StickersAlert.StickersAlertInstallDelegate
            public void onStickerSetInstalled() {
                if (TrendingStickersLayout.this.listView.getAdapter() == TrendingStickersLayout.this.adapter) {
                    for (int i = 0; i < TrendingStickersLayout.this.adapter.sets.size(); i++) {
                        TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) TrendingStickersLayout.this.adapter.sets.get(i);
                        if (stickerSetCovered.set.id == inputStickerSet.id) {
                            TrendingStickersLayout.this.adapter.installStickerSet(stickerSetCovered, null);
                            return;
                        }
                    }
                    return;
                }
                TrendingStickersLayout.this.searchAdapter.installStickerSet(inputStickerSet);
            }
        });
        this.parentFragment.showDialog(stickersAlert);
    }

    public void recycle() {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
        notificationCenter.removeObserver(this, NotificationCenter.stickersDidLoad);
        notificationCenter.removeObserver(this, NotificationCenter.featuredStickersDidLoad);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.stickersDidLoad) {
            if (((Integer) objArr[0]).intValue() == 0) {
                if (this.loaded) {
                    updateVisibleTrendingSets();
                    return;
                } else {
                    this.adapter.refreshStickerSets();
                    return;
                }
            }
            return;
        }
        if (i == NotificationCenter.featuredStickersDidLoad) {
            if (this.hash != MediaDataController.getInstance(this.currentAccount).getFeaturedStickersHashWithoutUnread(false)) {
                this.loaded = false;
            }
            if (this.loaded) {
                updateVisibleTrendingSets();
            } else {
                this.adapter.refreshStickerSets();
            }
        }
    }

    public void setOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        this.onScrollListener = onScrollListener;
    }

    public void setParentFragment(BaseFragment baseFragment) {
        this.parentFragment = baseFragment;
    }

    public void setContentViewPaddingTop(int i) {
        int iDp = i + AndroidUtilities.dp(58.0f);
        if (this.listView.getPaddingTop() != iDp) {
            this.ignoreLayout = true;
            this.listView.setPadding(0, iDp, 0, 0);
            this.ignoreLayout = false;
        }
    }

    private void updateLastItemInAdapter() {
        this.listView.getAdapter().notifyItemChanged(r1.getItemCount() - 1);
    }

    public int getContentTopOffset() {
        return this.topOffset;
    }

    public boolean update() {
        RecyclerListView recyclerListView;
        int childCount = this.listView.getChildCount();
        RecyclerListView recyclerListView2 = this.listView;
        if (childCount <= 0) {
            int paddingTop = recyclerListView2.getPaddingTop();
            this.topOffset = paddingTop;
            this.listView.setTopGlowOffset(paddingTop);
            this.searchLayout.setTranslationY(this.topOffset);
            this.shadowView.setTranslationY(this.topOffset);
            setShadowVisible(false);
            return true;
        }
        View childAt = recyclerListView2.getChildAt(0);
        int i = 1;
        while (true) {
            int childCount2 = this.listView.getChildCount();
            recyclerListView = this.listView;
            if (i >= childCount2) {
                break;
            }
            View childAt2 = recyclerListView.getChildAt(i);
            if (childAt2.getTop() < childAt.getTop()) {
                childAt = childAt2;
            }
            i++;
        }
        RecyclerListView.Holder holder = (RecyclerListView.Holder) recyclerListView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - AndroidUtilities.dp(58.0f);
        int i2 = (top <= 0 || holder == null || holder.getAdapterPosition() != 0) ? 0 : top;
        setShadowVisible(top < 0);
        if (this.topOffset == i2) {
            return false;
        }
        this.topOffset = i2;
        this.listView.setTopGlowOffset(i2 + AndroidUtilities.dp(58.0f));
        this.searchLayout.setTranslationY(this.topOffset);
        this.shadowView.setTranslationY(this.topOffset);
        return true;
    }

    private void updateVisibleTrendingSets() {
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        if (adapter != null) {
            adapter.notifyItemRangeChanged(0, adapter.getItemCount(), 0);
        }
    }

    private void setShadowVisible(boolean z) {
        if (this.shadowVisible != z) {
            this.shadowVisible = z;
            this.shadowView.animate().alpha(z ? 1.0f : 0.0f).setDuration(200L).start();
        }
    }

    public void updateColors() {
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        TrendingStickersAdapter trendingStickersAdapter = this.adapter;
        if (adapter == trendingStickersAdapter) {
            trendingStickersAdapter.updateColors(this.listView);
        } else {
            this.searchAdapter.updateColors(this.listView);
        }
    }

    public void getThemeDescriptions(List<ThemeDescription> list, ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate) {
        this.searchView.getThemeDescriptions(list);
        this.adapter.getThemeDescriptions(list, this.listView, themeDescriptionDelegate);
        this.searchAdapter.getThemeDescriptions(list, this.listView, themeDescriptionDelegate);
        list.add(new ThemeDescription(this.shadowView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_dialogShadowLine));
        list.add(new ThemeDescription(this.searchLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_dialogBackground));
    }

    public void glueToTop(boolean z) {
        this.gluedToTop = z;
        if (z) {
            if (getContentTopOffset() <= 0 || this.glueToTopAnimator != null) {
                return;
            }
            final int contentTopOffset = getContentTopOffset();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.glueToTopAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout.9
                int dy = 0;

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int iFloatValue = (int) (contentTopOffset * ((Float) valueAnimator.getAnimatedValue()).floatValue());
                    TrendingStickersLayout.this.scrollFromAnimator = true;
                    TrendingStickersLayout.this.listView.scrollBy(0, iFloatValue - this.dy);
                    TrendingStickersLayout.this.scrollFromAnimator = false;
                    this.dy = iFloatValue;
                }
            });
            this.glueToTopAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TrendingStickersLayout.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TrendingStickersLayout.this.glueToTopAnimator = null;
                }
            });
            this.glueToTopAnimator.setDuration(250L);
            this.glueToTopAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            this.glueToTopAnimator.start();
            return;
        }
        ValueAnimator valueAnimator = this.glueToTopAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.glueToTopAnimator.cancel();
            this.glueToTopAnimator = null;
        }
    }

    public class TrendingStickersAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        private boolean endReached;
        private boolean loadingMore;
        private int totalItems;
        private final SparseArray<Object> cache = new SparseArray<>();
        private final ArrayList<TLRPC.StickerSetCovered> sets = new ArrayList<>();
        private final SparseArray<TLRPC.StickerSetCovered> positionsToSets = new SparseArray<>();
        private final HashMap<TLRPC.StickerSetCovered, Integer> setsToPosition = new HashMap<>();
        private final ArrayList<TLRPC.StickerSetCovered> otherPacks = new ArrayList<>();
        private int stickersPerRow = 5;

        public TrendingStickersAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.totalItems + 1;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 5;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == getItemCount() - 1) {
                return 3;
            }
            Object obj = this.cache.get(i);
            if (obj == null) {
                return 1;
            }
            if (obj instanceof TLRPC.Document) {
                return 0;
            }
            return obj.equals(-1) ? 4 : 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) view.getParent();
            TLRPC.StickerSetCovered stickerSet = featuredStickerSetInfoCell.getStickerSet();
            if (TrendingStickersLayout.this.installingStickerSets.indexOfKey(stickerSet.set.id) >= 0 || TrendingStickersLayout.this.removingStickerSets.indexOfKey(stickerSet.set.id) >= 0) {
                return;
            }
            if (featuredStickerSetInfoCell.isInstalled()) {
                TrendingStickersLayout.this.removingStickerSets.put(stickerSet.set.id, stickerSet);
                TrendingStickersLayout.this.delegate.onStickerSetRemove(stickerSet);
            } else {
                installStickerSet(stickerSet, featuredStickerSetInfoCell);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            View view2;
            View emptyCell;
            if (i == 0) {
                StickerEmojiCell stickerEmojiCell = new StickerEmojiCell(this.context, false, TrendingStickersLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.TrendingStickersLayout.TrendingStickersAdapter.1
                    @Override // android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(82.0f), TLObject.FLAG_30));
                    }
                };
                stickerEmojiCell.getImageView().setLayerNum(3);
                view = stickerEmojiCell;
            } else {
                if (i == 1) {
                    emptyCell = new EmptyCell(this.context);
                } else {
                    if (i == 2) {
                        FeaturedStickerSetInfoCell featuredStickerSetInfoCell = new FeaturedStickerSetInfoCell(this.context, 17, true, true, TrendingStickersLayout.this.resourcesProvider);
                        featuredStickerSetInfoCell.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                this.f$0.lambda$onCreateViewHolder$0(view3);
                            }
                        });
                        view2 = featuredStickerSetInfoCell;
                    } else if (i == 3) {
                        emptyCell = new View(this.context);
                    } else if (i == 4) {
                        emptyCell = new GraySectionCell(this.context, TrendingStickersLayout.this.resourcesProvider);
                    } else if (i != 5) {
                        view2 = null;
                    } else {
                        FeaturedStickerSetCell2 featuredStickerSetCell2 = new FeaturedStickerSetCell2(this.context, TrendingStickersLayout.this.resourcesProvider);
                        featuredStickerSetCell2.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                this.f$0.lambda$onCreateViewHolder$1(view3);
                            }
                        });
                        featuredStickerSetCell2.getImageView().setLayerNum(3);
                        view = featuredStickerSetCell2;
                    }
                    return new RecyclerListView.Holder(view2);
                }
                view2 = emptyCell;
                return new RecyclerListView.Holder(view2);
            }
            view2 = view;
            return new RecyclerListView.Holder(view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(View view) {
            FeaturedStickerSetCell2 featuredStickerSetCell2 = (FeaturedStickerSetCell2) view.getParent();
            TLRPC.StickerSetCovered stickerSet = featuredStickerSetCell2.getStickerSet();
            if (TrendingStickersLayout.this.installingStickerSets.indexOfKey(stickerSet.set.id) >= 0 || TrendingStickersLayout.this.removingStickerSets.indexOfKey(stickerSet.set.id) >= 0) {
                return;
            }
            if (featuredStickerSetCell2.isInstalled()) {
                TrendingStickersLayout.this.removingStickerSets.put(stickerSet.set.id, stickerSet);
                TrendingStickersLayout.this.delegate.onStickerSetRemove(stickerSet);
            } else {
                installStickerSet(stickerSet, featuredStickerSetCell2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((StickerEmojiCell) viewHolder.itemView).setSticker((TLRPC.Document) this.cache.get(i), this.positionsToSets.get(i), false);
            } else {
                if (itemViewType == 1) {
                    ((EmptyCell) viewHolder.itemView).setHeight(AndroidUtilities.dp(82.0f));
                    return;
                }
                if (itemViewType != 2) {
                    if (itemViewType == 4) {
                        ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString(C2665R.string.OtherStickers));
                        return;
                    } else if (itemViewType != 5) {
                        return;
                    }
                }
                bindStickerSetCell(viewHolder.itemView, i, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
            if (list.contains(0)) {
                int itemViewType = viewHolder.getItemViewType();
                if (itemViewType == 2 || itemViewType == 5) {
                    bindStickerSetCell(viewHolder.itemView, i, true);
                    return;
                }
                return;
            }
            super.onBindViewHolder(viewHolder, i, list);
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x013a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void bindStickerSetCell(View view, int i, boolean z) {
            TLRPC.StickerSetCovered stickerSetCovered;
            boolean z2;
            boolean z3;
            MediaDataController mediaDataController = MediaDataController.getInstance(TrendingStickersLayout.this.currentAccount);
            int i2 = this.totalItems;
            ArrayList<TLRPC.StickerSetCovered> arrayList = this.sets;
            boolean z4 = true;
            if (i < i2) {
                stickerSetCovered = arrayList.get(((Integer) this.cache.get(i)).intValue());
                ArrayList<Long> unreadStickerSets = mediaDataController.getUnreadStickerSets();
                boolean z5 = unreadStickerSets != null && unreadStickerSets.contains(Long.valueOf(stickerSetCovered.set.id));
                if (z5) {
                    mediaDataController.markFeaturedStickersByIdAsRead(false, stickerSetCovered.set.id);
                }
                z2 = z5;
            } else {
                stickerSetCovered = arrayList.get(((Integer) this.cache.get(i)).intValue());
                z2 = false;
            }
            TLRPC.StickerSetCovered stickerSetCovered2 = stickerSetCovered;
            mediaDataController.preloadStickerSetThumb(stickerSetCovered2);
            int i3 = 0;
            while (true) {
                if (i3 >= TrendingStickersLayout.this.primaryInstallingStickerSets.length) {
                    z3 = false;
                    break;
                }
                if (TrendingStickersLayout.this.primaryInstallingStickerSets[i3] != null) {
                    TLRPC.TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(TrendingStickersLayout.this.currentAccount).getStickerSetById(TrendingStickersLayout.this.primaryInstallingStickerSets[i3].set.id);
                    if (stickerSetById != null && !stickerSetById.set.archived) {
                        TrendingStickersLayout.this.primaryInstallingStickerSets[i3] = null;
                    } else if (TrendingStickersLayout.this.primaryInstallingStickerSets[i3].set.id == stickerSetCovered2.set.id) {
                        z3 = true;
                        break;
                    }
                }
                i3++;
            }
            boolean zIsStickerPackInstalled = mediaDataController.isStickerPackInstalled(stickerSetCovered2.set.id);
            boolean z6 = TrendingStickersLayout.this.installingStickerSets.indexOfKey(stickerSetCovered2.set.id) >= 0;
            boolean z7 = TrendingStickersLayout.this.removingStickerSets.indexOfKey(stickerSetCovered2.set.id) >= 0;
            if (z6 && zIsStickerPackInstalled) {
                TrendingStickersLayout.this.installingStickerSets.remove(stickerSetCovered2.set.id);
                z6 = false;
            } else if (z7 && !zIsStickerPackInstalled) {
                TrendingStickersLayout.this.removingStickerSets.remove(stickerSetCovered2.set.id);
            }
            FeaturedStickerSetInfoCell featuredStickerSetInfoCell = (FeaturedStickerSetInfoCell) view;
            featuredStickerSetInfoCell.setStickerSet(stickerSetCovered2, z2, z, 0, 0, z3);
            featuredStickerSetInfoCell.setAddDrawProgress(!z3 && z6, z);
            if (i > 0) {
                int i4 = i - 1;
                if (this.cache.get(i4) != null && this.cache.get(i4).equals(-1)) {
                    z4 = false;
                }
            }
            featuredStickerSetInfoCell.setNeedDivider(z4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        
            r1 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0063, code lost:
        
            if (r1 >= r6.this$0.primaryInstallingStickerSets.length) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
        
            if (r6.this$0.primaryInstallingStickerSets[r1] != null) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
        
            r6.this$0.primaryInstallingStickerSets[r1] = r7;
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
        
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
        
            r1 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
        
            if (r1 != false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x007f, code lost:
        
            if (r8 == null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0083, code lost:
        
            if ((r8 instanceof org.telegram.ui.Cells.FeaturedStickerSetCell2) == false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        
            ((org.telegram.ui.Cells.FeaturedStickerSetCell2) r8).setDrawProgress(true, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
        
            if ((r8 instanceof org.telegram.ui.Cells.FeaturedStickerSetInfoCell) == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
        
            ((org.telegram.ui.Cells.FeaturedStickerSetInfoCell) r8).setAddDrawProgress(true, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0096, code lost:
        
            r6.this$0.installingStickerSets.put(r7.set.id, r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a3, code lost:
        
            if (r8 == null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a5, code lost:
        
            r6.this$0.delegate.onStickerSetAdd(r7, r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00ae, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00af, code lost:
        
            r8 = r6.positionsToSets.size();
            r1 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b6, code lost:
        
            if (r1 >= r8) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b8, code lost:
        
            r2 = r6.positionsToSets.get(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00c0, code lost:
        
            if (r2 == null) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00cc, code lost:
        
            if (r2.set.id != r7.set.id) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ce, code lost:
        
            notifyItemChanged(r1, 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00d5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00d6, code lost:
        
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void installStickerSet(TLRPC.StickerSetCovered stickerSetCovered, View view) {
            int i = 0;
            while (true) {
                if (i >= TrendingStickersLayout.this.primaryInstallingStickerSets.length) {
                    break;
                }
                if (TrendingStickersLayout.this.primaryInstallingStickerSets[i] != null) {
                    TLRPC.TL_messages_stickerSet stickerSetById = MediaDataController.getInstance(TrendingStickersLayout.this.currentAccount).getStickerSetById(TrendingStickersLayout.this.primaryInstallingStickerSets[i].set.id);
                    if (stickerSetById != null && !stickerSetById.set.archived) {
                        TrendingStickersLayout.this.primaryInstallingStickerSets[i] = null;
                        break;
                    } else if (TrendingStickersLayout.this.primaryInstallingStickerSets[i].set.id == stickerSetCovered.set.id) {
                        return;
                    }
                }
                i++;
            }
        }

        public void refreshStickerSets() {
            int i;
            int measuredWidth = TrendingStickersLayout.this.getMeasuredWidth();
            if (measuredWidth != 0) {
                this.stickersPerRow = Math.max(5, measuredWidth / AndroidUtilities.dp(72.0f));
                if (TrendingStickersLayout.this.layoutManager.getSpanCount() != this.stickersPerRow) {
                    TrendingStickersLayout.this.layoutManager.setSpanCount(this.stickersPerRow);
                    TrendingStickersLayout.this.loaded = false;
                }
            }
            if (TrendingStickersLayout.this.loaded) {
                return;
            }
            this.cache.clear();
            this.positionsToSets.clear();
            this.setsToPosition.clear();
            this.sets.clear();
            this.totalItems = 0;
            MediaDataController mediaDataController = MediaDataController.getInstance(TrendingStickersLayout.this.currentAccount);
            ArrayList arrayList = new ArrayList(mediaDataController.getFeaturedStickerSets());
            int size = arrayList.size();
            arrayList.addAll(this.otherPacks);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int iCeil = 1;
                if (i2 >= arrayList.size()) {
                    break;
                }
                TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) arrayList.get(i2);
                if (!stickerSetCovered.covers.isEmpty() || stickerSetCovered.cover != null) {
                    if (i2 == size) {
                        SparseArray<Object> sparseArray = this.cache;
                        int i4 = this.totalItems;
                        this.totalItems = i4 + 1;
                        sparseArray.put(i4, -1);
                    }
                    this.sets.add(stickerSetCovered);
                    this.positionsToSets.put(this.totalItems, stickerSetCovered);
                    this.setsToPosition.put(stickerSetCovered, Integer.valueOf(this.totalItems));
                    SparseArray<Object> sparseArray2 = this.cache;
                    int i5 = this.totalItems;
                    this.totalItems = i5 + 1;
                    int i6 = i3 + 1;
                    sparseArray2.put(i5, Integer.valueOf(i3));
                    if (!stickerSetCovered.covers.isEmpty()) {
                        iCeil = (int) Math.ceil(stickerSetCovered.covers.size() / this.stickersPerRow);
                        for (int i7 = 0; i7 < stickerSetCovered.covers.size(); i7++) {
                            this.cache.put(this.totalItems + i7, stickerSetCovered.covers.get(i7));
                        }
                    } else {
                        this.cache.put(this.totalItems, stickerSetCovered.cover);
                    }
                    int i8 = 0;
                    while (true) {
                        i = this.stickersPerRow;
                        if (i8 >= iCeil * i) {
                            break;
                        }
                        this.positionsToSets.put(this.totalItems + i8, stickerSetCovered);
                        i8++;
                    }
                    this.totalItems += iCeil * i;
                    i3 = i6;
                }
                i2++;
            }
            if (this.totalItems != 0) {
                TrendingStickersLayout.this.loaded = true;
                TrendingStickersLayout.this.hash = mediaDataController.getFeaturedStickersHashWithoutUnread(false);
            }
            notifyDataSetChanged();
        }

        public void loadMoreStickerSets() {
            if (!TrendingStickersLayout.this.loaded || this.loadingMore || this.endReached) {
                return;
            }
            this.loadingMore = true;
            TLRPC.TL_messages_getOldFeaturedStickers tL_messages_getOldFeaturedStickers = new TLRPC.TL_messages_getOldFeaturedStickers();
            tL_messages_getOldFeaturedStickers.offset = this.otherPacks.size();
            tL_messages_getOldFeaturedStickers.limit = 40;
            ConnectionsManager.getInstance(TrendingStickersLayout.this.currentAccount).sendRequest(tL_messages_getOldFeaturedStickers, new RequestDelegate() { // from class: org.telegram.ui.Components.TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadMoreStickerSets$3(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadMoreStickerSets$3(final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadMoreStickerSets$2(tL_error, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadMoreStickerSets$2(TLRPC.TL_error tL_error, TLObject tLObject) {
            int iCeil;
            int i;
            this.loadingMore = false;
            if (tL_error == null && (tLObject instanceof TLRPC.TL_messages_featuredStickers)) {
                ArrayList<TLRPC.StickerSetCovered> arrayList = ((TLRPC.TL_messages_featuredStickers) tLObject).sets;
                if (arrayList.size() < 40) {
                    this.endReached = true;
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                if (this.otherPacks.isEmpty()) {
                    SparseArray<Object> sparseArray = this.cache;
                    int i2 = this.totalItems;
                    this.totalItems = i2 + 1;
                    sparseArray.put(i2, -1);
                }
                this.otherPacks.addAll(arrayList);
                int size = this.sets.size();
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    TLRPC.StickerSetCovered stickerSetCovered = arrayList.get(i3);
                    if (!stickerSetCovered.covers.isEmpty() || stickerSetCovered.cover != null) {
                        this.sets.add(stickerSetCovered);
                        this.positionsToSets.put(this.totalItems, stickerSetCovered);
                        SparseArray<Object> sparseArray2 = this.cache;
                        int i4 = this.totalItems;
                        this.totalItems = i4 + 1;
                        int i5 = size + 1;
                        sparseArray2.put(i4, Integer.valueOf(size));
                        if (!stickerSetCovered.covers.isEmpty()) {
                            iCeil = (int) Math.ceil(stickerSetCovered.covers.size() / this.stickersPerRow);
                            for (int i6 = 0; i6 < stickerSetCovered.covers.size(); i6++) {
                                this.cache.put(this.totalItems + i6, stickerSetCovered.covers.get(i6));
                            }
                        } else {
                            this.cache.put(this.totalItems, stickerSetCovered.cover);
                            iCeil = 1;
                        }
                        int i7 = 0;
                        while (true) {
                            i = this.stickersPerRow;
                            if (i7 >= iCeil * i) {
                                break;
                            }
                            this.positionsToSets.put(this.totalItems + i7, stickerSetCovered);
                            i7++;
                        }
                        this.totalItems += iCeil * i;
                        size = i5;
                    }
                }
                notifyDataSetChanged();
                return;
            }
            this.endReached = true;
        }

        public void updateColors(RecyclerListView recyclerListView) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerListView.getChildAt(i);
                if (childAt instanceof FeaturedStickerSetInfoCell) {
                    ((FeaturedStickerSetInfoCell) childAt).updateColors();
                } else if (childAt instanceof FeaturedStickerSetCell2) {
                    ((FeaturedStickerSetCell2) childAt).updateColors();
                }
            }
        }

        public void getThemeDescriptions(List<ThemeDescription> list, RecyclerListView recyclerListView, ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate) {
            FeaturedStickerSetInfoCell.createThemeDescriptions(list, recyclerListView, themeDescriptionDelegate);
            FeaturedStickerSetCell2.createThemeDescriptions(list, recyclerListView, themeDescriptionDelegate);
            GraySectionCell.createThemeDescriptions(list, recyclerListView);
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
