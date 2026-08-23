package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BottomSheetWithRecyclerListView extends BottomSheet {
    protected ActionBar actionBar;
    protected boolean actionBarIgnoreTouchEvents;
    protected AnimatedFloat actionBarSlideProgress;
    private ActionBarType actionBarType;
    private BaseFragment baseFragment;
    protected boolean centerTitle;
    protected boolean clipToActionBar;
    protected int contentHeight;
    EditTextEmoji editTextEmoji;
    protected boolean handleOffset;
    private RectF handleRect;
    public final boolean hasFixedSize;
    protected int headerHeight;
    protected int headerMoveTop;
    protected int headerPaddingBottom;
    protected int headerPaddingTop;
    private final Drawable headerShadowDrawable;
    protected int headerTotalHeight;
    protected boolean ignoreTouchActionBar;
    private float lastTop;
    protected LinearLayoutManager layoutManager;
    public NestedSizeNotifierLayout nestedSizeNotifierLayout;
    protected RecyclerListView recyclerListView;
    private boolean restore;
    public boolean reverseLayout;
    private int savedScrollOffset;
    private int savedScrollPosition;
    private float shadowAlpha;
    private boolean showHandle;
    boolean showShadow;
    public final boolean stackFromEnd;
    protected boolean takeTranslationIntoAccount;
    public float topPadding;
    boolean wasDrawn;

    /* JADX INFO: loaded from: classes7.dex */
    public enum ActionBarType {
        FADING,
        SLIDING
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean canHighlightChildAt(View view, float f, float f2) {
        return true;
    }

    protected abstract RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView);

    protected abstract CharSequence getTitle();

    protected boolean needPaddingShadow() {
        return true;
    }

    protected void onPreDraw(Canvas canvas, int i, float f) {
    }

    protected void onPreMeasure(int i, int i2) {
    }

    public void onSheetTop(float f) {
    }

    public void onViewCreated(FrameLayout frameLayout) {
    }

    protected boolean shouldDrawBackground() {
        return true;
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2) {
        this(baseFragment, z, z2, false, baseFragment == null ? null : baseFragment.getResourceProvider());
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment.getParentActivity(), baseFragment, z, z2, z3, resourcesProvider);
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2, ActionBarType actionBarType) {
        this(baseFragment.getParentActivity(), baseFragment, z, z2, false, actionBarType, baseFragment.getResourceProvider());
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        this(context, baseFragment, z, z2, z3, ActionBarType.FADING, resourcesProvider);
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, boolean z2, boolean z3, ActionBarType actionBarType, Theme.ResourcesProvider resourcesProvider) {
        this(context, baseFragment, z, z2, z3, false, actionBarType, resourcesProvider);
    }

    public void setEditTextEmoji(EditTextEmoji editTextEmoji) {
        this.editTextEmoji = editTextEmoji;
    }

    public BottomSheetWithRecyclerListView(Context context, BaseFragment baseFragment, boolean z, final boolean z2, boolean z3, final boolean z4, ActionBarType actionBarType, Theme.ResourcesProvider resourcesProvider) {
        final SizeNotifierFrameLayout sizeNotifierFrameLayout;
        super(context, z, resourcesProvider);
        this.topPadding = 0.4f;
        this.showShadow = true;
        this.shadowAlpha = 1.0f;
        this.showHandle = false;
        this.handleRect = new RectF();
        this.actionBarType = ActionBarType.FADING;
        this.headerTotalHeight = 0;
        this.headerHeight = 0;
        this.headerPaddingTop = 0;
        this.headerPaddingBottom = 0;
        this.headerMoveTop = 0;
        this.ignoreTouchActionBar = true;
        this.actionBarIgnoreTouchEvents = false;
        this.takeTranslationIntoAccount = false;
        this.savedScrollPosition = -1;
        this.baseFragment = baseFragment;
        this.hasFixedSize = z2;
        this.stackFromEnd = z4;
        this.headerShadowDrawable = ContextCompat.getDrawable(context, C2484R.drawable.header_shadow).mutate();
        if (z3) {
            NestedSizeNotifierLayout nestedSizeNotifierLayout = new NestedSizeNotifierLayout(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.1
                @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    if (z4) {
                        i2 = View.MeasureSpec.makeMeasureSpec(BottomSheetWithRecyclerListView.this.contentHeight, TLObject.FLAG_30);
                    }
                    super.onMeasure(i, i2);
                }

                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.nestedSizeNotifierLayout = nestedSizeNotifierLayout;
            sizeNotifierFrameLayout = nestedSizeNotifierLayout;
        } else {
            sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.2
                private boolean ignoreLayout = false;

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    if (z4) {
                        i2 = View.MeasureSpec.makeMeasureSpec(BottomSheetWithRecyclerListView.this.contentHeight, TLObject.FLAG_30);
                    }
                    if (BottomSheetWithRecyclerListView.this.editTextEmoji != null) {
                        onMeasureInternal(i, i2);
                    } else {
                        super.onMeasure(i, i2);
                    }
                }

                private void onMeasureInternal(int i, int i2) {
                    int i3;
                    EditTextEmoji editTextEmoji;
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    setMeasuredDimension(size, size2);
                    EditTextEmoji editTextEmoji2 = BottomSheetWithRecyclerListView.this.editTextEmoji;
                    int i4 = 0;
                    if (editTextEmoji2 != null && !editTextEmoji2.isWaitingForKeyboardOpen() && AndroidUtilities.dp(20.0f) >= 0 && !BottomSheetWithRecyclerListView.this.editTextEmoji.isPopupShowing() && !BottomSheetWithRecyclerListView.this.editTextEmoji.isAnimatePopupClosing()) {
                        this.ignoreLayout = true;
                        BottomSheetWithRecyclerListView.this.editTextEmoji.hideEmojiView();
                        this.ignoreLayout = false;
                    }
                    if (AndroidUtilities.dp(20.0f) >= 0) {
                        int emojiPadding = (((BottomSheet) BottomSheetWithRecyclerListView.this).keyboardVisible || (editTextEmoji = BottomSheetWithRecyclerListView.this.editTextEmoji) == null) ? 0 : editTextEmoji.getEmojiPadding();
                        if (!AndroidUtilities.isInMultiwindow) {
                            size2 -= emojiPadding;
                            i2 = View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30);
                        }
                    }
                    int i5 = i2;
                    int childCount = getChildCount();
                    while (i4 < childCount) {
                        View childAt = getChildAt(i4);
                        if (childAt == null || childAt.getVisibility() == 8) {
                            i3 = i;
                        } else {
                            EditTextEmoji editTextEmoji3 = BottomSheetWithRecyclerListView.this.editTextEmoji;
                            if (editTextEmoji3 != null && editTextEmoji3.isPopupView(childAt)) {
                                if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                    if (AndroidUtilities.isTablet()) {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                                    } else {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((size2 - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                                    }
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                                }
                                i3 = i;
                            } else {
                                i3 = i;
                                measureChildWithMargins(childAt, i3, 0, i5, 0);
                            }
                        }
                        i4++;
                        i = i3;
                    }
                }

                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x00c8  */
                @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                protected void onLayout(boolean z5, int i, int i2, int i3, int i4) {
                    int paddingRight;
                    int i5;
                    int paddingLeft;
                    int i6;
                    int i7;
                    int paddingTop;
                    int measuredHeight;
                    int measuredHeight2;
                    if (BottomSheetWithRecyclerListView.this.editTextEmoji == null) {
                        super.onLayout(z5, i, i2, i3, i4);
                        return;
                    }
                    int childCount = getChildCount();
                    int iMeasureKeyboardHeight = measureKeyboardHeight();
                    int paddingBottom = getPaddingBottom();
                    if (!((BottomSheet) BottomSheetWithRecyclerListView.this).keyboardVisible && BottomSheetWithRecyclerListView.this.editTextEmoji != null && iMeasureKeyboardHeight <= AndroidUtilities.dp(20.0f) && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                        paddingBottom += BottomSheetWithRecyclerListView.this.editTextEmoji.getEmojiPadding();
                    }
                    setBottomClip(paddingBottom);
                    for (int i8 = 0; i8 < childCount; i8++) {
                        View childAt = getChildAt(i8);
                        if (childAt.getVisibility() != 8) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                            int measuredWidth = childAt.getMeasuredWidth();
                            int measuredHeight3 = childAt.getMeasuredHeight();
                            int i9 = layoutParams.gravity;
                            if (i9 == -1) {
                                i9 = 51;
                            }
                            int i10 = i9 & 112;
                            int i11 = i9 & 7;
                            if (i11 == 1) {
                                paddingRight = (((i3 - i) - measuredWidth) / 2) + layoutParams.leftMargin;
                                i5 = layoutParams.rightMargin;
                            } else if (i11 == 5) {
                                paddingRight = (((i3 - i) - measuredWidth) - layoutParams.rightMargin) - getPaddingRight();
                                i5 = ((BottomSheet) BottomSheetWithRecyclerListView.this).backgroundPaddingLeft;
                            } else {
                                paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                                if (i10 != 16) {
                                    i6 = ((((i4 - paddingBottom) - i2) - measuredHeight3) / 2) + layoutParams.topMargin;
                                    i7 = layoutParams.bottomMargin;
                                } else {
                                    if (i10 == 48) {
                                        paddingTop = layoutParams.topMargin + getPaddingTop();
                                    } else if (i10 == 80) {
                                        i6 = ((i4 - paddingBottom) - i2) - measuredHeight3;
                                        i7 = layoutParams.bottomMargin;
                                    } else {
                                        paddingTop = layoutParams.topMargin;
                                    }
                                    if (childAt instanceof EmojiView) {
                                        if (AndroidUtilities.isTablet()) {
                                            measuredHeight = getMeasuredHeight();
                                            measuredHeight2 = childAt.getMeasuredHeight();
                                        } else {
                                            measuredHeight = getMeasuredHeight() + iMeasureKeyboardHeight;
                                            measuredHeight2 = childAt.getMeasuredHeight();
                                        }
                                        paddingTop = measuredHeight - measuredHeight2;
                                    }
                                    childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                                }
                                paddingTop = i6 - i7;
                                if (childAt instanceof EmojiView) {
                                }
                                childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                            }
                            paddingLeft = paddingRight - i5;
                            if (i10 != 16) {
                            }
                            paddingTop = i6 - i7;
                            if (childAt instanceof EmojiView) {
                            }
                            childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight3 + paddingTop);
                        }
                    }
                    notifyHeightChanged();
                }
            };
        }
        this.recyclerListView = createRecyclerView(context);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void scrollToPositionWithOffset(int i, int i2) {
                super.scrollToPositionWithOffset(i, i2);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void scrollToPosition(int i) {
                super.scrollToPosition(i);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void scrollToPositionWithOffset(int i, int i2, boolean z5) {
                super.scrollToPositionWithOffset(i, i2, z5);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                super.smoothScrollToPosition(recyclerView, state, i);
            }
        };
        this.layoutManager = linearLayoutManager;
        if (z4) {
            linearLayoutManager.setStackFromEnd(true);
        }
        this.recyclerListView.setLayoutManager(this.layoutManager);
        NestedSizeNotifierLayout nestedSizeNotifierLayout2 = this.nestedSizeNotifierLayout;
        if (nestedSizeNotifierLayout2 != null) {
            nestedSizeNotifierLayout2.setBottomSheetContainerView(getContainer());
            this.nestedSizeNotifierLayout.setTargetListView(this.recyclerListView);
        }
        if (z2) {
            this.recyclerListView.setHasFixedSize(true);
            RecyclerListView recyclerListView = this.recyclerListView;
            recyclerListView.setAdapter(createAdapter(recyclerListView));
            setCustomView(sizeNotifierFrameLayout);
            sizeNotifierFrameLayout.addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2.0f));
        } else {
            resetAdapter(context);
            this.containerView = sizeNotifierFrameLayout;
            ActionBar actionBar = new ActionBar(context) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.4
                @Override // android.view.View
                public void setAlpha(float f) {
                    if (getAlpha() != f) {
                        super.setAlpha(f);
                        sizeNotifierFrameLayout.invalidate();
                    }
                }

                @Override // android.view.View
                public void setTag(Object obj) {
                    super.setTag(obj);
                    BottomSheetWithRecyclerListView.this.updateStatusBar();
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                    if (bottomSheetWithRecyclerListView.ignoreTouchActionBar && bottomSheetWithRecyclerListView.actionBarIgnoreTouchEvents) {
                        return false;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.actionBar = actionBar;
            actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
            this.actionBar.setTitleColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
            this.actionBar.setBackButtonImage(C2484R.drawable.ic_ab_back);
            this.actionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), false);
            this.actionBar.setCastShadows(true);
            this.actionBar.setTitle(getTitle());
            this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.5
                @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i) {
                    if (i == -1) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                }
            });
            sizeNotifierFrameLayout.addView(this.recyclerListView);
            sizeNotifierFrameLayout.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f, 0, 6.0f, 0.0f, 6.0f, 0.0f));
            this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.6
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    sizeNotifierFrameLayout.invalidate();
                }
            });
        }
        if (actionBarType == ActionBarType.SLIDING) {
            setSlidingActionBar();
        }
        onViewCreated(sizeNotifierFrameLayout);
        updateStatusBar();
    }

    public void setSlidingActionBar() {
        if (this.hasFixedSize) {
            return;
        }
        this.actionBarType = ActionBarType.SLIDING;
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        this.headerHeight = currentActionBarHeight;
        this.headerTotalHeight = currentActionBarHeight + AndroidUtilities.statusBarHeight;
        this.headerPaddingTop = AndroidUtilities.dp(16.0f);
        this.headerPaddingBottom = AndroidUtilities.dp(-20.0f);
        this.actionBarSlideProgress = new AnimatedFloat(this.containerView, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.actionBar.backButtonImageView.setPivotX(0.0f);
        this.recyclerListView.setClipToPadding(true);
    }

    protected RecyclerListView createRecyclerView(Context context) {
        return new RecyclerListView(context, this.resourcesProvider) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.7
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                BottomSheetWithRecyclerListView.this.applyScrolledPosition();
                super.onLayout(z, i, i2, i3, i4);
            }

            @Override // org.telegram.ui.Components.RecyclerListView
            protected boolean canHighlightChildAt(View view, float f, float f2) {
                return BottomSheetWithRecyclerListView.this.canHighlightChildAt(view, f, f2);
            }
        };
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class PaddingView extends View {
        public PaddingView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int iDp;
            BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
            int i3 = bottomSheetWithRecyclerListView.contentHeight;
            if (i3 == 0) {
                iDp = AndroidUtilities.dp(300.0f);
            } else {
                iDp = (int) (i3 * bottomSheetWithRecyclerListView.topPadding);
            }
            BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView2 = BottomSheetWithRecyclerListView.this;
            int i4 = iDp - (((bottomSheetWithRecyclerListView2.headerTotalHeight - bottomSheetWithRecyclerListView2.headerHeight) - bottomSheetWithRecyclerListView2.headerPaddingTop) - bottomSheetWithRecyclerListView2.headerPaddingBottom);
            if (i4 < 1) {
                i4 = 1;
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            ((BottomSheet) BottomSheetWithRecyclerListView.this).containerView.invalidate();
        }
    }

    protected void resetAdapter(final Context context) {
        final RecyclerListView.SelectionAdapter selectionAdapterCreateAdapter = createAdapter(this.recyclerListView);
        this.recyclerListView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.8
            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return selectionAdapterCreateAdapter.isEnabled(viewHolder);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                if (i == -1000) {
                    return new RecyclerListView.Holder(BottomSheetWithRecyclerListView.this.new PaddingView(context));
                }
                return selectionAdapterCreateAdapter.onCreateViewHolder(viewGroup, i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (i != (BottomSheetWithRecyclerListView.this.reverseLayout ? getItemCount() - 1 : 0)) {
                    selectionAdapterCreateAdapter.onBindViewHolder(viewHolder, i - (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == (BottomSheetWithRecyclerListView.this.reverseLayout ? getItemCount() - 1 : 0)) {
                    return -1000;
                }
                return selectionAdapterCreateAdapter.getItemViewType(i - (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return selectionAdapterCreateAdapter.getItemCount() + 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void registerAdapterDataObserver(final RecyclerView.AdapterDataObserver adapterDataObserver) {
                selectionAdapterCreateAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.8.1
                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onChanged() {
                        adapterDataObserver.onChanged();
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeChanged(int i, int i2) {
                        adapterDataObserver.onItemRangeChanged(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeChanged(int i, int i2, Object obj) {
                        adapterDataObserver.onItemRangeChanged(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2, obj);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeInserted(int i, int i2) {
                        adapterDataObserver.onItemRangeInserted(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeRemoved(int i, int i2) {
                        adapterDataObserver.onItemRangeRemoved(i + (!BottomSheetWithRecyclerListView.this.reverseLayout ? 1 : 0), i2);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                    public void onItemRangeMoved(int i, int i2, int i3) {
                        RecyclerView.AdapterDataObserver adapterDataObserver2 = adapterDataObserver;
                        boolean z = BottomSheetWithRecyclerListView.this.reverseLayout;
                        adapterDataObserver2.onItemRangeMoved(i + (!z ? 1 : 0), i2 + (!z ? 1 : 0), i3);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void postDrawInternal(Canvas canvas, View view) {
        ActionBarType actionBarType = this.actionBarType;
        if (actionBarType == ActionBarType.FADING) {
            boolean z = this.showShadow;
            if (z) {
                float f = this.shadowAlpha;
                if (f != 1.0f) {
                    this.shadowAlpha = f + 0.10666667f;
                    view.invalidate();
                } else if (!z) {
                    float f2 = this.shadowAlpha;
                    if (f2 != 0.0f) {
                        this.shadowAlpha = f2 - 0.10666667f;
                        view.invalidate();
                    }
                }
                this.shadowAlpha = Utilities.clamp(this.shadowAlpha, 1.0f, 0.0f);
                ActionBar actionBar = this.actionBar;
                if (actionBar != null && actionBar.getVisibility() == 0 && this.actionBar.getAlpha() != 0.0f && this.shadowAlpha != 0.0f) {
                    this.headerShadowDrawable.setBounds(this.backgroundPaddingLeft, this.actionBar.getBottom(), view.getMeasuredWidth() - this.backgroundPaddingLeft, this.actionBar.getBottom() + this.headerShadowDrawable.getIntrinsicHeight());
                    this.headerShadowDrawable.setAlpha((int) (this.actionBar.getAlpha() * 255.0f * this.shadowAlpha));
                    this.headerShadowDrawable.draw(canvas);
                    if (this.headerShadowDrawable.getAlpha() < 255) {
                        view.invalidate();
                    }
                }
                this.wasDrawn = true;
            }
        } else if (actionBarType == ActionBarType.SLIDING && ((int) (this.shadowAlpha * 255.0f)) != 0) {
            this.headerShadowDrawable.setBounds(this.backgroundPaddingLeft, this.actionBar.getBottom() + ((int) this.actionBar.getTranslationY()), view.getMeasuredWidth() - this.backgroundPaddingLeft, this.actionBar.getBottom() + ((int) this.actionBar.getTranslationY()) + this.headerShadowDrawable.getIntrinsicHeight());
            this.headerShadowDrawable.setAlpha((int) (this.shadowAlpha * 255.0f));
            this.headerShadowDrawable.draw(canvas);
        }
        if (this.restore) {
            canvas.restore();
            this.restore = false;
        }
    }

    protected int getActionBarProgressHeight() {
        return AndroidUtilities.dp(56.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b A[PHI: r4
  0x007b: PHI (r4v2 int) = (r4v1 int), (r4v5 int) binds: [B:21:0x0061, B:23:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preDrawInternal(Canvas canvas, View view) {
        int translationY;
        float fDp;
        this.restore = false;
        if (this.hasFixedSize) {
            return;
        }
        if (this.reverseLayout) {
            int height = this.recyclerListView.getHeight();
            for (int i = 0; i < this.recyclerListView.getChildCount(); i++) {
                View childAt = this.recyclerListView.getChildAt(i);
                int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
                if (childAdapterPosition != -1 && childAdapterPosition != this.recyclerListView.getAdapter().getItemCount() - 1) {
                    height = Math.min(height, childAt.getTop() + (this.takeTranslationIntoAccount ? (int) childAt.getTranslationY() : 0));
                }
            }
            translationY = height - AndroidUtilities.dp(16.0f);
        } else {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(0);
            int bottom = -AndroidUtilities.dp(16.0f);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                bottom = viewHolderFindViewHolderForAdapterPosition.itemView.getBottom() - AndroidUtilities.dp(16.0f);
                translationY = this.takeTranslationIntoAccount ? ((int) viewHolderFindViewHolderForAdapterPosition.itemView.getTranslationY()) + bottom : bottom;
            }
        }
        int iLerp = (translationY - ((this.headerHeight + this.headerPaddingTop) + this.headerPaddingBottom)) + this.headerMoveTop;
        if (this.showHandle && this.handleOffset) {
            iLerp -= AndroidUtilities.dp(this.actionBarType == ActionBarType.SLIDING ? 8.0f : 16.0f);
        }
        float f = iLerp;
        this.lastTop = f;
        onSheetTop(f);
        ActionBarType actionBarType = this.actionBarType;
        float fLerp = 1.0f;
        if (actionBarType == ActionBarType.FADING) {
            fDp = 1.0f - ((AndroidUtilities.dp(16.0f) + iLerp) / getActionBarProgressHeight());
            if (fDp < 0.0f) {
                fDp = 0.0f;
            }
            AndroidUtilities.updateViewVisibilityAnimated(this.actionBar, fDp != 0.0f, 1.0f, this.wasDrawn);
        } else if (actionBarType == ActionBarType.SLIDING) {
            float fMax = Math.max((((iLerp - this.headerMoveTop) + AndroidUtilities.dp(8.0f)) + this.headerPaddingTop) - AndroidUtilities.statusBarHeight, 0.0f);
            float f2 = this.actionBarSlideProgress.set(fMax == 0.0f ? 1.0f : 0.0f);
            if (f2 != 0.0f && f2 != 1.0f) {
                canvas.save();
                canvas.clipRect(0.0f, fMax, this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
                this.restore = true;
            }
            this.shadowAlpha = f2;
            fLerp = AndroidUtilities.lerp(1.0f, 0.5f, f2);
            this.actionBar.backButtonImageView.setAlpha(f2);
            this.actionBar.backButtonImageView.setScaleX(f2);
            this.actionBar.backButtonImageView.setPivotY(r6.getMeasuredHeight() / 2.0f);
            this.actionBar.backButtonImageView.setScaleY(f2);
            SimpleTextView titleTextView = this.actionBar.getTitleTextView();
            titleTextView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dp(21.0f) - titleTextView.getLeft(), 0.0f, f2));
            if (this.centerTitle) {
                titleTextView.setTranslationX(((this.actionBar.getMeasuredWidth() - titleTextView.getTextWidth()) / 2.0f) - titleTextView.getLeft());
            }
            this.actionBar.setTranslationY(fMax);
            iLerp -= AndroidUtilities.lerp(0, (((this.headerTotalHeight - this.headerHeight) - this.headerPaddingTop) - this.headerPaddingBottom) + AndroidUtilities.dp(13.0f), f2);
            this.actionBar.getBackground().setBounds(0, AndroidUtilities.lerp(this.actionBar.getHeight(), 0, f2), this.actionBar.getWidth(), this.actionBar.getHeight());
            if (f2 > 0.5f) {
                if (this.actionBarIgnoreTouchEvents) {
                    this.actionBarIgnoreTouchEvents = false;
                    this.actionBar.setTag(1);
                }
            } else if (!this.actionBarIgnoreTouchEvents) {
                this.actionBarIgnoreTouchEvents = true;
                this.actionBar.setTag(null);
            }
            fDp = f2;
        } else {
            fDp = 0.0f;
        }
        if (shouldDrawBackground()) {
            if (needPaddingShadow()) {
                this.shadowDrawable.setBounds(0, iLerp, view.getMeasuredWidth(), view.getMeasuredHeight());
            } else {
                this.shadowDrawable.setBounds(-AndroidUtilities.dp(6.0f), iLerp, view.getMeasuredWidth() + AndroidUtilities.dp(6.0f), view.getMeasuredHeight());
            }
            this.shadowDrawable.draw(canvas);
            if (this.showHandle && fLerp > 0.0f) {
                int iDp = AndroidUtilities.dp(36.0f);
                this.handleRect.set((view.getMeasuredWidth() - iDp) / 2.0f, AndroidUtilities.dp(20.0f) + iLerp, (view.getMeasuredWidth() + iDp) / 2.0f, r3 + AndroidUtilities.dp(4.0f));
                Theme.dialogs_onlineCirclePaint.setColor(getThemedColor(Theme.key_sheet_scrollUp));
                Theme.dialogs_onlineCirclePaint.setAlpha((int) (r14.getAlpha() * fLerp));
                canvas.drawRoundRect(this.handleRect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), Theme.dialogs_onlineCirclePaint);
            }
        }
        onPreDraw(canvas, iLerp, fDp);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected void onContainerViewTranslation() {
        onSheetTop(this.lastTop);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isAttachedLightStatusBar() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.getTag() != null) {
            return isLightStatusBar();
        }
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment != null) {
            return baseFragment.isLightStatusBar();
        }
        return isLightStatusBar();
    }

    private boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider)) > 0.699999988079071d;
    }

    public void notifyDataSetChanged() {
        this.recyclerListView.getAdapter().notifyDataSetChanged();
    }

    public BaseFragment getBaseFragment() {
        return this.baseFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBar() {
        if (this.attachedFragment != null) {
            LaunchActivity.instance.checkSystemBarColors(true, true, true);
            return;
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.getTag() != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), isLightStatusBar());
        } else if (this.baseFragment != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), this.baseFragment.isLightStatusBar());
        }
    }

    public void updateTitle() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(getTitle());
        }
    }

    public void updateTitleAnimated() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitleAnimated(getTitle(), false, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }
    }

    public void setShowShadow(boolean z) {
        this.showShadow = z;
        this.nestedSizeNotifierLayout.invalidate();
    }

    public void setShowHandle(boolean z) {
        this.showHandle = z;
    }

    public void saveScrollPosition() {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView == null || this.layoutManager == null || recyclerListView.getChildCount() <= 0) {
            return;
        }
        View view = null;
        int i = -1;
        int top = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition > 0 && childAt.getTop() < top) {
                top = childAt.getTop();
                view = childAt;
                i = childAdapterPosition;
            }
        }
        if (view != null) {
            this.savedScrollPosition = i;
            this.savedScrollOffset = view.getTop() + this.containerView.getTop();
            smoothContainerViewLayout();
        }
    }

    public void applyScrolledPosition() {
        applyScrolledPosition(false);
    }

    public void applyScrolledPosition(boolean z) {
        RecyclerListView recyclerListView = this.recyclerListView;
        if (recyclerListView == null || recyclerListView.getLayoutManager() == null || this.savedScrollPosition < 0) {
            return;
        }
        int top = (this.savedScrollOffset - this.containerView.getTop()) - this.recyclerListView.getPaddingTop();
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(0);
        if (z && viewHolderFindViewHolderForAdapterPosition != null) {
            top -= Math.max(viewHolderFindViewHolderForAdapterPosition.itemView.getBottom() - this.recyclerListView.getPaddingTop(), 0);
        }
        if (this.recyclerListView.getLayoutManager() instanceof LinearLayoutManager) {
            ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.savedScrollPosition, top);
        }
        this.savedScrollPosition = -1;
    }
}
